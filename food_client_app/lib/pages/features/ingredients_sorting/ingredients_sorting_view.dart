import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_cubit.dart';
import 'package:food_client/cubits/features/ingredients_sorting/ingredients_sorting_state.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/empty_view_content.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/ingredients_sorting/widgets/ingredients_list_widget.dart';
import 'package:food_client/pages/features/ingredients_sorting/widgets/ingredients_sorting_card_item.dart';
import 'package:fpdart/fpdart.dart';

class IngredientsSortingView extends StatelessWidget {
  const IngredientsSortingView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: context.read<IngredientsSortingCubit>().goBack,
          ),
        ),
        body: BlocBuilder<IngredientsSortingCubit, IngredientsSortingState>(
          buildWhen: (
            IngredientsSortingState previous,
            IngredientsSortingState current,
          ) =>
              previous.units.runtimeType != current.units.runtimeType,
          builder: (BuildContext context, IngredientsSortingState state) =>
              state.units.map(
            data: (
              ViewStateData<List<IngredientsSortingStateUnit>> data,
            ) =>
                Column(
              children: <Widget>[
                Builder(
                  builder: (final BuildContext context) => SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: BlocBuilder<IngredientsSortingCubit,
                          IngredientsSortingState>(
                        builder: (
                          BuildContext context,
                          IngredientsSortingState state,
                        ) =>
                            ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ...state.units.map(
                              data: (
                                ViewStateData<List<IngredientsSortingStateUnit>>
                                    data,
                              ) =>
                                  data.data.map(
                                (final IngredientsSortingStateUnit unit) =>
                                    IngredientsSortingCardItem(
                                  unit: some(unit),
                                  setUnitSelected: context
                                      .read<IngredientsSortingCubit>()
                                      .setUnitSelected,
                                ),
                              ),
                              loading: (_) => <Widget>[],
                              error: (_) => <Widget>[],
                            ),
                            IngredientsSortingCardItem(
                              setUnitSelected: context
                                  .read<IngredientsSortingCubit>()
                                  .setUnitSelected,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                BlocBuilder<IngredientsSortingCubit, IngredientsSortingState>(
                  builder:
                      (BuildContext context, IngredientsSortingState state) =>
                          state.units.map(
                    data: (
                      ViewStateData<List<IngredientsSortingStateUnit>> data,
                    ) {
                      if (data.data.isEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(64),
                          child: EmptyViewContent(
                            message: LocaleKeys
                                .ui_ingredients_sorting_view_empty_states_no_units
                                .tr(),
                          ),
                        );
                      } else {
                        return IngredientsListWidget(
                          reorder: context
                              .read<IngredientsSortingCubit>()
                              .reorderIngredientFamily,
                          unit: data.data.firstWhere(
                            (final IngredientsSortingStateUnit unit) =>
                                unit.selected,
                          ),
                        );
                      }
                    },
                    error: (_) => const SizedBox.shrink(),
                    loading: (_) => const SizedBox.shrink(),
                  ),
                ),
              ],
            ),
            error: (_) => const Center(
              child: Card(
                child: Text('Error loading data'),
              ),
            ),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
}
