import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              _buildTabBar(),
              const SizedBox(height: 8),
              Expanded(
                child: buildTabContent(
                  context: context,
                  model: model,
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabContent({
    required final BuildContext context,
    required final CartModel model,
    required final CartController controller,
  }) =>
      TabBarView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: model.ingredients.length,
                  itemBuilder: (
                    final BuildContext context,
                    final int index,
                  ) =>
                      buildSingleIngredient(
                    ingredient: model.ingredients[index],
                    controller: controller,
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Einkaufen',
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      );

  Widget _buildTabBar() => Builder(
        builder: (final BuildContext context) => TabBar(
          labelColor: Theme.of(context).indicatorColor,
          splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
          indicator: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          indicatorColor: Colors.red,
          tabs: const <Widget>[
            Tab(text: 'Einkaufen'),
            Tab(text: 'Abgehakt'),
          ],
        ),
      );

  Widget buildSingleIngredient({
    required final CartModelIngredient ingredient,
    required final CartController controller,
  }) =>
      Card(
        color: ingredient.color,
        child: ListTile(
          leading: AspectRatio(
            aspectRatio: 1,
            child: ingredient.ingredient.imageUrl.fold(
              () => const Icon(Icons.image_not_supported),
              (final Uri url) => Image.network(
                url.toString(),
                errorBuilder: (final _, final __, final ___) =>
                    const Icon(Icons.image_not_supported),
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
          trailing: IconButton(
            padding: const EdgeInsets.all(16),
            onPressed: () => controller.openSingleRecipe(
              recipeId: ingredient.ingredient.recipeId,
            ),
            icon: const Icon(Icons.forward),
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
}
