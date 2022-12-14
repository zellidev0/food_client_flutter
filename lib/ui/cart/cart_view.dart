import 'package:auto_size_text/auto_size_text.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/cart/cart_model.dart';

class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final CartModel model = ref.watch(
      providers.cartControllerProvider,
    );
    final CartController controller = ref.watch(
      providers.cartControllerProvider.notifier,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DefaultTabController(
        length: 3,
        child: Builder(
          builder: (final BuildContext context) => NestedScrollView(
            headerSliverBuilder: (final _, final __) => <Widget>[
              if (model.recipes.isEmpty)
                const SliverToBoxAdapter()
              else
                _buildRecipeListSliver(
                  model: model,
                  controller: controller,
                ),
              _buildTabBarSliver(
                model: model,
                controller: controller,
              ),
            ],
            body: model.recipes.isEmpty
                ? buildNoItemsFoundIcon(message: 'Nothing in your \n shopping cart yet')
                : TabBarView(
                    children: <Widget>[
                      ListView(
                        children: model.recipes
                            .map(
                              (final CartModelRecipe recipe) =>
                                  recipe.ingredients.map(
                                (final CartModelIngredient ingredient) =>
                                    buildSingleIngredient(
                                  ingredient: ingredient,
                                  controller: controller,
                                  recipeId: recipe.recipeId,
                                  color: recipe.color,
                                ),
                              ),
                            )
                            .flattened
                            .toList(),
                      ),
                      ListView(
                        children: model.recipes
                            .map(
                              (final CartModelRecipe recipe) => recipe
                                  .ingredients
                                  .where(
                                    (final CartModelIngredient element) =>
                                        !element.isTickedOff,
                                  )
                                  .map(
                                    (final CartModelIngredient ingredient) =>
                                        buildSingleIngredient(
                                      ingredient: ingredient,
                                      controller: controller,
                                      recipeId: recipe.recipeId,
                                      color: recipe.color,
                                    ),
                                  ),
                            )
                            .flattened
                            .toList(),
                      ),
                      ListView(
                        children: model.recipes
                            .map(
                              (final CartModelRecipe recipe) => recipe
                                  .ingredients
                                  .where(
                                    (final CartModelIngredient element) =>
                                        element.isTickedOff,
                                  )
                                  .map(
                                    (final CartModelIngredient ingredient) =>
                                        buildSingleIngredient(
                                      ingredient: ingredient,
                                      controller: controller,
                                      recipeId: recipe.recipeId,
                                      color: recipe.color,
                                    ),
                                  ),
                            )
                            .flattened
                            .toList(),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabBarSliver({
    required final CartModel model,
    required final CartController controller,
  }) =>
      SliverPersistentHeader(
        floating: true,
        pinned: true,
        delegate: TabBarSliverDelegate(
          extendedHeight:
              const TabBar(tabs: <Widget>[]).preferredSize.height + 32,
          collapsedHeight:
              const TabBar(tabs: <Widget>[]).preferredSize.height + 32,
        ),
      );

  Widget _buildRecipeListSliver({
    required final CartModel model,
    required final CartController controller,
  }) =>
      Builder(
        builder: (final BuildContext context) => SliverPersistentHeader(
          floating: false,
          pinned: true,
          delegate: RecipesListDelegate(
            model: model,
            controller: controller,
            extendedHeight: MediaQuery.of(context).size.height * 0.24,
            collapsedHeight: MediaQuery.of(context).size.height * 0.16,
          ),
        ),
      );

  Widget buildSingleIngredient({
    required final String recipeId,
    required final Color color,
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          color: ingredient.isTickedOff ? Colors.grey.shade300 : color,
          child: Builder(
            builder: (final BuildContext context) => InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () async => controller.tickOff(
                ingredientId: ingredient.ingredient.ingredientId,
                recipeId: recipeId,
                isTickedOff: !ingredient.isTickedOff,
              ),
              onLongPress: () =>
                  controller.showDeleteRecipeDialog(recipeId: recipeId),
              child: ListTile(
                enabled: !ingredient.isTickedOff,
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: Opacity(
                    opacity: ingredient.isTickedOff ? 0.5 : 1,
                    child: ingredient.ingredient.imageUrl.fold(
                      () => const Icon(Icons.image_not_supported),
                      (final Uri url) => buildCachedNetworkImage(imageUrl: url),
                    ),
                  ),
                ),
                title: Text(ingredient.ingredient.displayedName),
                subtitle: Text(
                  '${ingredient.ingredient.amount.fold(
                    () => 'nach Ermessen',
                    (final double amount) => amount.toString(),
                  )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
                ),
              ),
            ),
          ),
        ),
      );
}

abstract class CartController extends StateNotifier<CartModel> {
  CartController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
  void openSingleRecipe({required final String recipeId});
  Future<void> tickOff({
    required final String ingredientId,
    required final String recipeId,
    required final bool isTickedOff,
  });
  void showDeleteRecipeDialog({
    required final String recipeId,
  });
}

class RecipesListDelegate extends SliverPersistentHeaderDelegate {
  final CartModel model;
  final CartController controller;
  final double extendedHeight;
  final double collapsedHeight;

  RecipesListDelegate({
    required this.model,
    required this.controller,
    required this.extendedHeight,
    required this.collapsedHeight,
  });

  @override
  Widget build(
    final BuildContext context,
    final double shrinkOffset,
    final bool overlapsContent,
  ) {
    final double height = (extendedHeight - shrinkOffset).clamp(
      collapsedHeight,
      extendedHeight,
    );
    if (height == collapsedHeight) {
      return SizedBox(height: collapsedHeight);
    }
    return ListView(
      padding: const EdgeInsets.all(16).copyWith(bottom: 0),
      scrollDirection: Axis.horizontal,
      children: model.recipes
          .map(
            (final CartModelRecipe recipe) => SizedBox(
              width: height * 0.75,
              child: Card(
                color: recipe.color,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => controller.openSingleRecipe(
                    recipeId: recipe.recipeId,
                  ),
                  onLongPress: () => controller.showDeleteRecipeDialog(
                    recipeId: recipe.recipeId,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _buildCardImage(recipe: recipe),
                          _buildCardText(recipe: recipe),
                        ],
                      ),
                      _buildServingsChip(serving: recipe.serving),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildCardImage({
    required final CartModelRecipe recipe,
  }) =>
      AspectRatio(
        aspectRatio: 1.5 / 1,
        child: recipe.imageUrl.fold(
          () => const Icon(Icons.image_not_supported),
          (final Uri url) => ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: buildCachedNetworkImage(imageUrl: url),
          ),
        ),
      );

  Widget _buildCardText({
    required final CartModelRecipe recipe,
  }) =>
      Builder(
        builder: (final BuildContext context) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AutoSizeText(
              recipe.title,
              minFontSize: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      );

  Widget _buildServingsChip({required final int serving}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              const Expanded(child: SizedBox.shrink()),
              Chip(
                label: Row(
                  children: <Widget>[
                    const Icon(Icons.group),
                    Text(serving.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  @override
  double get maxExtent => extendedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(final SliverPersistentHeaderDelegate oldDelegate) => true;
}

class TabBarSliverDelegate extends SliverPersistentHeaderDelegate {
  final double extendedHeight;
  final double collapsedHeight;

  TabBarSliverDelegate({
    required this.extendedHeight,
    required this.collapsedHeight,
  });

  @override
  Widget build(
    final BuildContext context,
    final double shrinkOffset,
    final bool overlapsContent,
  ) =>
      Builder(
        builder: (final BuildContext context) => Padding(
          padding: const EdgeInsets.all(16),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(64)),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: buildTabBar(
              tabs: const <Tab>[
                Tab(text: 'Gesamt'),
                Tab(text: 'Fehlt noch'),
                Tab(text: 'Abgehackt'),
              ],
            ),
          ),
        ),
      );

  @override
  double get maxExtent => extendedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  bool shouldRebuild(final SliverPersistentHeaderDelegate oldDelegate) => true;
}
