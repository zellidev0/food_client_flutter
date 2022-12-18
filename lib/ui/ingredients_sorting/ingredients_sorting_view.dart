import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';

class IngredientsSortingView extends ConsumerWidget {
  const IngredientsSortingView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    // ignore: unused_local_variable
    final IngredientsSortingModel model =
        ref.watch(providers.ingredientsSortingControllerProvider);
    // ignore: unused_local_variable
    final IngredientsSortingController controller =
        ref.read(providers.ingredientsSortingControllerProvider.notifier);
    return Stack(
      children: <Widget>[
        Scaffold(
          extendBodyBehindAppBar: true,
          body: ListView.builder(
            itemCount: model.ingredientFamilies.length,
            itemBuilder: (final BuildContext context, final int index) => ListTile(
              title: Text(model.ingredientFamilies[index].name),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: controller.goBack,
            icon: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}

abstract class IngredientsSortingController
    extends StateNotifier<IngredientsSortingModel> {
  IngredientsSortingController(super.state);

  void goToHome();
  void goToCart();
  void goBack();
}
