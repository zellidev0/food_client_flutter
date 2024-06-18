import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:food_client/pages/features/ingredients_sorting/cubit/ingredients_sorting_state.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/ingredients_sorting_navigation_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/persistance_service/ingredients_sorting_persistence_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_client_service.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_image_sizer_service.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

typedef WebClientSorting = IngredientsSortingWebClientModelIngredientSorting;
typedef PersistenceSorting = IngredientsSortingPersistenceModelSorting;
typedef Unit = IngredientsSortingStateUnit;
typedef PersistenceFamily = IngredientsSortingPersistenceModelIngredientFamily;
typedef Family1 = IngredientsSortingStateIngredientFamily;

const int takeSize = 250;
const int _widthPixels = 256;

class IngredientsSortingCubit extends Cubit<IngredientsSortingState> {
  final IngredientsSortingNavigationService _navigationService;
  final IngredientsSortingPersistenceService _persistenceService;
  final IngredientsSortingWebClientService _webClientService;
  final IngredientsSortingWebImageSizerService _webImageSizerService;
  final LoggingService _logger;

  IngredientsSortingCubit({
    required final IngredientsSortingNavigationService navigationService,
    required final IngredientsSortingPersistenceService persistenceService,
    required final LoggingService loggingService,
    required final IngredientsSortingWebClientService webClientService,
    required final IngredientsSortingWebImageSizerService webImageSizerService,
  })  : _navigationService = navigationService,
        _persistenceService = persistenceService,
        _logger = loggingService,
        _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        super(
          const IngredientsSortingState(
            units: ViewState<List<IngredientsSortingStateUnit>>.loading(),
          ),
        ) {
    emit(
      IngredientsSortingState(
        units: ViewStateData<List<IngredientsSortingStateUnit>>(
          _fetchPersistenceServiceUnits(),
        ),
      ),
    );
  }

  void showDeleteUnitDialog({required final Unit unit}) => unawaited(
        _navigationService.showDialog(
          title: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_title
              .tr(),
          content: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_content
              .tr(namedArgs: <String, String>{'unitTitle': unit.title}),
          actions: some(
            <NavigationServiceDialogAction>[
              NavigationServiceDialogAction(
                text: LocaleKeys
                    .ui_ingredients_sorting_view_dialogs_delete_dialog_actions_cancel
                    .tr(),
                onPressed: () {},
              ),
              NavigationServiceDialogAction(
                text: LocaleKeys
                    .ui_ingredients_sorting_view_dialogs_delete_dialog_actions_delete
                    .tr(),
                onPressed: _persistenceService
                    .deleteUnit(unitId: unit.id)
                    .match(
                      (final Exception error) => _logger.error(
                        MyError(
                          originalError: error,
                          message: 'Could not delete unit with id ${unit.id}',
                        ),
                      ),
                      (final _) => emit(
                        state.copyWith(
                          units:
                              ViewStateData<List<IngredientsSortingStateUnit>>(
                            _fetchPersistenceServiceUnits(),
                          ),
                        ),
                      ),
                    )
                    .run,
              ),
            ],
          ),
        ),
      );

  void goBack() => _navigationService.goBack();

  void openModal({required final Widget child}) =>
      unawaited(_navigationService.showModalBottomSheet(child: child));

  void createSortingUnit({required final String name}) => unawaited(
        _webClientService
            .fetchIngredientsSorting()
            .flatMap(
              (final List<WebClientSorting> sortings) =>
                  _persistenceService.saveUnit(
                unit: IngredientsSortingPersistenceModelUnit(
                  name: name,
                  sortings: sortings.map(mapToSorting).toList(),
                  id: const Uuid().v4(),
                ),
              ),
            )
            .match(
              _logger.error,
              (_) => emit(
                state.copyWith(
                  units: ViewStateData<List<IngredientsSortingStateUnit>>(
                    _fetchPersistenceServiceUnits(),
                  ),
                ),
              ),
            )
            .andThen(IO<void>(_navigationService.pop).toTask)
            .run(),
      );

  IngredientsSortingPersistenceModelSorting mapToSorting(
    WebClientSorting sorting,
  ) =>
      PersistenceSorting(
        type: sorting.type,
        iconPath: sorting.iconPath,
        name: sorting.name,
        ingredientFamilies: sorting.ingredientFamilyIds
            .map(
              (final String helloFreshFamilyId) => PersistenceFamily.helloFresh(
                helloFreshFamilyId: helloFreshFamilyId,
              ),
            )
            .toList(),
      );

