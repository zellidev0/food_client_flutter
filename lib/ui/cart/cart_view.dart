import 'package:auto_size_text/auto_size_text.dart';
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
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(
                        onPressed: () => controller.openDialog(
                            child: buildSortingDialogWidget()),
                        icon: const Icon(Icons.sort),
                        label: const Text(
                          'ui.cart_view.modals.sorting_modal.button_text',
                        ).tr(),
                      ),
                    ],
                  ),
                ),
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
                          ingredients: model.ingredients,
                          controller: controller,
                          model: model,
                        ),
                        keyId: 'total',
                      ),
                      buildIngredientsListView(
                        children: notTickedOffIngredientsList(
                          ingredients: model.ingredients,
                          controller: controller,
                        ),
                        keyId: 'missing',
                      ),
                      buildIngredientsListView(
                        children: tickedOffIngredientsList(
                          ingredients: model.ingredients,
                          controller: controller,
                        ),
                        keyId: 'ticked-off',
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  ListView buildIngredientsListView({
    required final List<Widget> children,
    required final String keyId,
  }) =>
      ListView.separated(
        key: PageStorageKey<String>('cart_view-ingredients-list-$keyId'),
        itemBuilder: (final BuildContext context, final int index) =>
            children[index],
        itemCount: children.length,
        separatorBuilder: (final BuildContext context, final int index) =>
            const Divider(),
      );

  List<Widget> ingredientsList({
    required final List<CartModelIngredient> ingredients,
    required final CartController controller,
    required final CartModel model,
  }) =>
      ingredients
          .map(
            (final CartModelIngredient ingredient) => buildSingleIngredient(
              ingredient: ingredient,
              controller: controller,
              recipeIds: ingredient.ingredient.recipeIds,
            ),
          )
          .toList();

  List<Widget> tickedOffIngredientsList({
    required final List<CartModelIngredient> ingredients,
    required final CartController controller,
  }) =>
      ingredients
          .where(
            (final CartModelIngredient element) => element.isTickedOff,
          )
          .map(
            (final CartModelIngredient ingredient) => buildSingleIngredient(
              ingredient: ingredient,
              controller: controller,
              recipeIds: ingredient.ingredient.recipeIds,
            ),
          )
          .toList();

  List<Widget> notTickedOffIngredientsList({
    required final List<CartModelIngredient> ingredients,
    required final CartController controller,
  }) =>
      ingredients
          .where(
            (final CartModelIngredient element) => !element.isTickedOff,
          )
          .map(
            (final CartModelIngredient ingredient) => buildSingleIngredient(
              ingredient: ingredient,
              controller: controller,
              recipeIds: ingredient.ingredient.recipeIds,
            ),
          )
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
    required final List<String> recipeIds,
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Builder(
          builder: (final BuildContext context) => InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () async => await controller.tickOff(
              ingredientId: ingredient.ingredient.ingredientId,
              recipeIds: recipeIds,
              isTickedOff: !ingredient.isTickedOff,
            ),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: !ingredient.isTickedOff && recipeIds.length == 1
                    ? generateRandomPastelColor(
                        seed: recipeIds.first.hashCode,
                        brightness: Theme.of(context).brightness,
                      )
                    : null,
                gradient: !ingredient.isTickedOff && recipeIds.length > 1
                    ? LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: recipeIds
                            .map(
                              (final String recipeId) =>
                                  generateRandomPastelColor(
                                seed: recipeId.hashCode,
                                brightness: Theme.of(context).brightness,
                              ),
                            )
                            .toList(),
                      )
                    : null,
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabled: !ingredient.isTickedOff,
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
                    (final double amount) => amount.toStringAsFixed(0),
                  )} ${ingredient.ingredient.unit.getOrElse(() => '')}',
                ),
              ),
            ),
          ),
        ),
      );
}

Widget buildSortingDialogWidget() {
  return Container();
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
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

abstract class CartController extends StateNotifier<CartModel> {
  CartController(super.state);

  void openSingleRecipe({required final String recipeId});
  Future<void> tickOff({
    required final String ingredientId,
    required final List<String> recipeIds,
    required final bool isTickedOff,
  });
  void showDeleteRecipeDialog({
    required final String recipeId,
  });
  void openDialog({
    required final Widget child,
  });
}
