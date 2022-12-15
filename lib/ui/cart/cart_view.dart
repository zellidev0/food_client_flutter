import 'package:auto_size_text/auto_size_text.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/utils.dart';
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
                ? buildNoItemsFoundIcon(
                    message: 'ui.cart_view.empty_states.empty_cart'.tr(),
                  )
                : TabBarView(
                    children: <Widget>[
                      buildIngredientsListView(
                        children: ingredientsList(
                          recipes: model.recipes,
                          controller: controller,
                        ),
                      ),
                      buildIngredientsListView(
                        children: tickedOffIngredientsList(
                          recipes: model.recipes,
                          controller: controller,
                        ),
                      ),
                      buildIngredientsListView(
                        children: notTickedOffIngredientsList(
                          recipes: model.recipes,
                          controller: controller,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  ListView buildIngredientsListView({required final List<Widget> children}) =>
      ListView.separated(
        itemBuilder: (final BuildContext context, final int index) =>
            children[index],
        itemCount: children.length,
        separatorBuilder: (final BuildContext context, final int index) =>
            const Divider(),
      );

  List<Widget> ingredientsList({
    required final List<CartModelRecipe> recipes,
    required final CartController controller,
  }) =>
      recipes
          .map(
            (final CartModelRecipe recipe) => recipe.ingredients.map(
              (final CartModelIngredient ingredient) => buildSingleIngredient(
                ingredient: ingredient,
                controller: controller,
                recipeId: recipe.recipeId,
              ),
            ),
          )
          .flattened
          .toList();

  List<Widget> tickedOffIngredientsList({
    required final List<CartModelRecipe> recipes,
    required final CartController controller,
  }) =>
      recipes
          .map(
            (final CartModelRecipe recipe) => recipe.ingredients
                .where(
                  (final CartModelIngredient element) => element.isTickedOff,
                )
                .map(
                  (final CartModelIngredient ingredient) =>
                      buildSingleIngredient(
                    ingredient: ingredient,
                    controller: controller,
                    recipeId: recipe.recipeId,
                  ),
                ),
          )
          .flattened
          .toList();

  List<Widget> notTickedOffIngredientsList({
    required final List<CartModelRecipe> recipes,
    required final CartController controller,
  }) =>
      recipes
          .map(
            (final CartModelRecipe recipe) => recipe.ingredients
                .where(
                  (final CartModelIngredient element) => !element.isTickedOff,
                )
                .map(
                  (final CartModelIngredient ingredient) =>
                      buildSingleIngredient(
                    ingredient: ingredient,
                    controller: controller,
                    recipeId: recipe.recipeId,
                  ),
                ),
          )
          .flattened
          .toList();

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
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
              tileColor: generateRandomPastelColor(
                seed: recipeId.hashCode,
                brightness: Theme.of(context).brightness,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              enabled: !ingredient.isTickedOff,
              selected: ingredient.isTickedOff,
              leading: AspectRatio(
                aspectRatio: 1,
                child: ingredient.ingredient.imageUrl.fold(
                  () => const Icon(Icons.image_not_supported),
                  (final Uri url) => buildCachedNetworkImage(imageUrl: url),
                ),
              ),
              title: Text(ingredient.ingredient.displayedName),
              subtitle: Text(
                '${ingredient.ingredient.amount.fold(
                  () => '',
                  (final double amount) => amount.toString(),
                )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
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
    return ListView.separated(
      padding: const EdgeInsets.all(16).copyWith(bottom: 0),
      scrollDirection: Axis.horizontal,
      itemBuilder: (final _, final int index) => buildCardElement(
        height: height,
        recipe: model.recipes[index],
      ),
      separatorBuilder: (final _, final __) => const SizedBox(height: 8),
      itemCount: model.recipes.length,
    );
  }

  Widget buildCardElement({
    required final double height,
    required final CartModelRecipe recipe,
  }) =>
      Builder(
        builder: (final BuildContext context) => SizedBox(
          width: height * 0.75,
          child: Card(
            color: generateRandomPastelColor(
              seed: recipe.recipeId.hashCode,
              brightness: Theme.of(context).brightness,
            ),
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
      );

  Widget _buildCardImage({
    required final CartModelRecipe recipe,
  }) =>
      AspectRatio(
        aspectRatio: 1.5 / 1,
        child: recipe.imageUrl.fold(
          () => const Icon(Icons.image_not_supported),
          (final Uri url) => buildCachedNetworkImage(imageUrl: url),
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
              tabs: <Tab>[
                Tab(text: 'general.others.total'.tr()),
                Tab(text: 'general.others.missing'.tr()),
                Tab(text: 'general.others.ticket_off'.tr()),
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
