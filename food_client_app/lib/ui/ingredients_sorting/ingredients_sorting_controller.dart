import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_client/commons/utils.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_logging_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_client_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_image_sizer_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

const int takeSize = 250;
const int _widthPixels = 256;

class IngredientsSortingControllerImplementation
    extends IngredientsSortingController {
  final IngredientsSortingLoggingService _loggingService;
  final IngredientsSortingNavigationService _navigationService;
  final IngredientsSortingWebClientService _webClientService;
  final IngredientsSortingPersistenceService _persistenceService;
  final IngredientsSortingWebImageSizerService _webImageSizerService;

  IngredientsSortingControllerImplementation(
    super.state, {
    required final IngredientsSortingNavigationService navigationService,
    required final IngredientsSortingWebClientService webClientService,
    required final IngredientsSortingWebImageSizerService webImageSizerService,
    required final IngredientsSortingPersistenceService persistenceService,
    required final IngredientsSortingLoggingService loggingService,
  })  : _navigationService = navigationService,
        _webClientService = webClientService,
        _webImageSizerService = webImageSizerService,
        _loggingService = loggingService,
        _persistenceService = persistenceService {
    _fetchPersistenceServiceUnits();
  }

  @override
  void goBack() {
    _navigationService.goBack();
  }

  @override
  Future<void> createSortingUnit({required final String name}) async {
    await (await fetchIngredientFamiliesFromBackend().run()).fold(
      (final Exception exception) async => _handleError(
        exception: exception,
        message: 'Could not add sorting unit',
        userDisplayedErrorMessage: 'An error occurred, try again later',
      ),
      (final List<IngredientsSortingModelIngredientFamily> families) async {
        await _persistenceService
            .saveUnit(
              unit: mapToIngredientsSortingPersistenceModelUnit(
                name: name,
                families: families,
              ),
            )
            .run();
        _fetchPersistenceServiceUnits();
      },
    );
    _navigationService.pop();
  }

  IngredientsSortingPersistenceModelUnit
      mapToIngredientsSortingPersistenceModelUnit({
    required final String name,
    required final List<IngredientsSortingModelIngredientFamily> families,
  }) =>
          IngredientsSortingPersistenceModelUnit(
            name: name,
            ingredientFamilies:
                mapToIngredientsSortingPersistenceModelIngredientFamily(
              families,
            ),
            id: const Uuid().v4(),
          );

  TaskEither<Exception, List<IngredientsSortingModelIngredientFamily>>
      fetchIngredientFamiliesFromBackend() => combineFetchedResults(
            // ignore: always_specify_types
            response: TaskEither.tryCatch(
              () async => await Future.wait(
                // ignore: always_specify_types
                [
                  _fetchIngredientsPaginated(pageKey: 0).run(),
                  _fetchIngredientsPaginated(pageKey: 1).run(),
                  _fetchIngredientsPaginated(pageKey: 2).run(),
                  _fetchIngredientsPaginated(pageKey: 3).run(),
                  _fetchIngredientsPaginated(pageKey: 4).run(),
                  _fetchIngredientsPaginated(pageKey: 5).run(),
                  _fetchIngredientsPaginated(pageKey: 6).run(),
                  _fetchIngredientsPaginated(pageKey: 7).run(),
                ],
              ),
              buildException,
            ),
          )
              .map(
                (
                  final List<IngredientsSortingWebClientModelIngredientFamily>
                      value,
                ) =>
                    value
                        .map(mapToIngredientsSortingModelIngredientFamily)
                        .toList(),
              )
              .map(
                (
                  final List<IngredientsSortingModelIngredientFamily> families,
                ) =>
                    removeDuplicates(
                  families: families,
                  imageSizerService: _webImageSizerService,
                ),
              );

  @override
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit}) {
    unawaited(
      _navigationService.showDialog(
        title: 'Delete Supermarket?',
        content: ' Do you really want to delete the unit ${unit.title}?',
        actions: some(
          <NavigationServiceDialogAction>[
            NavigationServiceDialogAction(text: 'cancel', onPressed: () {}),
            NavigationServiceDialogAction(
              text: 'yes',
              onPressed: () async {
                (await _persistenceService.deleteUnit(unitId: unit.id).run())
                    .fold(
                  (final Exception exception) {
                    _handleError(
                      exception: exception,
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
      _navigationService.showModalBottomSheet(
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
    final List<IngredientsSortingModelIngredientFamily> families =
        List<IngredientsSortingModelIngredientFamily>.from(
      unit.ingredientFamilies,
    );
    final IngredientsSortingModelIngredientFamily family =
        families.removeAt(oldIndex);
    families.insert(newIndex, family);
    state = state.copyWith(
      units: state.units
          .map(
            (final IngredientsSortingModelUnit element) => element.copyWith(
              ingredientFamilies:
                  element.id == unit.id ? families : element.ingredientFamilies,
            ),
          )
          .toList(),
    );
    await _persistenceService
        .saveUnit(
          unit: IngredientsSortingPersistenceModelUnit(
            id: unit.id,
            name: unit.title,
            ingredientFamilies:
                mapToIngredientsSortingPersistenceModelIngredientFamily(
              families,
            ),
          ),
        )
        .run();
  }

  TaskEither<Exception, List<IngredientsSortingWebClientModelIngredientFamily>>
      _fetchIngredientsPaginated({
    required final int pageKey,
  }) =>
          _webClientService.fetchAllIngredientFamilies(
            country: 'de',
            take: some(takeSize),
            skip: some(pageKey * takeSize),
          );

  void _fetchPersistenceServiceUnits() {
    state = state.copyWith(
      units: _persistenceService
          .getUnits()
          .mapIndexed(
            (final int index,
                    final IngredientsSortingPersistenceModelUnit unit,) =>
                mapToIngredientsSortingModelUnit(
              unit: unit,
              imageSizerService: _webImageSizerService,
              isSelected: index == 0,
            ),
          )
          .toList(),
    );
  }

  void _handleError({
    required final Exception exception,
    required final String message,
    required final String userDisplayedErrorMessage,
  }) {
    _loggingService.logError(message: message, exception: exception);
    _navigationService.showSnackBar(message: userDisplayedErrorMessage);
  }

  List<IngredientsSortingModelIngredientFamily> removeDuplicates({
    required final List<IngredientsSortingModelIngredientFamily> families,
    required final IngredientsSortingWebImageSizerService imageSizerService,
  }) =>
      families
          .groupListsBy(
            (final IngredientsSortingModelIngredientFamily family) =>
                family.slug,
          )
          .entries
          .map(
            (
              final MapEntry<String,
                      List<IngredientsSortingModelIngredientFamily>>
                  family,
            ) =>
                family.value.reduce(
              (
                final IngredientsSortingModelIngredientFamily last,
                final IngredientsSortingModelIngredientFamily next,
              ) =>
                  last.copyWith(
                familyIds: <String>[...last.familyIds, ...next.familyIds],
              ),
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

  IngredientsSortingModelUnit mapToIngredientsSortingModelUnit({
    required final IngredientsSortingPersistenceModelUnit unit,
    required final bool isSelected,
    required final IngredientsSortingWebImageSizerService imageSizerService,
  }) =>
      IngredientsSortingModelUnit(
        id: unit.id,
        title: unit.name,
        selected: isSelected,
        ingredientFamilies: unit.ingredientFamilies
            .map(mapToIngredientsSortingModelIngredientFamily2)
            .toList(),
      );

  IngredientsSortingModelIngredientFamily
      mapToIngredientsSortingModelIngredientFamily(
    final IngredientsSortingWebClientModelIngredientFamily family,
  ) =>
          IngredientsSortingModelIngredientFamily(
            type: family.type,
            iconUrl: getImageUrl(
              iconPath: family.iconPath,
              imageSizerService: _webImageSizerService,
            ),
            name: family.name,
            slug: family.slug,
            familyIds: <String>[family.id],
          );

  IngredientsSortingModelIngredientFamily
      mapToIngredientsSortingModelIngredientFamily2(
    final IngredientsSortingPersistenceModelIngredientFamily family,
  ) =>
          IngredientsSortingModelIngredientFamily(
            type: family.type,
            iconUrl: family.iconUrl,
            name: family.name,
            slug: family.slug,
            familyIds: family.familyIds,
          );

  TaskEither<Exception, List<IngredientsSortingWebClientModelIngredientFamily>>
      combineFetchedResults({
    required final TaskEither<
            Exception,
            List<
                Either<Exception,
                    List<IngredientsSortingWebClientModelIngredientFamily>>>>
        response,
  }) =>
          response
              .map(
                // ignore: always_specify_types
                (final responseResult) => responseResult.reduce(
                  // ignore: always_specify_types
                  (final current, final next) => current.flatMap(
                    // ignore: always_specify_types
                    (final firstFamilies) => next.map(
                      // ignore: always_specify_types
                      (final secondFamilies) =>
                          // ignore: always_specify_types
                          [...firstFamilies, ...secondFamilies],
                    ),
                  ),
                ),
              )
              // ignore: always_specify_types
              .flatMap((final result) => result.toTaskEither());
}

List<IngredientsSortingPersistenceModelIngredientFamily>
    mapToIngredientsSortingPersistenceModelIngredientFamily(
  final List<IngredientsSortingModelIngredientFamily> families,
) =>
        families
            .map(
              (final IngredientsSortingModelIngredientFamily ingredient) =>
                  IngredientsSortingPersistenceModelIngredientFamily(
                familyIds: ingredient.familyIds,
                type: ingredient.type,
                iconUrl: ingredient.iconUrl,
                name: ingredient.name,
                slug: ingredient.slug,
              ),
            )
            .toList();
