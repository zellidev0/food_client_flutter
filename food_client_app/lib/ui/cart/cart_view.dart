import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/ui/cart/cart_model.dart';

class CartView extends MvcView<CartController, CartModel> {
  const CartView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: DefaultTabController(
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
                            onPressed: () => controller.openModalBottomSheet(
                              child: Container(),
                              // buildSortingModalBottomSheetWidget(),
                            ),
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
                            ingredients: model.ingredients,
                            keyId: 'total',
                            controller: controller,
                            sorting: model.sorting,
                          ),
                          buildIngredientsListView(
                            ingredients: model.ingredients
                                .where(
                                  (final CartModelIngredient element) =>
                                      !element.isTickedOff,
                                )
                                .toList(),
                            keyId: 'missing',
                            controller: controller,
                            sorting: model.sorting,
                          ),
                          buildIngredientsListView(
                            ingredients: model.ingredients
                                .where(
                                  (final CartModelIngredient element) =>
                                      element.isTickedOff,
                                )
                                .toList(),
                            keyId: 'ticked-off',
                            controller: controller,
                            sorting: model.sorting,
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      );

  Widget buildIngredientsListView({
    required final List<CartModelIngredient> ingredients,
    required final String keyId,
    required final CartController controller,
    required final CartModelSorting sorting,
  }) =>
      Builder(
        builder: (final BuildContext context) => Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: ReorderableListView.builder(
            key: PageStorageKey<String>(
              'cart_view-ingredients-list-$keyId',
            ),
            itemCount: ingredients.length,
            buildDefaultDragHandles: false,
            onReorder: (final int oldIndex, final int newIndex) {
              controller.reorderIngredients(
                oldIndex: oldIndex,
                newIndex: newIndex,
              );
            },
            itemBuilder: (final BuildContext context, final int index) =>
                buildSingleIngredientItem(
              ingredient: ingredients[index],
              controller: controller,
              recipeIds: ingredients[index].ingredient.recipeIds,
              listIndex: index,
              showDragHandle: sorting.map(
                unit: (final _) => false,
                custom: (final _) => true,
              ),
            ),
          ),
        ),
      );

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

  Widget buildSingleIngredientItem({
    required final List<String> recipeIds,
    required final int listIndex,
    required final bool showDragHandle,
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Material(
        key: ValueKey<String>(listIndex.toString()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
                  trailing: showDragHandle
                      ? ReorderableDragStartListener(
                          index: listIndex,
                          child: const Icon(Icons.drag_handle),
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
      );
}

// Widget buildSortingModalBottomSheetWidget() => Padding(
//       padding: const EdgeInsets.all(16),
//       child: Consumer(
//         builder: (final _, final WidgetRef ref, final __) => GridView.count(
//           crossAxisCount: 3,
//           children: <Widget>[
//             ...ref.watch(providers.cartControllerProvider).sortingUnits.map(
//                   (final CartModelSortingUnit ingredientUnit) => Stack(
//                     children: <Widget>[
//                       buildCard(
//                         sorting: CartModelSorting.unit(
//                           activeUnit: ingredientUnit,
//                           customSortingIngredientIds: ref
//                               .watch(providers.cartControllerProvider)
//                               .sorting
//                               .customSortingIngredientIds,
//                         ),
//                         onTap: () {
//                           ref
//                               .read(providers.cartControllerProvider.notifier)
//                               .setActiveSorting(
//                                 sorting: CartModelSorting.unit(
//                                   customSortingIngredientIds: ref
//                                       .watch(providers.cartControllerProvider)
//                                       .sorting
//                                       .customSortingIngredientIds,
//                                   activeUnit: ingredientUnit,
//                                 ),
//                               );
//                         },
//                       ),
//                       buildStarIcon(
//                         sorting: CartModelSorting.unit(
//                           activeUnit: ingredientUnit,
//                           customSortingIngredientIds: ref
//                               .watch(providers.cartControllerProvider)
//                               .sorting
//                               .customSortingIngredientIds,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//             Stack(
//               children: <Widget>[
//                 buildCard(
//                   sorting: CartModelSorting.custom(
//                     customSortingIngredientIds: ref
//                         .watch(providers.cartControllerProvider)
//                         .sorting
//                         .customSortingIngredientIds,
//                   ),
//                   onTap: () {
//                     ref
//                         .read(providers.cartControllerProvider.notifier)
//                         .setActiveSorting(
//                           sorting: CartModelSorting.custom(
//                             customSortingIngredientIds: ref
//                                 .watch(providers.cartControllerProvider)
//                                 .sorting
//                                 .customSortingIngredientIds,
//                           ),
//                         );
//                   },
//                 ),
//                 buildStarIcon(
//                   sorting: CartModelSorting.custom(
//                     customSortingIngredientIds: ref
//                         .watch(providers.cartControllerProvider)
//                         .sorting
//                         .customSortingIngredientIds,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );

SizedBox buildCard({
  required final CartModelSorting sorting,
  required final VoidCallback onTap,
}) =>
    SizedBox.expand(
      child: Card(
        child: Consumer(
          builder: (final _, final WidgetRef ref, final __) => InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  sorting.map(
                    unit: (final _) => Icons.shopping_basket,
                    custom: (final _) => Icons.list,
                  ),
                ),
                Text(
                  sorting.map(
                    unit: (final CartModelSortingSelectedUnit unit) =>
                        unit.activeUnit.name,
                    custom: (final CartModelSortingCustom custom) => 'Custom',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget buildStarIcon({
  required final CartModelSorting sorting,
}) =>
    IgnorePointer(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Consumer(
            builder:
                (final BuildContext context, final WidgetRef ref, final __) =>
                    Icon(
              Icons.star,
              color: sorting.map(
                unit: (final CartModelSortingSelectedUnit selectedUnit) =>
                    sorting.map(
                  unit: (final CartModelSortingSelectedUnit unit) =>
                      unit.activeUnit.id == selectedUnit.activeUnit.id,
                  custom: (final CartModelSortingCustom custom) => false,
                ),
                custom: (final _) => sorting.map(
                  unit: (final _) => false,
                  custom: (final _) => true,
                ),
              )
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );

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
      padding: const EdgeInsets.all(16).copyWith(bottom: 12),
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

abstract class CartController extends MvcController {
  Future<void> tickOff({
    required final String ingredientId,
    required final List<String> recipeIds,
    required final bool isTickedOff,
  });
  void openSingleRecipe({required final String recipeId});
  void showDeleteRecipeDialog({required final String recipeId});
  void openModalBottomSheet({required final Widget child});
  void setActiveSorting({required final CartModelSorting sorting});
  void reorderIngredients({
    required final int oldIndex,
    required final int newIndex,
  });
}
