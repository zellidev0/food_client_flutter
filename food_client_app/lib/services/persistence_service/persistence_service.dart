import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/features/cart/services/cart_persistence_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/persistance_service/ingredients_sorting_persistence_service.dart';
import 'package:food_client/pages/features/single_recipe/services/persistance_service/single_recipe_persistence_service.dart';
import 'package:food_client/services/persistence_service/general_persisnence_service.dart';
import 'package:food_client/services/persistence_service/mixins/cart_persistence_service_mixin.dart';
import 'package:food_client/services/persistence_service/mixins/single_recipe_persistence_service_mixin.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:food_client/ui/history/services/history_persistence_service.dart';
import 'package:food_client/ui/home/services/home_persistence_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String ingredientsBoxName = 'ingredientsBox';
const String sortingUnitsBoxName = 'sortingUnitsBox';
const String activeShoppingListSortingBoxName = 'activeShoppingListSortingBox';
const String activeShoppingListSortingKey = 'activeShoppingListSortingBoxKey';
const String historyRecipeBoxName = 'historyRecipeBox';

abstract class PersistenceServiceAggregator
    implements
        GeneralPersistenceService,
        CartPersistenceService,
        SingleRecipePersistenceService,
        IngredientsSortingPersistenceService,
        HistoryPersistenceService,
        HomePersistenceService {}

abstract class PersistenceService extends Cubit<PersistenceServiceModel>
    implements PersistenceServiceAggregator {
  PersistenceService(super.initialState);
}

class HivePersistenceService extends PersistenceService
    with SingleRecipePersistenceServiceMixin, CartPersistenceServiceMixin {
  late Box<PersistenceServiceModelHistoryRecipe> historyRecipeBox;
  static final HivePersistenceService _instance = HivePersistenceService._();

  HivePersistenceService._()
      : super(
          const PersistenceServiceModel(
            recipes: <PersistenceServiceModelShoppingListRecipe>[],
          ),
        ) {
    shoppingListBox = Hive.box<PersistenceServiceModelShoppingListRecipe>(
      ingredientsBoxName,
    );
    shoppingListBox.listenable().addListener(() {
      emit(state.copyWith(recipes: shoppingListBox.values.toList()));
    });
    sortingUnits = Hive.box<PersistenceServiceModelSortingUnit>(
      sortingUnitsBoxName,
    );
    activeShoppingListSortingBox =
        Hive.box<PersistenceServiceModelActiveSorting>(
      activeShoppingListSortingBoxName,
    );
    historyRecipeBox = Hive.box<PersistenceServiceModelHistoryRecipe>(
      historyRecipeBoxName,
    );
  }

  factory HivePersistenceService.instance() => _instance;

  @override
  List<IngredientsSortingPersistenceModelUnit> getUnits() => sortingUnits.values
      .map(
        (final PersistenceServiceModelSortingUnit unit) =>
            IngredientsSortingPersistenceModelUnit(
          id: unit.id,
          name: unit.name,
          sortings: unit.sorting
              .map(
                (final PersistenceServiceModelSorting sorting) =>
                    IngredientsSortingPersistenceModelSorting(
                  ingredientFamilies: sorting.ingredientFamilies
                      .map(
                        (
                          final PersistenceServiceModelIngredientFamily family,
                        ) =>
                            IngredientsSortingPersistenceModelIngredientFamily
                                .helloFresh(
                          helloFreshFamilyId: family.helloFreshFamilyId,
                        ),
                      )
                      .toList(),
                  name: sorting.name,
                  iconPath: sorting.iconPathAsString.map(Uri.parse),
                  type: sorting.type,
                ),
              )
              .toList(),
        ),
      )
      .toList();

  @override
  TaskEither<MyError, void> saveUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
  }) =>
      TaskEither<MyError, void>.tryCatch(
        () async => await sortingUnits.put(
          unit.id,
          PersistenceServiceModelSortingUnit(
            id: unit.id,
            name: unit.name,
            sorting: unit.sortings
                .map(
                  (
                    final IngredientsSortingPersistenceModelSorting sorting,
                  ) =>
                      PersistenceServiceModelSorting(
                    ingredientFamilies: sorting.ingredientFamilies
                        .map(
                          (
                            final IngredientsSortingPersistenceModelIngredientFamily
                                family,
                          ) =>
                              PersistenceServiceModelIngredientFamily
                                  .helloFresh(
                            helloFreshFamilyId: family.helloFreshFamilyId,
                          ),
                        )
                        .toList(),
                    type: sorting.type,
                    iconPathAsString:
                        sorting.iconPath.map((final Uri uri) => uri.toString()),
                    name: sorting.name,
                  ),
                )
                .toList(),
          ),
        ),
        MyError.fromErrorAndStackTrace,
      );

  @override
  TaskEither<Exception, void> deleteUnit({required final String unitId}) =>
      TaskEither<Exception, void>.tryCatch(
        () async => await sortingUnits.delete(unitId),
        buildException,
      );

  @override
  TaskEither<
      MyError,
      List<
          HistoryPersistenceServiceModelRecipe>> getHistoryRecipes() =>
      TaskEither<MyError, List<HistoryPersistenceServiceModelRecipe>>.tryCatch(
        () async => historyRecipeBox.values
            .map(
              (PersistenceServiceModelHistoryRecipe recipe) =>
                  HistoryPersistenceServiceModelRecipe(
                recipeId: recipe.recipeId,
                title: recipe.title,
                imagePath: recipe.imagePath,
                createdAt: DateTime.parse(recipe.createdAt),
                origin: PersistenceServiceModelHistoryRecipeOrigin.fromJson(
                  jsonDecode(recipe.origin),
                ).map(
                  clicked: (_) =>
                      const HistoryPersistenceServiceModelOrigin.clicked(),
                ),
              ),
            )
            .toList(),
        MyError.fromErrorAndStackTrace,
      );

  @override
  TaskEither<MyError, void> addRecipeOpeningToHistory({
    required final String recipeId,
    required final String recipeTitle,
    required final Option<Uri> imagePath,
    required final DateTime createdAt,
  }) =>
      TaskEither<MyError, void>.tryCatch(
        () async => historyRecipeBox.add(
          PersistenceServiceModelHistoryRecipe(
            recipeId: recipeId,
            title: recipeTitle,
            imagePath: imagePath,
            origin: jsonEncode(
              const PersistenceServiceModelHistoryRecipeOrigin.clicked()
                  .toJson(),
            ),
            createdAt: createdAt.toIso8601String(),
          ),
        ),
        MyError.fromErrorAndStackTrace,
      );
}

CartPersistenceServiceModelRecipe mapToCartPersistenceServiceModelRecipe(
  final PersistenceServiceModelShoppingListRecipe recipe,
) =>
    CartPersistenceServiceModelRecipe(
      recipeId: recipe.recipeId,
      ingredients: recipe.ingredients
          .map(mapToCartPersistenceServiceModelIngredient)
          .toList(),
      imagePath: recipe.imagePath,
      title: recipe.title,
      serving: recipe.servings,
    );

CartPersistenceServiceModelIngredient
    mapToCartPersistenceServiceModelIngredient(
  final PersistenceServiceModelShoppingListIngredient ingredient,
) =>
        CartPersistenceServiceModelIngredient(
          isTickedOff: ingredient.isTickedOff,
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
          family: ingredient.family.map(
            (
              final PersistenceServiceModelShoppingListIngredientFamily family,
            ) =>
                CartPersistenceServiceModelIngredientFamilyFamily(
              id: family.id,
              type: family.type,
              iconPath: family.iconPath,
              name: family.name,
              slug: family.slug,
            ),
          ),
        );
