import 'dart:async';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_client_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

typedef WebClientSorting = IngredientsSortingWebClientModelIngredientSorting;
typedef PersistenceSorting = IngredientsSortingPersistenceModelSorting;
typedef Unit = IngredientsSortingModelUnit;
typedef PersistenceFamily = IngredientsSortingPersistenceModelIngredientFamily;
typedef Family1 = IngredientsSortingModelIngredientFamily;

const int takeSize = 250;
const int _widthPixels = 256;

class IngredientsSortingControllerImplementation
    extends Cubit<IngredientsSortingModel>
    implements IngredientsSortingController {
  final IngredientsSortingNavigationService navigationService;
  final IngredientsSortingWebClientService webClientService;
  final IngredientsSortingWebImageSizerService webImageSizerService;
  final IngredientsSortingPersistenceService persistenceService;
  final LoggingService logger;
  IngredientsSortingControllerImplementation({
    required this.navigationService,
    required this.webClientService,
    required this.webImageSizerService,
    required this.persistenceService,
    required this.logger,
  }) : super(
          const IngredientsSortingModel(
            units: <IngredientsSortingModelUnit>[],
          ),
        ) {
    emit(
      IngredientsSortingModel(
        units: _fetchPersistenceServiceUnits(),
      ),
    );
  }

  @override
  void goBack() => navigationService.goBack();

  @override
  void createSortingUnit({required final String name}) => unawaited(
        webClientService
            .fetchIngredientsSorting()
            .flatMap(
              (final List<WebClientSorting> sortings) =>
                  persistenceService.saveUnit(
                unit: IngredientsSortingPersistenceModelUnit(
                  name: name,
                  sortings: sortings.map(mapToSorting).toList(),
                  id: const Uuid().v4(),
                ),
              ),
            )
            .match(
              logger.error,
              (_) => emit(
                state.copyWith(
                  units: _fetchPersistenceServiceUnits(),
                ),
              ),
            )
            .andThen(IO<void>(navigationService.goBack).toTask)
            .run(),
      );

  @override
  void showDeleteUnitDialog({required final Unit unit}) => unawaited(
        navigationService.showDialog(
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
                onPressed: persistenceService
                    .deleteUnit(unitId: unit.id)
                    .match(
                      (final Exception error) => logger.error(
                        MyError(
                          originalError: error,
                          message: 'Could not delete unit with id ${unit.id}',
                        ),
                      ),
                      (final _) => emit(
                        state.copyWith(
                          units: _fetchPersistenceServiceUnits(),
                        ),
                      ),
                    )
                    .run,
              ),
            ],
          ),
        ),
      );

  @override
  void openModal({required final Widget child}) =>
      unawaited(navigationService.showModalBottomSheet(child: child));

  @override
  void setUnitSelected({required final Unit unit}) => emit(
        state.copyWith(
          units: state.units
              .map(
                (final Unit element) => element.copyWith(
                  selected: element.id == unit.id,
                ),
              )
              .toList(),
        ),
      );

  @override
  void reorderIngredientFamily({
    required final Unit unit,
    required final int oldIndex,
    required final int newIndex,
  }) {
    final List<IngredientsSortingModelSorting> sortings =
        List<IngredientsSortingModelSorting>.from(unit.sorting);
    final IngredientsSortingModelSorting sorting = sortings.removeAt(oldIndex);
    sortings.insert(newIndex, sorting);
    emit(
      state.copyWith(
        units: state.units
            .map(
              (final Unit element) => element.copyWith(
                sorting: element.id == unit.id ? sortings : element.sorting,
              ),
            )
            .toList(),
      ),
    );
    unawaited(
      persistenceService
          .saveUnit(
            unit: IngredientsSortingPersistenceModelUnit(
              id: unit.id,
              name: unit.title,
              sortings: sortings
                  .map(
                    (final IngredientsSortingModelSorting currentSorting) =>
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
          .match(logger.error, (_) {})
          .run(),
    );
  }

  List<Unit> _fetchPersistenceServiceUnits() => persistenceService
      .getUnits()
      .mapIndexed(
        (
          final int index,
          final IngredientsSortingPersistenceModelUnit unit,
        ) =>
            mapToUnit(
          unit: unit,
          imageSizerService: webImageSizerService,
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
                  IngredientsSortingModelSorting(
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
}

List<PersistenceFamily> mapToPersistenceFamily(
  final List<Family1> families,
) =>
    families
        .map(
          (final Family1 ingredient) => PersistenceFamily.helloFresh(
            helloFreshFamilyId: ingredient.helloFreshFamilyId,
          ),
        )
        .toList();

List<PersistenceSorting> combineIngredientsWithSorting({
  required final List<WebClientSorting> sortings,
  required final List<Family1> families,
}) =>
    sortings
        .map(
          (final WebClientSorting sorting) => PersistenceSorting(
            type: sorting.type,
            name: sorting.name,
            iconPath: none(),
            ingredientFamilies: families
                .where(
                  (final Family1 family) => sorting.ingredientFamilyIds
                      .contains(family.helloFreshFamilyId),
                )
                .map(
                  (final Family1 family) => PersistenceFamily.helloFresh(
                    helloFreshFamilyId: family.helloFreshFamilyId,
                  ),
                )
                .toSet()
                .toList(),
          ),
        )
        .toList();

Option<Uri> getImageUrl({
  required final Option<Uri> iconPath,
  required final IngredientsSortingWebImageSizerService imageSizerService,
}) =>
    iconPath.flatMap(
      (final Uri uri) => imageSizerService
          .getUrl(filePath: uri, widthPixels: _widthPixels)
          .toOption(),
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
