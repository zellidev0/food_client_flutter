import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_navigation_service.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_web_client_service.dart';
import 'package:fpdart/fpdart.dart';

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
        _webClientService = webClientService {
    unawaited(init());
  }

  Future<void> init() async {
    final List<IngredientsSortingWebClientModelIngredientFamily> families =
        <IngredientsSortingWebClientModelIngredientFamily>[
      ...await _fetchIngredients(pageKey: 0),
      ...await _fetchIngredients(pageKey: 1),
      ...await _fetchIngredients(pageKey: 2),
      ...await _fetchIngredients(pageKey: 3),
      ...await _fetchIngredients(pageKey: 4),
      ...await _fetchIngredients(pageKey: 5),
      ...await _fetchIngredients(pageKey: 6),
    ];

    state = state.copyWith(
      ingredientFamilies: removeDuplicates(families: families),
    );
  }

  @override
  void goToCart() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.cartRouteUri);
  }

  @override
  void goToHome() {
    _navigationService.navigateToNamed(uri: NavigationServiceUris.homeRouteUri);
  }

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
          ),
        )
        .toList();
