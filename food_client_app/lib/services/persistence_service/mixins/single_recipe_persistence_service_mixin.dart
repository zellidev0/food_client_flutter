import 'package:food_client/pages/features/single_recipe/services/persistance_service/single_recipe_persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';

mixin SingleRecipePersistenceServiceMixin
    implements SingleRecipePersistenceService {
  late Box<PersistenceServiceModelShoppingListRecipe> shoppingListBox;
  @override
  bool isInShoppingCart({
    required final int servings,
    required final String recipeId,
  }) =>
      optionOf(shoppingListBox.get(recipeId)).fold(
        () => false,
        (final PersistenceServiceModelShoppingListRecipe t) =>
            t.servings == servings,
      );

  @override
  Task<void> addRecipe({
    required final SingleRecipePersistenceServiceRecipe recipe,
  }) =>
      Task<void>(
        () async => await shoppingListBox.put(
          recipe.recipeId,
          PersistenceServiceModelShoppingListRecipe(
            ingredients: recipe.ingredients
                .map(
                  (final SingleRecipePersistenceServiceIngredient ingredient) =>
                      PersistenceServiceModelShoppingListIngredient(
                    ingredientId: ingredient.ingredientId,
                    imageUrl: ingredient.imageUrl,
                    slug: ingredient.slug,
                    isTickedOff: ingredient.isTickedOff,
                    displayedName: ingredient.displayedName,
                    amount: ingredient.amount,
                    unit: ingredient.unit,
                    family: ingredient.family.map(
                      (
                        final SingleRecipePersistenceServiceIngredientFamily
                            family,
                      ) =>
                          PersistenceServiceModelShoppingListIngredientFamily(
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
            recipeId: recipe.recipeId,
            servings: recipe.servings,
            imagePath: recipe.imagePath,
            title: recipe.title,
          ),
        ),
      );
}
