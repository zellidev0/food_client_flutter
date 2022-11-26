// ignore_for_file: unnecessary_lambdas

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/recipe_language_service/recipe_language_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/home/home_recipe_language_service.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/home/home_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

const int widthPixels = 10;

@Riverpod(keepAlive: true)
class HomeControllerImplementation extends _$HomeControllerImplementation
    implements HomeController {
  late final HomeWebClientService _webClientService;
  late final HomeWebImageSizerService _webImageSizerService;
  late final HomeNavigationService _navigationService;
  late final HomeRecipeLanguageService _recipeLanguageService;

  @override
  HomeModel build() {
    _webClientService = ref.read(webClientServiceProvider);
    _webImageSizerService = ref.read(webImageSizerServiceProvider);
    _navigationService = ref.read(navigationServiceProvider);
    _recipeLanguageService = ref.read(recipeLanguageServiceProvider);

    unawaited(
      init(
        initialRecipes: _fetchRecipes(
          userSelectedTags: <HomeModelFilterTag>[],
          userSelectedCuisines: <HomeModelFilterCuisine>[],
        ),
        initialCuisines: _fetchCuisines(),
        initialTags: _webClientService
            .fetchAllTags(
              country:
                  _recipeLanguageService.getSupportedRecipeLanguages().first,
              take: some(100),
            )
            .map(
              (final List<HomeWebClientModelTag> tags) => tags
                  .map(
                    (final HomeWebClientModelTag tag) => HomeModelFilterTag(
                      id: tag.id,
                      displayedName: tag.displayedName,
                      type: tag.type,
                      isSelected: false,
                      numberOfRecipes: tag.numberOfRecipes,
                    ),
                  )
                  .toList(),
            ),
      ),
    );

    return const HomeModel(
      allRecipes: <HomeModelRecipe>[],
      allTags: <HomeModelFilterTag>[],
      allCuisines: <HomeModelFilterCuisine>[],
      filteredRecipes: <HomeModelRecipe>[],
    );
  }

  Future<void> init({
    required final TaskEither<Exception, List<HomeModelRecipe>> initialRecipes,
    required final TaskEither<Exception, List<HomeModelFilterTag>> initialTags,
    required final TaskEither<Exception, List<HomeModelFilterCuisine>>
        initialCuisines,
  }) async {
    (await initialRecipes
            .map3(
              initialTags,
              initialCuisines,
              (
                final List<HomeModelRecipe> recipes,
                final List<HomeModelFilterTag> tags,
                final List<HomeModelFilterCuisine> cuisines,
              ) =>
                  HomeModel(
                allRecipes: recipes,
                allTags: tags,
                allCuisines: cuisines,
                filteredRecipes: recipes,
              ),
            )
            .run())
        .fold(
      (final Exception l) => debugPrint(l.toString()),
      (final HomeModel model) {
        state = model;
      },
    );
  }

  @override
  void setTagSelected({
    required final String tagId,
    required final bool selected,
  }) {
    state = state.copyWith(
      allTags: state.allTags
          .map(
            (final HomeModelFilterTag tag) =>
                tag.id == tagId ? tag.copyWith(isSelected: selected) : tag,
          )
          .toList(),
    );
    unawaited(_fetchRecipesAndUpdateFilteredRecipes());
  }

  @override
  void setCuisineSelected({
    required final String cuisineId,
    required final bool selected,
  }) {
    state = state.copyWith(
      allCuisines: state.allCuisines
          .map(
            (final HomeModelFilterCuisine cuisine) => cuisineId == cuisine.id
                ? cuisine.copyWith(isSelected: selected)
                : cuisine,
          )
          .toList(),
    );
    unawaited(_fetchRecipesAndUpdateFilteredRecipes());
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

  @override
  Future<void> openDialog({
    required final Widget child,
    required final Color backgroundColor,
  }) async {
    await _navigationService.showModalBottomSheet(
      child: child,
      backgroundColor: backgroundColor,
    );
  }

  void updateFilteredRecipes() {
    final List<String> tagIds = state.allTags
        .filter((final HomeModelFilterTag tag) => tag.isSelected)
        .map((final HomeModelFilterTag tag) => tag.id)
        .toList();
    final List<String> cuisineIds = state.allCuisines
        .filter((final HomeModelFilterCuisine cuisine) => cuisine.isSelected)
        .map((final HomeModelFilterCuisine cuisine) => cuisine.id)
        .toList();
    state = state.copyWith(
      filteredRecipes: state.allRecipes
          .filter(
            (final HomeModelRecipe recipe) =>
                (recipe.tagIds.any(tagIds.contains) || tagIds.isEmpty) &&
                (recipe.cuisineIds.any(cuisineIds.contains) ||
                    cuisineIds.isEmpty),
          )
          .toList(),
    );
  }

  TaskEither<Exception, List<HomeModelRecipe>> _fetchRecipes({
    required final List<HomeModelFilterTag> userSelectedTags,
    required final List<HomeModelFilterCuisine> userSelectedCuisines,
  }) =>
      _webClientService
          .fetchAllRecipes(
            country: _recipeLanguageService.getSupportedRecipeLanguages().first,
            limit: some(250),
            tags: some(
              userSelectedTags
                  .filter((final HomeModelFilterTag tag) => tag.isSelected)
                  .map((final HomeModelFilterTag tag) => tag.id)
                  .toList(),
            ).map(
              (final List<String> tagIds) => userSelectedTags
                  .filter(
                    (final HomeModelFilterTag tag) => tagIds.contains(tag.id),
                  )
                  .map((final HomeModelFilterTag tag) => tag.type)
                  .toList(),
            ),
            cuisines: some(
              userSelectedCuisines
                  .filter(
                    (final HomeModelFilterCuisine cuisine) =>
                        cuisine.isSelected,
                  )
                  .map((final HomeModelFilterCuisine cuisine) => cuisine.id)
                  .toList(),
            ).map(
              (final List<String> cuisines) => userSelectedCuisines
                  .filter(
                    (final HomeModelFilterCuisine cuisine) =>
                        cuisines.contains(cuisine.id),
                  )
                  .map((final HomeModelFilterCuisine cuisine) => cuisine.type)
                  .toList(),
            ),
          )
          .map(
            (final List<HomeWebClientModelRecipe> recipes) =>
                mapToHomeModelRecipes(
              recipes: recipes,
              imageResizerService: _webImageSizerService,
            ),
          );

  Future<void> _fetchRecipesAndUpdateFilteredRecipes() async {
    (await _fetchRecipes(
      userSelectedTags: state.allTags,
      userSelectedCuisines: state.allCuisines,
    ).run())
        .fold(
      (final Exception exception) => debugPrint(exception.toString()),
      (final List<HomeModelRecipe> newRecipes) {
        state = state.copyWith(
          allRecipes: <HomeModelRecipe>{
            ...state.allRecipes,
            ...newRecipes,
          }.toList(),
        );
        updateFilteredRecipes();
      },
    );
  }

  TaskEither<Exception, List<HomeModelFilterCuisine>> _fetchCuisines() =>
      _webClientService
          .fetchAllCuisines(
            country: _recipeLanguageService.getSupportedRecipeLanguages().first,
            take: some(1000),
          )
          .map(
            (final List<HomeWebClientModelCuisine> cuisines) => cuisines
                .map(
                  (final HomeWebClientModelCuisine cuisine) =>
                      HomeModelFilterCuisine(
                    id: cuisine.id,
                    displayedName: cuisine.displayedName,
                    type: cuisine.type,
                    isSelected: false,
                    numberOfRecipes: cuisine.numberOfRecipes,
                  ),
                )
                .toList(),
          );
}

List<HomeModelFilterTag> mapToHomeModelRecipeTags({
  required final List<HomeWebClientModelRecipe> recipes,
}) =>
    recipes
        .map(
          (final HomeWebClientModelRecipe recipe) => recipe.tags
              .map(
                (final HomeWebClientModelTag tag) => HomeModelFilterTag(
                  id: tag.id,
                  displayedName: tag.displayedName,
                  type: tag.type,
                  isSelected: true,
                  numberOfRecipes: tag.numberOfRecipes,
                ),
              )
              .toList(),
        )
        .expand((final List<HomeModelFilterTag> tags) => tags.toList())
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
                (final Uri imagePath) => getImageUrlFromImagePath(
                  imageResizerService: imageResizerService,
                  imagePath: imagePath,
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
                  tagIds: _mapTagsToTagIds(tags: recipe.tags),
                  imageUriLarge: imageUri,
                  cuisineIds: _mapCuisinesToCuisineIds(
                    cuisines: recipe.cuisines,
                  ),
                ),
              ),
        )
        .whereType<Some<HomeModelRecipe>>()
        .map(
          (final Some<HomeModelRecipe> recipe) => recipe.value,
        )
        .toList();

Option<Uri> getImageUrlFromImagePath({
  required final HomeWebImageSizerService imageResizerService,
  required final Uri imagePath,
}) =>
    imageResizerService
        .getUrl(filePath: imagePath, widthPixels: widthPixels)
        .fold(
      (final Exception l) {
        debugPrint('Exception l');
        return none<Uri>();
      },
      some<Uri>,
    );

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
                  (final HomeWebClientModelYieldIngredient ingredient) =>
                      _mapToYieldIngredient(ingredient: ingredient),
                )
                .toList(),
          ),
        )
        .toList();

HomeModelYieldIngredient _mapToYieldIngredient({
  required final HomeWebClientModelYieldIngredient ingredient,
}) =>
    HomeModelYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount,
      unit: ingredient.unit,
    );

List<String> _mapTagsToTagIds({
  required final List<HomeWebClientModelTag> tags,
}) =>
    tags.map((final HomeWebClientModelTag tag) => tag.id).toList();

List<String> _mapCuisinesToCuisineIds({
  required final List<HomeWebClientModelCuisine> cuisines,
}) =>
    cuisines
        .map((final HomeWebClientModelCuisine cuisine) => cuisine.id)
        .toList();
