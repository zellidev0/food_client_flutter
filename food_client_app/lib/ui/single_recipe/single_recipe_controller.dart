import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart'
    hide navigationService;
import 'package:food_client/ui/single_recipe/services/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_persistence_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_web_client_service.dart';
import 'package:food_client/ui/single_recipe/services/single_recipe_web_image_sizer_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_model.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'single_recipe_controller.g.dart';

const int widthPixelsDescriptionSteps = 512;
const int widthPixelsIngredientThumbNail = 256;

@riverpod
class SingleRecipeControllerImplementation
    extends _$SingleRecipeControllerImplementation
    implements SingleRecipeController {
  @override
  SingleRecipeModel build({
    required final String recipeId,
    required final SingleRecipeWebClientService webClientService,
    required final SingleRecipeWebImageSizerService webImageSizerService,
    required final SingleRecipeNavigationService navigationService,
    required final SingleRecipePersistenceService persistenceService,
    required final LoggingService logger,
  }) {
    scheduleMicrotask(
      () => unawaited(
        Task.sequenceList(<Task<void>>[
          fetchSingleRecipe(),
        ]).run(),
      ),
    );
    return SingleRecipeModel(
      recipeId: recipeId,
      recipe: const ViewState<SingleRecipeModelRecipe>.loading(),
      selectedYield: none(),
    );
  }

  @override
  void setSelectedYield({
    required final int yield,
    required final String recipeId,
  }) =>
      state = state.copyWith(selectedYield: some(yield));

  Task<void> fetchSingleRecipe() => webClientService
          .fetchSingleRecipe(recipeId: recipeId)
          .map(
            (final SingleRecipeWebClientModelRecipe recipe) =>
                mapToSingleRecipeModelRecipe(
              recipe: recipe,
              imageResizerService: webImageSizerService,
              persistenceService: persistenceService,
            ),
          )
          .match(
        (Exception error) {
          logger.error(
            MyError(
              message: 'Failed to fetch recipe with id $recipeId',
              originalError: error,
            ),
          );

          state = state.copyWith(recipe: error.toViewStateError());
        },
        (SingleRecipeModelRecipe recipe) {
          state = state.copyWith(
            recipe: recipe.toViewStateData(),
            selectedYield: recipe.yields.firstOption.map(
              (final SingleRecipeModelYield yield) => yield.servings,
            ),
          );
        },
      );

  @override
  void openAddToShoppingCartDialog({
    required final SingleRecipeModelRecipe recipe,
    required final String recipeId,
  }) {
    unawaited(
      state.selectedYield
          .flatMap(
            (int servings) => optionOf(
              recipe.yields.firstWhereOrNull(
                (final SingleRecipeModelYield yield) =>
                    yield.servings == servings,
              ),
            ),
          )
          .map(
            (SingleRecipeModelYield yield) => persistenceService.addRecipe(
              recipe: SingleRecipePersistenceServiceRecipe(
                ingredients: yield.ingredients
                    .map(
                      (
                        final SingleRecipeModelIngredient ingredient,
                      ) =>
                          mapToSingleRecipePersistenceServiceIngredient(
                        ingredient: ingredient,
                      ),
                    )
                    .toList(),
                recipeId: recipeId,
                servings: yield.servings,
                imagePath: recipe.imagePath,
                title: recipe.displayedAttributes.name,
              ),
            ),
          )
          .getOrElse(
            () => Task<void>(
              () async => logger.error(MyError(message: 'No yield selected')),
            ),
          )
          .run(),
    );

    navigationService.showSnackBar(
      message: 'ui.single_recipe_view.snack_bars.add_to_cart_success'.tr(),
    );
  }

  @override
  void shareRecipe({required final SingleRecipeModelRecipe recipe}) {
    unawaited(_shareRecipe(recipe: recipe));
  }

  Future<void> _shareRecipe({
    required final SingleRecipeModelRecipe recipe,
  }) async {
    (await webClientService
            .buildShareUrl(recipeId: recipe.id, recipeSlug: recipe.slug)
            .run())
        .fold(
      (final Exception exception) => navigationService.showSnackBar(
        message: 'ui.single_recipe_view.snack_bars.share_recipe_error'.tr(),
      ),
      (final Uri url) => Share.share(url.toString()),
    );
  }

  @override
  void goBack() {
    navigationService.goBack();
  }
}

SingleRecipePersistenceServiceIngredient
    mapToSingleRecipePersistenceServiceIngredient({
  required final SingleRecipeModelIngredient ingredient,
}) =>
        SingleRecipePersistenceServiceIngredient(
          isTickedOff: false,
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
          family: ingredient.family.map(
            (final SingleRecipeModelIngredientFamily family) =>
                SingleRecipePersistenceServiceIngredientFamily(
              id: family.id,
              type: family.type,
              iconPath: family.iconPath,
              name: family.name,
              slug: family.slug,
            ),
          ),
        );

SingleRecipeModelRecipe mapToSingleRecipeModelRecipe({
  required final SingleRecipeWebClientModelRecipe recipe,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
}) =>
    SingleRecipeModelRecipe(
      id: recipe.id,
      displayedAttributes: _mapDisplayedAttributes(
        displayedAttributes: recipe.displayedAttributes,
      ),
      difficulty: recipe.difficulty,
      yields: _mapYields(
        yields: recipe.yields,
        imageResizerService: imageResizerService,
        persistenceService: persistenceService,
        recipeId: recipe.id,
      ),
      imageUrl: recipe.imagePath.flatMap(
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
      imagePath: recipe.imagePath,
      totalCookingTime: recipe.totalCookingTime,
      slug: recipe.slug,
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
                    widthPixels: widthPixelsDescriptionSteps,
                  )
                  .toOption(),
            ),
          ),
        )
        .toList();

List<SingleRecipeModelYield> _mapYields({
  required final List<SingleRecipeWebClientModelYield> yields,
  required final SingleRecipeWebImageSizerService imageResizerService,
  required final SingleRecipePersistenceService persistenceService,
  required final String recipeId,
}) =>
    yields
        .map(
          (final SingleRecipeWebClientModelYield yield) =>
              SingleRecipeModelYield(
            servings: yield.servings,
            ingredients: yield.ingredients
                .map(
                  (
                    final SingleRecipeWebClientModelIngredient ingredient,
                  ) =>
                      SingleRecipeModelIngredient(
                    ingredientId: ingredient.ingredientId,
                    slug: ingredient.slug,
                    displayedName: ingredient.displayedName,
                    imageUrl: ingredient.imagePath.flatMap(
                      (final Uri imagePath) => imageResizerService
                          .getUrl(
                            filePath: imagePath,
                            widthPixels: widthPixelsIngredientThumbNail,
                          )
                          .toOption(),
                    ),
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    family: ingredient.family.map(
                      (
                        final SingleRecipeWebClientModelIngredientFamily family,
                      ) =>
                          SingleRecipeModelIngredientFamily(
                        id: family.id,
                        type: family.type,
                        iconPath: family.iconPath,
                        name: family.name,
                        slug: family.slug,
                      ),
                    ),
                  ),
                )
                .toList(),
            isInShoppingCart: persistenceService.isInShoppingCart(
              servings: yield.servings,
              recipeId: recipeId,
            ),
          ),
        )
        .toList();
