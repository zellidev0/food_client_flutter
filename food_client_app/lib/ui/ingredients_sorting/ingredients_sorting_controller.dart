import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/services/logging_service/logging_service.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart'
    hide navigationService;
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_client_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'ingredients_sorting_controller.g.dart';

const int takeSize = 250;
const int _widthPixels = 256;

@riverpod
class IngredientsSortingControllerImplementation
    extends _$IngredientsSortingControllerImplementation
    implements IngredientsSortingController {
  @override
  IngredientsSortingModel build({
    required final IngredientsSortingNavigationService navigationService,
    required final IngredientsSortingWebClientService webClientService,
    required final IngredientsSortingWebImageSizerService webImageSizerService,
    required final IngredientsSortingPersistenceService persistenceService,
    required final LoggingService logger,
  }) {
    _fetchPersistenceServiceUnits();
    return IngredientsSortingModel(
      units: <IngredientsSortingModelUnit>[],
      currentlyEditingUnitName: none(),
    );
  }

  @override
  void goBack() {
    navigationService.goBack();
  }

  @override
  Future<void> createSortingUnit({required final String name}) async {
    (await webClientService.fetchIngredientsSorting().run()).fold(
      (final Exception error) => _handleError(
        error: error,
        message: 'Could not fetch ingredients sorting unit',
        userDisplayedErrorMessage: 'An error occurred, try again later',
      ),
      (
        final List<IngredientsSortingWebClientModelIngredientSorting> sortings,
      ) async {
        await persistenceService
            .saveUnit(
              unit: IngredientsSortingPersistenceModelUnit(
                name: name,
                sortings: sortings
                    .map(
                      (
                        final IngredientsSortingWebClientModelIngredientSorting
                            sorting,
                      ) =>
                          IngredientsSortingPersistenceModelSorting(
                        type: sorting.type,
                        iconPath: sorting.iconPath,
                        name: sorting.name,
                        ingredientFamilies: sorting.ingredientFamilyIds
                            .map(
                              (final String helloFreshFamilyId) =>
                                  IngredientsSortingPersistenceModelIngredientFamily
                                      .helloFresh(
                                helloFreshFamilyId: helloFreshFamilyId,
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
                id: const Uuid().v4(),
              ),
            )
            .run();
        _fetchPersistenceServiceUnits();
      },
    );
    navigationService.pop();
  }

  @override
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit}) {
    unawaited(
      navigationService.showDialog(
        title: 'Delete Supermarket?',
        content: ' Do you really want to delete the unit ${unit.title}?',
        actions: some(
          <NavigationServiceDialogAction>[
            NavigationServiceDialogAction(text: 'cancel', onPressed: () {}),
            NavigationServiceDialogAction(
              text: 'yes',
              onPressed: () async {
                (await persistenceService.deleteUnit(unitId: unit.id).run())
                    .fold(
                  (final Exception exception) {
                    _handleError(
                      error: exception,
                      message: 'Could not delete unit with id ${unit.id}',
                      userDisplayedErrorMessage: 'Unit could not be deleted',
                    );
                  },
                  (final void _) => _fetchPersistenceServiceUnits(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void openAddUnitModal({
    required final Widget child,
  }) {
    unawaited(
      navigationService.showModalBottomSheet(
        child: child,
      ),
    );
  }

  @override
  void setUnitSelected({required final IngredientsSortingModelUnit unit}) {
    state = state.copyWith(
      units: state.units
          .map(
            (final IngredientsSortingModelUnit element) => element.copyWith(
              selected: element.id == unit.id,
            ),
          )
          .toList(),
    );
  }

  @override
  void updateCurrentEditingUnitTitle({required final Option<String> title}) {
    state = state.copyWith(currentlyEditingUnitName: title);
  }

  @override
  Future<void> reorderIngredientFamily({
    required final IngredientsSortingModelUnit unit,
    required final int oldIndex,
    required final int newIndex,
  }) async {
    final List<IngredientsSortingModelSorting> sortings =
        List<IngredientsSortingModelSorting>.from(unit.sorting);
    final IngredientsSortingModelSorting sorting = sortings.removeAt(oldIndex);
    sortings.insert(newIndex, sorting);
    state = state.copyWith(
      units: state.units
          .map(
            (final IngredientsSortingModelUnit element) => element.copyWith(
              sorting: element.id == unit.id ? sortings : element.sorting,
            ),
          )
          .toList(),
    );
    await persistenceService
        .saveUnit(
          unit: IngredientsSortingPersistenceModelUnit(
            id: unit.id,
            name: unit.title,
            sortings: sortings
                .map(
                  (final IngredientsSortingModelSorting currentSorting) =>
                      IngredientsSortingPersistenceModelSorting(
                    type: currentSorting.type,
                    iconPath: currentSorting.iconPath,
                    name: currentSorting.name,
                    ingredientFamilies: currentSorting.ingredientFamilies
                        .map(
                          (
                            final IngredientsSortingModelIngredientFamily
                                family,
                          ) =>
                              IngredientsSortingPersistenceModelIngredientFamily
                                  .helloFresh(
                            helloFreshFamilyId: family.helloFreshFamilyId,
                          ),
                        )
                        .toList(),
                  ),
                )
                .toList(),
          ),
        )
        .run();
  }

  void _fetchPersistenceServiceUnits() {
    state = state.copyWith(
      units: persistenceService
          .getUnits()
          .mapIndexed(
            (
              final int index,
              final IngredientsSortingPersistenceModelUnit unit,
            ) =>
                mapToIngredientsSortingModelUnit(
              unit: unit,
              imageSizerService: webImageSizerService,
              isSelected: index == 0,
            ),
          )
          .toList(),
    );
  }

  void _handleError({
    required final Exception error,
    required final String message,
    required final String userDisplayedErrorMessage,
  }) {
    logger.error(MyError(message: message, originalError: error));

    navigationService.showSnackBar(message: userDisplayedErrorMessage);
  }

  IngredientsSortingModelUnit mapToIngredientsSortingModelUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
    required final bool isSelected,
    required final IngredientsSortingWebImageSizerService imageSizerService,
  }) =>
      IngredientsSortingModelUnit(
        id: unit.id,
        title: unit.name,
        selected: isSelected,
        sorting: unit.sortings
            .map(
              (final IngredientsSortingPersistenceModelSorting sorting) =>
                  IngredientsSortingModelSorting(
                type: sorting.type,
                iconUrl: getImageUrl(
                  iconPath: sorting.iconPath,
                  imageSizerService: imageSizerService,
                ),
                name: sorting.name,
                ingredientFamilies: sorting.ingredientFamilies
                    .map(
                      (
                        final IngredientsSortingPersistenceModelIngredientFamily
                            family,
                      ) =>
                          IngredientsSortingModelIngredientFamily.helloFresh(
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

List<IngredientsSortingPersistenceModelIngredientFamily>
    mapToIngredientsSortingPersistenceModelIngredientFamily(
  final List<IngredientsSortingModelIngredientFamily> families,
) =>
        families
            .map(
              (final IngredientsSortingModelIngredientFamily ingredient) =>
                  IngredientsSortingPersistenceModelIngredientFamily.helloFresh(
                helloFreshFamilyId: ingredient.helloFreshFamilyId,
              ),
            )
            .toList();

List<IngredientsSortingPersistenceModelSorting> combineIngredientsWithSorting({
  required final List<IngredientsSortingWebClientModelIngredientSorting>
      sortings,
  required final List<IngredientsSortingModelIngredientFamily> families,
}) =>
    sortings
        .map(
          (final IngredientsSortingWebClientModelIngredientSorting sorting) =>
              IngredientsSortingPersistenceModelSorting(
            type: sorting.type,
            name: sorting.name,
            // iconUrl: families.firstOption.flatMap(
            //   (final IngredientsSortingModelIngredientFamily family) =>
            //       getImageUrl(
            //         iconPath: family,
            //         imageSizerService: webImageSizerService,
            //       ),
            // ),
            iconPath: none(),
            ingredientFamilies: families
                .where(
                  (final IngredientsSortingModelIngredientFamily family) =>
                      sorting.ingredientFamilyIds
                          .contains(family.helloFreshFamilyId),
                )
                .map(
                  (final IngredientsSortingModelIngredientFamily ingredient) =>
                      IngredientsSortingPersistenceModelIngredientFamily
                          .helloFresh(
                    helloFreshFamilyId: ingredient.helloFreshFamilyId,
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
