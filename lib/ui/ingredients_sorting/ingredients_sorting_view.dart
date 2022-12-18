import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:fpdart/fpdart.dart';

class IngredientsSortingView extends ConsumerWidget {
  const IngredientsSortingView({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final IngredientsSortingModel model =
        ref.watch(providers.ingredientsSortingControllerProvider);
    final IngredientsSortingController controller =
        ref.read(providers.ingredientsSortingControllerProvider.notifier);
    return Stack(
      children: <Widget>[
        Scaffold(
          body: _buildContent(model: model, controller: controller),
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

  Widget _buildContent({
    required final IngredientsSortingModel model,
    required final IngredientsSortingController controller,
  }) =>
      Column(
        children: <Widget>[
          Builder(
            builder: (final BuildContext context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildCardItem(controller: controller),
                    ...model.units.map(
                      (final IngredientsSortingModelUnit unit) =>
                          _buildCardItem(
                        controller: controller,
                        unit: some(unit),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (model.units.isEmpty)
            Padding(
              padding: const EdgeInsets.all(64),
              child: buildNoItemsFoundIcon(message: 'Create a new location'),
            )
          else
            buildIngredientsList(
              unit: model.units.firstWhere(
                (final IngredientsSortingModelUnit unit) => unit.selected,
              ),
            ),
        ],
      );

  Expanded buildIngredientsList({
    required final IngredientsSortingModelUnit unit,
  }) =>
      Expanded(
        child: ListView.builder(
          itemCount: unit.ingredientFamilies.length,
          itemBuilder: (final BuildContext context, final int index) =>
              ListTile(
            title: Text(unit.ingredientFamilies[index].name),
          ),
        ),
      );

  Widget _buildCardItem({
    required final IngredientsSortingController controller,
    final Option<IngredientsSortingModelUnit> unit =
        const None<IngredientsSortingModelUnit>(),
  }) =>
      AspectRatio(
        aspectRatio: 1 / 1,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: controller.addSortingUnit,
            onLongPress: unit.fold(
              () => null,
              (final IngredientsSortingModelUnit card) =>
                  () => controller.showDeleteUnitDialog(unit: card),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  unit.fold(
                    () => const Icon(Icons.plus_one),
                    (final IngredientsSortingModelUnit card) =>
                        Text(card.title),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

abstract class IngredientsSortingController
    extends StateNotifier<IngredientsSortingModel> {
  IngredientsSortingController(super.state);

  void goBack();
  void addSortingUnit();
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit});
}
