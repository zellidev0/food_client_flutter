import 'package:flutter/material.dart';
import 'package:food_client/commons/view_state.dart';
import 'package:food_client/commons/widgets.dart';
import 'package:food_client/mvc.dart';
import 'package:food_client/my_scaffold.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/widgets/ingredients_sorting_card_item.dart';
import 'package:fpdart/fpdart.dart';

class IngredientsSortingView
    extends MvcView<IngredientsSortingController, IngredientsSortingModel> {
  const IngredientsSortingView({
    required super.controller,
    required super.model,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Stack(
        children: <Widget>[
          MyScaffold<IngredientsSortingModel>(
            onAppbarBackPressed: controller.goBack,
            errorText: '',
            state: model.toViewStateData(),
            child: (IngredientsSortingModel model) => _buildContent(
              model: model,
              controller: controller,
            ),
          ),
        ],
      );

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
                          IngredientsSortingCardItem(
                        controller: controller,
                        currentlyEditingUnitName:
                            model.currentlyEditingUnitName,
                        unit: some(unit),
                      ),
                    ),
                    IngredientsSortingCardItem(
                      controller: controller,
                      currentlyEditingUnitName: model.currentlyEditingUnitName,
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
            itemCount: unit.sorting.length,
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
              key: Key(unit.sorting[index].id),
              title: Text(unit.sorting[index].name),
              leading: unit.sorting[index].iconUrl.fold(
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
}

abstract class IngredientsSortingController implements MvcController {
  void goBack();
  void createSortingUnit({required final String name});
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit});
  void openModal({required final Widget child});
  void setUnitSelected({required final IngredientsSortingModelUnit unit});
  void updateCurrentEditingUnitTitle({required final Option<String> title});
  void reorderIngredientFamily({
    required final IngredientsSortingModelUnit unit,
    required final int oldIndex,
    required final int newIndex,
  });
}
