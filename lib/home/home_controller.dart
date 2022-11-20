import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:food_client/home/home_model.dart';
import 'package:food_client/home/home_recipe_parser.dart';
import 'package:food_client/home/home_view.dart';
import 'package:food_client/home/home_web_client_service.dart';
import 'package:food_client/home/home_web_image_sizer_service.dart';
import 'package:food_client/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeControllerImplementation extends _$HomeControllerImplementation
    implements HomeController {
  late final HomeWebClientService _webClientService;
  late final HomeWebImageSizerService _webImageSizerService;
  late final HomeRecipeParserService _recipeParserService;

  @override
  HomeModel build() {
    _webClientService = ref.watch(homeWebClientServiceProvider);
    _webImageSizerService = ref.watch(homeWebImageSizerServiceProvider);
    _recipeParserService = ref.watch(homeRecipeParserServiceProvider);

    unawaited(
      init(
        initialTask: _webClientService.fetchAllRecipes().flatMap(
              (final Map<String, dynamic> payload) => _recipeParserService
                  .parseRecipes(payload: payload)
                  .map(
                    (final List<HomeRecipeParserModelRecipe> recipes) =>
                        HomeModel(
                      recipes: mapToHomeModelRecipes(
                        recipes: recipes,
                        imageResizerService: _webImageSizerService,
                      ),
                      tags: mapToHomeModelTags(recipes: recipes),
                    ),
                  )
                  .toTaskEither(),
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
}

List<HomeModelTag> mapToHomeModelTags({
  required final List<HomeRecipeParserModelRecipe> recipes,
}) =>
    recipes
        .map(
          (final HomeRecipeParserModelRecipe recipe) => recipe.tags
              .map(
                (final HomeRecipeParserModelTag e) => HomeModelTag(
                  id: e.id,
                  slug: e.slug,
                  displayedName: e.displayedName,
                  isSelected: false,
                ),
              )
              .toList(),
        )
        .expand((final List<HomeModelTag> tags) => tags.toList())
        .toSet()
        .toList();

List<HomeModelRecipe> mapToHomeModelRecipes({
  required final List<HomeRecipeParserModelRecipe> recipes,
  required final HomeWebImageSizerService imageResizerService,
}) =>
    recipes
        .map(
          (final HomeRecipeParserModelRecipe recipe) => HomeModelRecipe(
            id: recipe.id,
            displayedAttributes: _mapDisplayedAttributes(
              displayedAttributes: recipe.displayedAttributes,
            ),
            difficulty: recipe.difficulty,
            ingredients: _mapIngredients(ingredients: recipe.ingredients),
            yields: _mapYields(yields: recipe.yields),
            tagIds: _mapTagIds(tags: recipe.tags),
            imageUriIcon: recipe.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                filePath: imagePath,
                widthPixels: 100,
              )
                  .fold(
                (final Exception error) {
                  debugPrint('$error');
                  return none();
                },
                some,
              ),
            ),
            imageUriLarge: recipe.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                filePath: imagePath,
                widthPixels: 500,
              )
                  .fold(
                (final Exception l) {
                  debugPrint('Exception l');
                  return none();
                },
                some,
              ),
            ),
          ),
        )
        .toList();

HomeModelDisplayedAttributes _mapDisplayedAttributes({
  required final HomeRecipeParserModelDisplayedAttributes displayedAttributes,
}) =>
    HomeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<HomeModelIngredient> _mapIngredients({
  required final List<HomeRecipeParserModelIngredient> ingredients,
}) =>
    ingredients
        .map(
          (final HomeRecipeParserModelIngredient ingredient) =>
              HomeModelIngredient(
            id: ingredient.id,
            slug: ingredient.slug,
            displayedName: ingredient.displayedName,
          ),
        )
        .toList();

List<HomeModelYield> _mapYields({
  required final List<HomeRecipeParserModelYield> yields,
}) =>
    yields
        .map(
          (final HomeRecipeParserModelYield yield) => HomeModelYield(
            yield: yield.yield,
            yieldIngredient: yield.yieldIngredient
                .map(
                  (
                    final HomeRecipeParserModelYieldIngredient yieldIngredient,
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
  required final List<HomeRecipeParserModelTag> tags,
}) =>
    tags.map((final HomeRecipeParserModelTag tag) => tag.id).toList();
