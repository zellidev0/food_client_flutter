import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_client/commons/error.dart';
import 'package:food_client/generated/locale_keys.g.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_controller.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_persistence_service.dart';
import 'package:food_client/ui/ingredients_sorting/services/ingredients_sorting_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import '../../mocks.mocks.dart';

void main() {
  group('IngredientsSortingControllerImplementation', () {
    late MockIngredientsSortingNavigationService navigationService;
    late MockIngredientsSortingWebClientService webClientService;
    late MockIngredientsSortingWebImageSizerService webImageSizerService;
    late MockIngredientsSortingPersistenceService persistenceService;
    late MockLoggingService logger;
    late IngredientsSortingControllerImplementation controller;

    setUp(() {
      navigationService = MockIngredientsSortingNavigationService();
      webClientService = MockIngredientsSortingWebClientService();
      webImageSizerService = MockIngredientsSortingWebImageSizerService();
      persistenceService = MockIngredientsSortingPersistenceService();
      logger = MockLoggingService();

      when(persistenceService.getUnits()).thenAnswer(
        (_) => <IngredientsSortingPersistenceModelUnit>[],
      );

      controller = IngredientsSortingControllerImplementationProvider(
        navigationService: navigationService,
        webClientService: webClientService,
        webImageSizerService: webImageSizerService,
        persistenceService: persistenceService,
        logger: logger,
      ).notifier.read(ProviderContainer());
    });

    test('build should fetch data', () async {
      verify(persistenceService.getUnits()).called(1);
    });

    test('goBack should call navigationService.goBack', () {
      controller.goBack();
      verify(navigationService.goBack()).called(1);
    });

    test(
        'createSortingUnit should call webClientService.fetchIngredientsSorting, persistenceService.saveUnit, and navigationService.pop',
        () async {
      when(webClientService.fetchIngredientsSorting()).thenAnswer(
        (_) => TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.of(
          <IngredientsSortingWebClientModelIngredientSorting>[],
        ),
      );
      when(persistenceService.saveUnit(unit: anyNamed('unit')))
          .thenAnswer((_) => TaskEither<MyError, void>.of(null));
      when(navigationService.pop()).thenAnswer((_) => Future<void>.value());

      controller.createSortingUnit(name: 'name');

      await Future<void>.delayed(Duration.zero);
      verify(webClientService.fetchIngredientsSorting()).called(1);
      verify(persistenceService.saveUnit(unit: anyNamed('unit'))).called(1);
      verify(navigationService.pop()).called(1);
    });

    test('createSortingUnit should call logger.error if an exception is thrown',
        () async {
      final MyError error = MyError(message: 'test');
      when(webClientService.fetchIngredientsSorting()).thenAnswer(
        (_) => TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.of(
          <IngredientsSortingWebClientModelIngredientSorting>[],
        ),
      );
      when(persistenceService.saveUnit(unit: anyNamed('unit'))).thenAnswer(
        (_) => TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.left(
          error,
        ),
      );
      controller.createSortingUnit(name: 'name');
      await Future<void>.delayed(Duration.zero);
      verify(logger.error(any)).called(1);
    });

    test(
        'createSortingUnit should update state with new units if an exception is thrown',
        () async {
      final List<IngredientsSortingWebClientModelIngredientSorting> sortings =
          <IngredientsSortingWebClientModelIngredientSorting>[];
      const String name = 'test';
      final IngredientsSortingPersistenceModelUnit unit =
          IngredientsSortingPersistenceModelUnit(
        name: name,
        sortings: sortings.map(mapToSorting).toList(),
        id: const Uuid().v4(),
      );
      final MyError error = MyError(message: 'test');
      when(webClientService.fetchIngredientsSorting()).thenAnswer(
        (_) => TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.of(
          sortings,
        ),
      );
      when(persistenceService.saveUnit(unit: unit)).thenAnswer(
        (_) => TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.left(
          error,
        ),
      );
      controller.createSortingUnit(name: name);
      await Future<void>.delayed(Duration.zero);
      verify(
        logger.error(
          MyError(
            originalError: error,
            message: 'Could not create sorting unit',
          ),
        ),
      ).called(1);
      verify(persistenceService.getUnits()).called(1);
    });

    test(
        'showDeleteUnitDialog should call navigationService.showDialog and persistenceService.deleteUnit',
        () async {
      final IngredientsSortingModelUnit unit = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      when(
        navigationService.showDialog(
          title: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_title
              .tr(),
          content: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_content
              .tr(namedArgs: <String, String>{'unitTitle': unit.title}),
          actions: anyNamed('actions'),
        ),
      ).thenAnswer((_) => Future<void>.value());
      when(persistenceService.deleteUnit(unitId: unit.id))
          .thenAnswer((_) => TaskEither<Exception, void>.of(null));
      controller.showDeleteUnitDialog(unit: unit);
      await Future<void>.delayed(Duration.zero);
      verify(
        navigationService.showDialog(
          title: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_title
              .tr(),
          content: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_content
              .tr(namedArgs: <String, String>{'unitTitle': unit.title}),
          actions: anyNamed('actions'),
        ),
      ).called(1);
      verify(persistenceService.deleteUnit(unitId: unit.id)).called(1);
    });

    test(
        'showDeleteUnitDialog should call logger.error if an exception is thrown',
        () async {
      final IngredientsSortingModelUnit unit = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final Exception error = Exception('test');
      when(
        navigationService.showDialog(
          title: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_title
              .tr(),
          content: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_content
              .tr(namedArgs: <String, String>{'unitTitle': unit.title}),
          actions: anyNamed('actions'),
        ),
      ).thenAnswer((_) => Future<void>.value());
      when(persistenceService.deleteUnit(unitId: unit.id))
          .thenAnswer((_) => TaskEither<Exception, void>.left(error));
      controller.showDeleteUnitDialog(unit: unit);
      await Future<void>.delayed(Duration.zero);
      verify(
        logger.error(
          MyError(
            originalError: error,
            message: 'Could not delete unit with id ${unit.id}',
          ),
        ),
      ).called(1);
    });

    test(
        'showDeleteUnitDialog should update state with new units if an exception is thrown',
        () async {
      final IngredientsSortingModelUnit unit = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final Exception error = Exception('test');
      when(
        navigationService.showDialog(
          title: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_title
              .tr(),
          content: LocaleKeys
              .ui_ingredients_sorting_view_dialogs_delete_dialog_content
              .tr(namedArgs: <String, String>{'unitTitle': unit.title}),
          actions: anyNamed('actions'),
        ),
      ).thenAnswer((_) => Future<void>.value());
      when(persistenceService.deleteUnit(unitId: unit.id))
          .thenAnswer((_) => TaskEither<Exception, void>.left(error));
      controller.showDeleteUnitDialog(unit: unit);
      await Future<void>.delayed(Duration.zero);
      verify(persistenceService.getUnits()).called(1);
    });

    test('openModal should call navigationService.showModalBottomSheet', () {
      final Container child = Container();
      controller.openModal(child: child);
      // ignore: discarded_futures
      verify(navigationService.showModalBottomSheet(child: child)).called(1);
    });

    test('setUnitSelected should update state with selected unit', () {
      final IngredientsSortingModelUnit unit1 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test1',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModelUnit unit2 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test2',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModelUnit unit3 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test3',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModel initialState = IngredientsSortingModel(
        units: <IngredientsSortingModelUnit>[unit1, unit2, unit3],
      );
      controller
        ..state = initialState
        ..setUnitSelected(unit: unit2);
      expect(controller.state.units[0].selected, false);
      expect(controller.state.units[1].selected, true);
      expect(controller.state.units[2].selected, false);
    });

    test('reorderIngredientFamily should update state with reordered sorting',
        () async {
      final IngredientsSortingModelUnit unit1 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test1',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[
          IngredientsSortingModelSorting(
            type: 'test',
            iconUrl: none(),
            name: 'test',
            ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
            id: const Uuid().v4(),
            iconPath: none(),
          ),
        ],
      );
      final IngredientsSortingModelUnit unit2 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test2',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModelUnit unit3 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test3',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModel initialState = IngredientsSortingModel(
        units: <IngredientsSortingModelUnit>[unit1, unit2, unit3],
      );
      controller.state = initialState;
      const int oldIndex = 0;
      const int newIndex = 1;
      controller.reorderIngredientFamily(
        unit: unit1,
        oldIndex: oldIndex,
        newIndex: newIndex,
      );
      await Future<void>.delayed(Duration.zero);
      expect(
        controller.state.units[0].sorting[0],
        initialState.units[0].sorting[newIndex],
      );
      expect(
        controller.state.units[0].sorting[1],
        initialState.units[0].sorting[oldIndex],
      );
    });

    test('reorderIngredientFamily should call persistenceService.saveUnit',
        () async {
      final IngredientsSortingModelUnit unit1 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test1',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[
          IngredientsSortingModelSorting(
            type: 'test',
            iconUrl: none(),
            name: 'test',
            ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
            id: const Uuid().v4(),
            iconPath: none(),
          ),
        ],
      );
      final IngredientsSortingModelUnit unit2 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test2',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModelUnit unit3 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test3',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModel initialState = IngredientsSortingModel(
        units: <IngredientsSortingModelUnit>[unit1, unit2, unit3],
      );
      controller.state = initialState;
      const int oldIndex = 0;
      const int newIndex = 1;
      controller.reorderIngredientFamily(
        unit: unit1,
        oldIndex: oldIndex,
        newIndex: newIndex,
      );
      await Future<void>.delayed(Duration.zero);
      verify(persistenceService.saveUnit(unit: anyNamed('unit'))).called(1);
    });

    test(
        'reorderIngredientFamily should call logger.error if an exception is thrown',
        () async {
      final IngredientsSortingModelUnit unit1 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test1',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[
          IngredientsSortingModelSorting(
            type: 'test',
            iconUrl: none(),
            name: 'test',
            ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
            id: const Uuid().v4(),
            iconPath: none(),
          ),
        ],
      );
      final IngredientsSortingModelUnit unit2 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test2',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModelUnit unit3 = IngredientsSortingModelUnit(
        id: const Uuid().v4(),
        title: 'test3',
        selected: false,
        sorting: <IngredientsSortingModelSorting>[],
      );
      final IngredientsSortingModel initialState = IngredientsSortingModel(
        units: <IngredientsSortingModelUnit>[unit1, unit2, unit3],
      );
      controller.state = initialState;
      const int oldIndex = 0;
      const int newIndex = 1;
      final MyError error = MyError(message: 'test');
      when(persistenceService.saveUnit(unit: anyNamed('unit')))
          .thenAnswer((_) => TaskEither<MyError, void>.left(error));
      controller.reorderIngredientFamily(
        unit: unit1,
        oldIndex: oldIndex,
        newIndex: newIndex,
      );
      await Future<void>.delayed(Duration.zero);
      verify(
        logger.error(
          MyError(
            originalError: error,
            message: 'Could not save unit with id ${unit1.id}',
          ),
        ),
      ).called(1);
    });
  });
}
