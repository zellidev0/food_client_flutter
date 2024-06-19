import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/home/cubit/home_cubit.dart';
import 'package:food_client/pages/home/cubit/home_state.dart';
import 'package:food_client/pages/home/widgets/filter_dialog.dart';
import 'package:fpdart/fpdart.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, HomeState state) =>
            state.availableFilters.map(
          data: (ViewStateData<List<HomeStateFilter>> availableFilters) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () => context.read<HomeCubit>().goToHistoryView(),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FilterChip(
                    label: state.availableFilters.map(
                      data: (
                        ViewStateData<List<HomeStateFilter>> data,
                      ) =>
                          Text(
                        data.data.isEmpty
                            ? LocaleKeys.ui_home_view_filters_tags.tr()
                            : LocaleKeys.ui_home_view_filters_name_with_amount
                                .tr(
                                namedArgs: <String, String>{
                                  'name':
                                      LocaleKeys.ui_home_view_filters_tags.tr(),
                                  'amount': data.data.length.toString(),
                                },
                              ),
                      ),
                      error: (_) => const CircularProgressIndicator(),
                      loading: (_) => const CircularProgressIndicator(),
                    ),
                    selected: availableFilters.data
                        .filter(
                          (final HomeStateFilter filter) =>
                              filter is HomeStateFilterTag && filter.isSelected,
                        )
                        .isNotEmpty,
                    onSelected: availableFilters
                        .maybeWhen<Option<Widget>>(
                          data: (List<HomeStateFilter> filters) => some(
                            FilterDialog(
                              filters: filters
                                  .whereType<HomeStateFilterTag>()
                                  .toList(),
                              setFiltersSelected: ({
                                required String filterId,
                                required bool isSelected,
                              }) =>
                                  context.read<HomeCubit>().setFiltersSelected(
                                        filterId: filterId,
                                        isSelected: isSelected,
                                      ),
                            ),
                          ),
                          orElse: () => const None<Widget>(),
                        )
                        .map(
                          (Widget widget) => (final _) async => context
                              .read<HomeCubit>()
                              .openDialog(child: widget),
                        )
                        .toNullable(),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: availableFilters.map(
                      data: (
                        ViewStateData<List<HomeStateFilter>> data,
                      ) =>
                          Text(
                        data.data.isEmpty
                            ? LocaleKeys.ui_home_view_filters_cuisines.tr()
                            : LocaleKeys.ui_home_view_filters_name_with_amount
                                .tr(
                                namedArgs: <String, String>{
                                  'name': LocaleKeys
                                      .ui_home_view_filters_cuisines
                                      .tr(),
                                  'amount': data.data.length.toString(),
                                },
                              ),
                      ),
                      error: (_) => const CircularProgressIndicator(),
                      loading: (_) => const CircularProgressIndicator(),
                    ),
                    selected: availableFilters.map(
                      data: (
                        ViewStateData<List<HomeStateFilter>> data,
                      ) =>
                          data.data.isNotEmpty,
                      error: (_) => false,
                      loading: (_) => false,
                    ),
                    onSelected: availableFilters
                        .maybeWhen<Option<Widget>>(
                          data: (List<HomeStateFilter> filters) => some(
                            FilterDialog(
                              filters: filters
                                  .whereType<HomeStateFilterTag>()
                                  .toList(),
                              setFiltersSelected: ({
                                required String filterId,
                                required bool isSelected,
                              }) =>
                                  context.read<HomeCubit>().setFiltersSelected(
                                        filterId: filterId,
                                        isSelected: isSelected,
                                      ),
                            ),
                          ),
                          orElse: () => const None<Widget>(),
                        )
                        .map(
                          (Widget widget) => (final _) async => context
                              .read<HomeCubit>()
                              .openDialog(child: widget),
                        )
                        .toNullable(),
                  ),
                ],
              ),
            ],
          ),
          error: (_) => const SizedBox.shrink(),
          loading: (_) => const SizedBox.shrink(),
        ),
      );
}