  void setUnitSelected({required final IngredientsSortingStateUnit unit}) =>
      emit(
        state.copyWith(
          units: state.units.map(
            data: (
              final ViewStateData<List<IngredientsSortingStateUnit>> value,
            ) =>
                value.copyWith(
              data: value.data
                  .map((IngredientsSortingStateUnit element) =>
                      element.id == unit.id
                          ? element.copyWith(selected: true)
                          : element.copyWith(selected: false))
                  .toList(),
            ),
            loading:
                (ViewStateLoading<List<IngredientsSortingStateUnit>> value) =>
                    value,
            error: (ViewStateError<List<IngredientsSortingStateUnit>> value) =>
                value,
          ),
        ),
      );
  void reorderIngredientFamily({
    required final IngredientsSortingStateUnit unit,
    required final int oldIndex,
    required final int newIndex,
  }) {
    final List<IngredientsSortingStateSorting> sortings =
        List<IngredientsSortingStateSorting>.from(unit.sorting);
    final IngredientsSortingStateSorting sorting = sortings.removeAt(oldIndex);
    sortings.insert(newIndex, sorting);
    emit(
      state.copyWith(
        units: state.units.map(
          data: (ViewStateData<List<IngredientsSortingStateUnit>> value) =>
              value.copyWith(
            data: value.data
                .map(
                  (final IngredientsSortingStateUnit u) =>
                      u.id == unit.id ? unit.copyWith(sorting: sortings) : u,
                )
                .toList(),
          ),
          loading:
              (ViewStateLoading<List<IngredientsSortingStateUnit>> value) =>
                  value,
          error: (ViewStateError<List<IngredientsSortingStateUnit>> value) =>
              value,
        ),
      ),
    );
    unawaited(
      _persistenceService
          .saveUnit(
            unit: IngredientsSortingPersistenceModelUnit(
              id: unit.id,
              name: unit.title,
              sortings: sortings
                  .map(
                    (final IngredientsSortingStateSorting currentSorting) =>
                        PersistenceSorting(
                      type: currentSorting.type,
                      iconPath: currentSorting.iconPath,
                      name: currentSorting.name,
                      ingredientFamilies: currentSorting.ingredientFamilies
                          .map(
                            (
                              final Family1 family,
                            ) =>
                                PersistenceFamily.helloFresh(
                              helloFreshFamilyId: family.helloFreshFamilyId,
                            ),
                          )
                          .toList(),
                    ),
                  )
                  .toList(),
            ),
          )
          .match(_logger.error, (_) {})
          .run(),
    );
  }

  List<Unit> _fetchPersistenceServiceUnits() => _persistenceService
      .getUnits()
      .mapIndexed(
        (
          final int index,
          final IngredientsSortingPersistenceModelUnit unit,
        ) =>
            mapToUnit(
          unit: unit,
          imageSizerService: _webImageSizerService,
          isSelected: index == 0,
        ),
      )
      .toList();

  Unit mapToUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
    required final bool isSelected,
    required final IngredientsSortingWebImageSizerService imageSizerService,
  }) =>
      Unit(
        id: unit.id,
        title: unit.name,
        selected: isSelected,
        sorting: unit.sortings
            .map(
              (final PersistenceSorting sorting) =>
                  IngredientsSortingStateSorting(
                type: sorting.type,
                iconUrl: getImageUrl(
                  iconPath: sorting.iconPath,
                  imageSizerService: imageSizerService,
                ),
                name: sorting.name,
                ingredientFamilies: sorting.ingredientFamilies
                    .map(
                      (final PersistenceFamily family) => Family1.helloFresh(
                        helloFreshFamilyId: family.helloFreshFamilyId,
                      ),
                    )
                    .toList(),
                id: const Uuid().v4(),
                iconPath: sorting.iconPath,
              ),
            )
            .toList(),
      );

  Option<Uri> getImageUrl({
    required final Option<Uri> iconPath,
    required final IngredientsSortingWebImageSizerService imageSizerService,
  }) =>
      iconPath.flatMap(
        (final Uri uri) => imageSizerService
            .getUrl(filePath: uri, widthPixels: _widthPixels)
            .toOption(),
      );
}
