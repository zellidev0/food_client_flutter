import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

const int takeSize = 250;

class IngredientsSortingControllerImplementation
    extends IngredientsSortingController {
  final IngredientsSortingNavigationService _navigationService;
  final IngredientsSortingWebClientService _webClientService;

  IngredientsSortingControllerImplementation(
    super.state, {
    required final IngredientsSortingNavigationService navigationService,
    required final IngredientsSortingWebClientService webClientService,
  })  : _navigationService = navigationService,
        _webClientService = webClientService;

  @override
  void goBack() {
    _navigationService.goBack();
  }

  Future<List<IngredientsSortingWebClientModelIngredientFamily>>
      _fetchIngredients({
    required final int pageKey,
  }) async =>
          (await _webClientService
                  .fetchAllIngredientFamilies(
                    country: 'de',
                    take: some(takeSize),
                    skip: some(pageKey * takeSize),
                  )
                  .run())
              .fold(
            (final Exception error) {
              debugPrint(error.toString());
              return <IngredientsSortingWebClientModelIngredientFamily>[];
            },
            (
              final List<IngredientsSortingWebClientModelIngredientFamily>
                  families,
            ) =>
                families,
          );

  @override
  Future<void> addSortingUnit({required final String name}) async {
    _navigationService.pop();
    state = state.copyWith(
      units: <IngredientsSortingModelUnit>[
        ...state.units,
        IngredientsSortingModelUnit(
          selected: state.units.isEmpty,
          title: name,
          ingredientFamilies: await fetchIngredientFamilies(),
          id: const Uuid().v4(),
        ),
      ],
    );
  }

  Future<List<IngredientsSortingModelIngredientFamily>>
      fetchIngredientFamilies() async => removeDuplicates(
            families: (await Future.wait(
              <Future<List<IngredientsSortingWebClientModelIngredientFamily>>>[
                _fetchIngredients(pageKey: 0),
                // _fetchIngredients(pageKey: 1),
                // _fetchIngredients(pageKey: 2),
                // _fetchIngredients(pageKey: 3),
                // _fetchIngredients(pageKey: 4),
                // _fetchIngredients(pageKey: 5),
                // _fetchIngredients(pageKey: 6),
              ],
            ))
                .expand(
                  (
                    final List<IngredientsSortingWebClientModelIngredientFamily>
                        families,
                  ) =>
                      families,
                )
                .toList(),
          );

  @override
  void showDeleteUnitDialog({required final IngredientsSortingModelUnit unit}) {
    unawaited(
      _navigationService.showDialog(
        title: 'Delete Supermarket?',
        content: ' Do you really want to delete the unit ${unit.title}?',
        actions: some(
          <NavigationServiceDialogAction>[
            NavigationServiceDialogAction(
              text: 'cancel',
              onPressed: () {},
            ),
            NavigationServiceDialogAction(
              text: 'yes',
              onPressed: () {
                state = state.copyWith(
                  units: state.units
                      .where(
                        (final IngredientsSortingModelUnit element) =>
                            element.id != unit.id,
                      )
                      .toList(),
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
  void reorderIngredientFamily({
    required final IngredientsSortingModelUnit unit,
    required final int oldIndex,
    required final int newIndex,
  }) {
    state = state.copyWith(
      units: state.units
          .map(
            (final IngredientsSortingModelUnit element) => element.copyWith(
              ingredientFamilies: element.id == unit.id
                  ? () {
                      final List<IngredientsSortingModelIngredientFamily>
                          families =
                          List<IngredientsSortingModelIngredientFamily>.from(
                              element.ingredientFamilies);
                      final IngredientsSortingModelIngredientFamily family =
                          families.removeAt(oldIndex);
                      families.insert(newIndex, family);
                      return families;
                    }.call()
                  : element.ingredientFamilies,
            ),
          )
          .toList(),
    );
  }
}

List<IngredientsSortingModelIngredientFamily> removeDuplicates({
  required final List<IngredientsSortingWebClientModelIngredientFamily>
      families,
}) =>
    families
        .groupListsBy(
          (final IngredientsSortingWebClientModelIngredientFamily family) =>
              family.name,
        )
        .entries
        .map(
          (
            final MapEntry<String,
                    List<IngredientsSortingWebClientModelIngredientFamily>>
                entry,
          ) =>
              IngredientsSortingModelIngredientFamily(
            type: entry.key,
            iconPath: entry.value.first.iconPath,
            name: entry.value.first.name,
            slug: entry.value.first.slug,
            familyIds: entry.value
                .map(
                  (
                    final IngredientsSortingWebClientModelIngredientFamily
                        family,
                  ) =>
                      family.id,
                )
                .toSet()
                .toList(),
            elementId: const Uuid().v4(),
          ),
        )
        .toList();
