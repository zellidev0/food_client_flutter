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
                    ...model.units.map(
                      (final IngredientsSortingModelUnit unit) =>
                          _buildCardItem(
                        controller: controller,
                        unit: some(unit),
                      ),
                    ),
                    _buildCardItem(controller: controller),
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
              controller: controller,
              unit: model.units.firstWhere(
                (final IngredientsSortingModelUnit unit) => unit.selected,
              ),
            ),
        ],
      );

  Expanded buildIngredientsList({
    required final IngredientsSortingController controller,
    required final IngredientsSortingModelUnit unit,
  }) =>
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ReorderableListView.builder(
            itemCount: unit.ingredientFamilies.length,
            buildDefaultDragHandles: false,
            onReorder: (final int oldIndex, final int newIndex) {
              controller.reorderIngredientFamily(
                unit: unit,
                oldIndex: oldIndex,
                newIndex: newIndex,
              );
            },
            itemBuilder: (final BuildContext context, final int index) =>
                ListTile(
              key: Key(unit.ingredientFamilies[index].type),
              title: Text(unit.ingredientFamilies[index].name),
              leading: unit.ingredientFamilies[index].iconUrl.fold(
                () => const SizedBox(
                  width: 64,
                  height: 64,
                ),
                (final Uri imageUrl) => SizedBox(
                  width: 64,
                  height: 64,
                  child: buildCachedNetworkImage(
                    imageUrl: imageUrl,
                  ),
                ),
              ),
              trailing: ReorderableDragStartListener(
                index: index,
                child: const Icon(Icons.drag_handle),
              ),
            ),
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
        child: Builder(
          builder: (final BuildContext context) => Card(
            color: unit.fold(
              () => Theme.of(context).colorScheme.surface,
              (final IngredientsSortingModelUnit unit) => unit.selected
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surface,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(24),
              onTap: unit.fold(
                () => () => controller.openAddUnitModal(
                      child: buildAddUnitModalContent(),
                    ),
                (final IngredientsSortingModelUnit card) =>
                    () => controller.setUnitSelected(unit: card),
              ),
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
        ),
      );

  Widget buildAddUnitModalContent() => Consumer(
        builder: (final BuildContext context, final WidgetRef ref, final _) =>
            Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sorting unit',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              const Text(
                'A sorting unit is used to sort all ingredients in the shopping cart according to your needs.',
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Suparmarket name',
                ),
                onChanged: (final String value) {
                  ref
                      .read(
                        providers.ingredientsSortingControllerProvider.notifier,
                      )
                      .updateCurrentEditingUnitTitle(
                        title: value.trim().isNotEmpty ? some(value) : none(),
                      );
                },
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: ref
                      .watch(
                        providers.ingredientsSortingControllerProvider,
                      )
                      .currentlyEditingUnitName
                      .fold(
                        () => null,
                        (final String name) => () => ref
                            .read(
                              providers.ingredientsSortingControllerProvider
                                  .notifier,
                            )
                            .createSortingUnit(name: name),
                      ),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Create'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

abstract class IngredientsSortingController
    extends StateNotifier<IngredientsSortingModel> {
  IngredientsSortingController(super.state);

  void goBack();
  void createSortingUnit({required final String name});
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit});
  void openAddUnitModal({required final Widget child});
  void setUnitSelected({required final IngredientsSortingModelUnit unit});
  void updateCurrentEditingUnitTitle({required final Option<String> title});
  void reorderIngredientFamily({
    required final IngredientsSortingModelUnit unit,
    required final int oldIndex,
    required final int newIndex,
  });
}
