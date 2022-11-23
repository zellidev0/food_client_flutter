import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/home/home_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeControllerImplementation extends _$HomeControllerImplementation
    implements HomeController {
  late final HomeWebClientService _webClientService;
  late final HomeWebImageSizerService _webImageSizerService;
  late final HomeNavigationService _navigationService;

  @override
  HomeModel build() {
    _webClientService = ref.read(webClientServiceProvider);
    _webImageSizerService = ref.read(webImageSizerServiceProvider);
    _navigationService = ref.read(navigationServiceProvider);

    unawaited(
      init(
        initialTask: _webClientService.fetchAllRecipes().map(
              (final List<HomeWebClientModelRecipe> recipes) => HomeModel(
                recipes: mapToHomeModelRecipes(
                  recipes: recipes,
                  imageResizerService: _webImageSizerService,
                ),
                tags: mapToHomeModelTags(recipes: recipes),
              ),
            ),
      ),
    );

    return const HomeModel(
      recipes: <HomeModelRecipe>[],
      tags: <HomeModelTag>[],
    );
  }

  Future<void> init({
    required final TaskEither<Exception, HomeModel> initialTask,
  }) async {
    (await initialTask.run()).fold(
      (final Exception l) => debugPrint(l.toString()),
      (final HomeModel model) {
        state = model;
      },
    );
  }

  @override
  void setTagSelected({
    required final int index,
    required final bool selected,
  }) {
    state = state.copyWith(
      tags: state.tags
          .mapWithIndex(
            (final HomeModelTag tag, final int tagsIndex) =>
                index == tagsIndex ? tag.copyWith(isSelected: selected) : tag,
          )
          .toList(),
    );
  }

  @override
  void goToSingleRecipeView({required final String recipeId}) {
    _navigationService.navigateToNamed(
      uri: NavigationServiceUris.singleRecipeUri.replace(
        queryParameters: <String, String>{
          NavigationServiceUris.singleRecipeIdKey: recipeId,
        },
      ),
    );
  }
}

List<HomeModelTag> mapToHomeModelTags({
  required final List<HomeWebClientModelRecipe> recipes,
}) =>
    recipes
        .map(
          (final HomeWebClientModelRecipe recipe) => recipe.tags
              .map(
                (final HomeWebClientModelTag tag) => HomeModelTag(
                  id: tag.id,
                  slug: tag.slug,
                  displayedName: tag.displayedName,
                  isSelected: true,
                ),
              )
              .toList(),
        )
        .expand((final List<HomeModelTag> tags) => tags.toList())
        .toSet()
        .toList();

List<HomeModelRecipe> mapToHomeModelRecipes({
  required final List<HomeWebClientModelRecipe> recipes,
  required final HomeWebImageSizerService imageResizerService,
}) =>
    recipes
        .map(
          (final HomeWebClientModelRecipe recipe) => recipe.imagePath
              .flatMap(
                (final Uri imagePath) => imageResizerService
                    .getUrl(
                  filePath: imagePath,
                  widthPixels: 500,
                )
                    .fold(
                  (final Exception l) {
                    debugPrint('Exception l');
                    return none<Uri>();
                  },
                  some<Uri>,
                ),
              )
              .map(
                (final Uri imageUri) => HomeModelRecipe(
                  id: recipe.id,
                  displayedAttributes: _mapDisplayedAttributes(
                    displayedAttributes: recipe.displayedAttributes,
                  ),
                  difficulty: recipe.difficulty,
                  ingredients: _mapIngredients(ingredients: recipe.ingredients),
                  yields: _mapYields(yields: recipe.yields),
                  tagIds: _mapTagIds(tags: recipe.tags),
                  imageUriLarge: imageUri,
                ),
              ),
        )
        .whereType<Some<HomeModelRecipe>>()
        .map(
          (final Some<HomeModelRecipe> recipe) => recipe.value,
        )
        .toList();

HomeModelDisplayedAttributes _mapDisplayedAttributes({
  required final HomeWebClientModelDisplayedAttributes displayedAttributes,
}) =>
    HomeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<HomeModelIngredient> _mapIngredients({
  required final List<HomeWebClientModelIngredient> ingredients,
}) =>
    ingredients
        .map(
          (final HomeWebClientModelIngredient ingredient) =>
              HomeModelIngredient(
            id: ingredient.id,
            slug: ingredient.slug,
            displayedName: ingredient.displayedName,
          ),
        )
        .toList();

List<HomeModelYield> _mapYields({
  required final List<HomeWebClientModelYield> yields,
}) =>
    yields
        .map(
          (final HomeWebClientModelYield yield) => HomeModelYield(
            yield: yield.yield,
            yieldIngredient: yield.yieldIngredient
                .map(
                  (
                    final HomeWebClientModelYieldIngredient yieldIngredient,
                  ) =>
                      HomeModelYieldIngredient(
                    id: yieldIngredient.id,
                    amount: yieldIngredient.amount,
                    unit: yieldIngredient.unit,
                  ),
                )
                .toList(),
          ),
        )
        .toList();

List<String> _mapTagIds({
  required final List<HomeWebClientModelTag> tags,
}) =>
    tags.map((final HomeWebClientModelTag tag) => tag.id).toList();
