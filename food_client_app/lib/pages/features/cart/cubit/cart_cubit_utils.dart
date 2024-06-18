part of 'cart_cubit.dart';

mixin CartCubitUtils {
  late final CartPersistenceService _persistenceService;
  late final CartWebImageSizerService _imageSizerService;
  List<CartStateRecipe> _readStoredRecipes() => _persistenceService
      .getShoppingCardRecipes()
      .map(
        (final CartPersistenceServiceModelRecipe recipe) => CartStateRecipe(
          recipeId: recipe.recipeId,
          imageUrl: recipe.imagePath.flatMap(
            (final Uri uri) => _imageSizerService
                .getUrl(filePath: uri, widthPixels: _widthPixels)
                .toOption(),
          ),
          title: recipe.title,
          serving: recipe.serving,
        ),
      )
      .toList();

  List<CartStateIngredient> _getAllIngredientsSorted({
    required final CartStateSorting sorting,
    required final bool combineIngredients,
  }) {
    List<CartStateIngredient> ingredients = _persistenceService
        .getShoppingCardRecipes()
        .flatMap(
          (final CartPersistenceServiceModelRecipe recipe) => recipe.ingredients
              .map(
                (final CartPersistenceServiceModelIngredient ingredient) =>
                    _mapToCartStateIngredient(
                  ingredient: ingredient,
                  recipeId: recipe.recipeId,
                ),
              )
              .toList(),
        )
        .toList();
    if (combineIngredients) {
      ingredients = _combineIngredients(allIngredients: ingredients);
    }

    return _sortIngredientsToSorting(
      sorting: sorting,
      ingredients: ingredients,
    );
  }

  List<CartStateIngredient> _combineIngredients({
    required final List<CartStateIngredient> allIngredients,
  }) =>
      allIngredients
          .toList()
          .groupFoldBy(
            (final CartStateIngredient ingredient) =>
                ingredient.ingredient.ingredientId,
            (
              final CartStateIngredient? previous,
              final CartStateIngredient element,
            ) =>
                element.ingredient.unit == previous?.ingredient.unit
                    ? element.copyWith(
                        ingredient: element.ingredient.copyWith(
                          recipeIds: <String>[
                            ...element.ingredient.recipeIds,
                            ...optionOf(previous)
                                .map(
                                  (final CartStateIngredient ingredient) =>
                                      ingredient.ingredient.recipeIds,
                                )
                                .getOrElse(() => <String>[]),
                          ],
                          amount: element.ingredient.amount.map(
                            (final double elementAmount) => optionOf(previous)
                                .flatMap(
                                  (final CartStateIngredient ingredient) =>
                                      ingredient.ingredient.amount,
                                )
                                .fold(
                                  () => elementAmount,
                                  (final double previousAmount) =>
                                      elementAmount + previousAmount,
                                ),
                          ),
                        ),
                      )
                    : element,
          )
          .values
          .toList();

  List<CartStateIngredient> _sortIngredientsToSorting({
    required final CartStateSorting sorting,
    required final List<CartStateIngredient> ingredients,
  }) =>
      sorting.map(
        unit: (final CartStateSortingSelectedUnit unit) =>
            ingredients.sortedByCompare(
          (final CartStateIngredient element) => element.ingredient.family,
          (
            final Option<CartStateIngredientFamily> first,
            final Option<CartStateIngredientFamily> second,
          ) =>
              first
                  .map2(
                    second,
                    (
                      final CartStateIngredientFamily familyOne,
                      final CartStateIngredientFamily familyTwo,
                    ) =>
                        unit.active.ingredientFamilies.indexWhere(
                          (final CartStateSortingIngredientFamily element) =>
                              element.familyIds.contains(familyOne.id),
                        ) -
                        unit.active.ingredientFamilies.indexWhere(
                          (final CartStateSortingIngredientFamily element) =>
                              element.familyIds.contains(familyTwo.id),
                        ),
                  )
                  .getOrElse(() => -1),
        ),
        custom: (final CartStateSortingCustom custom) =>
            ingredients.sortedByCompare(
          (final CartStateIngredient element) =>
              element.ingredient.ingredientId,
          (final String a, final String b) =>
              custom.ingredientIds.indexOf(a) - custom.ingredientIds.indexOf(b),
        ),
      );

  CartStateIngredient _mapToCartStateIngredient({
    required final CartPersistenceServiceModelIngredient ingredient,
    required final String recipeId,
  }) =>
      CartStateIngredient(
        ingredient: CartStateIngredientInfo(
          imageUrl: ingredient.imageUrl,
          ingredientId: ingredient.ingredientId,
          slug: ingredient.slug,
          displayedName: ingredient.displayedName,
          amount: ingredient.amount,
          unit: ingredient.unit,
          recipeIds: <String>[recipeId],
          family: ingredient.family.map(_mapIngredientFamily),
        ),
        isTickedOff: ingredient.isTickedOff,
      );

  CartStateIngredientFamily _mapIngredientFamily(
    final CartPersistenceServiceModelIngredientFamilyFamily family,
  ) =>
      CartStateIngredientFamily(
        id: family.id,
        type: family.type,
        iconPath: family.iconPath,
        name: family.name,
        slug: family.slug,
      );

  CartStateSorting _readActiveSorting() => _persistenceService
      .getActiveSorting()
      .flatMap(
        (final StoredSorting sorting) => sorting.map(
          selectedUnit: (StoredSortingUnit unit) => optionOf(
            _persistenceService.getSortingUnits().firstWhereOrNull(
                  (_) => _.id == unit.activeSortingUnitId,
                ),
          ).map(
            (_) => CartStateSorting.unit(
              active: _mapSortingUnit(_),
              ingredientIds: unit.ingredientIds,
            ),
          ),
          custom: (StoredSorting custom) => some(
            CartStateSorting.custom(ingredientIds: custom.ingredientIds),
          ),
        ),
      )
      .getOrElse(
        () => const CartStateSorting.custom(ingredientIds: <String>[]),
      );

  CartStateSortingUnit _mapSortingUnit(
    CartPersistenceServiceModelSortingUnit unit,
  ) =>
      CartStateSortingUnit(
        id: unit.id,
        name: unit.name,
        ingredientFamilies:
            unit.ingredientFamilies.map(_mapSortingIngredientFamily).toList(),
      );

  CartStateSortingIngredientFamily _mapSortingIngredientFamily(
    CartPersistenceServiceModelSortingUnitFamily family,
  ) =>
      CartStateSortingIngredientFamily(
        name: family.name,
        familyIds: family.familyIds,
      );
}
