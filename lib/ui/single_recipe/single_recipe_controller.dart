import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/services/web_image_sizer/web_image_sizer_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'single_recipe_controller.g.dart';

@riverpod
class SingleRecipeControllerImplementation
    extends _$SingleRecipeControllerImplementation
    implements SingleRecipeController {
  late final SingleRecipeWebClientService _webClientService;
  late final SingleRecipeWebImageSizerService _webImageSizerService;
  late final SingleRecipeNavigationService _navigationService;

  @override
  SingleRecipeModel build({
    required final String recipeId,
  }) {
    _webClientService = ref.watch(webClientServiceProvider);
    _webImageSizerService = ref.watch(webImageSizerServiceProvider);
    _navigationService = ref.watch(
      bottomNavigationBarNavigationServiceProvider,
    );

    unawaited(
      init(
        initialTask:
            _webClientService.fetchSingleRecipe(recipeId: recipeId).map(
                  (final SingleRecipeWebClientModelRecipe recipe) =>
                      mapToSingleRecipeModelRecipe(
                    recipe: recipe,
                    imageResizerService: _webImageSizerService,
                  ),
                ),
      ),
    );

    return SingleRecipeModel(
      recipe: Either<Exception, Option<SingleRecipeModelRecipe>>.right(none()),
      selectedYield: none(),
    );
  }

  @override
  void setSelectedYield({required final int yield}) {
    state = state.copyWith(selectedYield: some(yield));
  }

  @override
  void goBack() {
    _navigationService.goBackToNamed(uri: NavigationServiceUris.homeRouteUri);
  }

  Future<void> init({
    required final TaskEither<Exception, SingleRecipeModel> initialTask,
  }) async {
    (await initialTask.run()).fold(
      (final Exception l) => debugPrint(l.toString()),
      (final SingleRecipeModel model) {
        state = model;
      },
    );
  }
}

SingleRecipeModel mapToSingleRecipeModelRecipe({
  required final SingleRecipeWebClientModelRecipe recipe,
  required final SingleRecipeWebImageSizerService imageResizerService,
}) =>
    SingleRecipeModel(
      recipe: Either<Exception, Option<SingleRecipeModelRecipe>>.right(
        some(
          SingleRecipeModelRecipe(
            id: recipe.id,
            displayedAttributes: _mapDisplayedAttributes(
              displayedAttributes: recipe.displayedAttributes,
            ),
            difficulty: recipe.difficulty,
            yields: _mapYields(
              yields: recipe.yields,
              imageResizerService: imageResizerService,
            ),
            imageUri: recipe.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                    filePath: imagePath,
                    widthPixels: 1000,
                  )
                  .toOption(),
            ),
            tags: _mapTags(tags: recipe.tags),
            steps: _mapSteps(
              steps: recipe.steps,
              imageResizerService: imageResizerService,
            ),
          ),
        ),
      ),
      selectedYield: optionOf(recipe.yields.firstOrNull).flatMap(
        (final SingleRecipeWebClientModelYield yield) => yield.yields,
      ),
    );

SingleRecipeModelDisplayedAttributes _mapDisplayedAttributes({
  required final SingleRecipeWebClientModelDisplayedAttributes
      displayedAttributes,
}) =>
    SingleRecipeModelDisplayedAttributes(
      name: displayedAttributes.name,
      headline: displayedAttributes.headline,
      description: displayedAttributes.description,
      descriptionMarkdown: displayedAttributes.descriptionMarkdown,
    );

List<SingleRecipeModelTag> _mapTags({
  required final List<SingleRecipeWebClientModelTag> tags,
}) =>
    tags
        .map(
          (final SingleRecipeWebClientModelTag tag) => SingleRecipeModelTag(
            id: tag.id,
            slug: tag.slug,
            displayedName: tag.displayedName,
          ),
        )
        .toList();

List<SingleRecipeModelStep> _mapSteps({
  required final List<SingleRecipeWebClientModelStep> steps,
  required final SingleRecipeWebImageSizerService imageResizerService,
}) =>
    steps
        .map(
          (final SingleRecipeWebClientModelStep step) => SingleRecipeModelStep(
            instructionMarkdown: step.instructionMarkdown,
            imageUrl: step.imagePath.flatMap(
              (final Uri imagePath) => imageResizerService
                  .getUrl(
                    filePath: imagePath,
                    widthPixels: 1000,
                  )
                  .toOption(),
            ),
          ),
        )
        .toList();

List<SingleRecipeModelYield> _mapYields({
  required final List<SingleRecipeWebClientModelYield> yields,
  required final SingleRecipeWebImageSizerService imageResizerService,
}) =>
    yields
        .map(
          (final SingleRecipeWebClientModelYield yield) =>
              SingleRecipeModelYield(
            yields: yield.yields,
            ingredients: yield.ingredients
                .map(
                  (
                    final SingleRecipeWebClientModelIngredient ingredient,
                  ) =>
                      SingleRecipeModelIngredient(
                    id: ingredient.id,
                    slug: ingredient.slug,
                    displayedName: ingredient.displayedName,
                    imageUrl: ingredient.imagePath.flatMap(
                      (final Uri imagePath) => imageResizerService
                          .getUrl(
                            filePath: imagePath,
                            widthPixels: 500,
                          )
                          .toOption(),
                    ),
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
