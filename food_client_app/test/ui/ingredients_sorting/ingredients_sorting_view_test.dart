import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_client/commons/empty_view_content.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_model.dart';
import 'package:food_client/ui/ingredients_sorting/ingredients_sorting_view.dart';
import 'package:food_client/ui/ingredients_sorting/widgets/ingredients_sorting_card_item.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

void main() {
  late MockIngredientsSortingController controller;
  late IngredientsSortingModel model;

  Future<void> buildAndPumpWidget(WidgetTester tester) async =>
      tester.pumpWidget(
        MaterialApp(
          home: IngredientsSortingView(
            controller: controller,
            model: model,
          ),
        ),
      );

  setUp(() {
    controller = MockIngredientsSortingController();
    model = const IngredientsSortingModel(
      units: <IngredientsSortingModelUnit>[
        IngredientsSortingModelUnit(
          id: '1',
          title: 'Unit 1',
          sorting: <IngredientsSortingModelSorting>[],
          selected: true,
        ),
        IngredientsSortingModelUnit(
          id: '2',
          title: 'Unit 2',
          sorting: <IngredientsSortingModelSorting>[],
          selected: false,
        ),
      ],
    );
  });

  testWidgets('Pressing the plus 1 button opens a modal',
      (final WidgetTester tester) async {
    await buildAndPumpWidget(tester);

    final Finder plusButtonFinder = find.byIcon(Icons.plus_one);
    expect(plusButtonFinder, findsOneWidget);

    await tester.tap(plusButtonFinder);
    await tester.pumpAndSettle();

    verify(controller.openModal(child: anyNamed('child'))).called(1);
  });

  testWidgets('Holding an existing unit opens the delete dialog',
      (final WidgetTester tester) async {
    await buildAndPumpWidget(tester);

    final Finder unitFinder = find.byType(IngredientsSortingCardItem).first;
    expect(unitFinder, findsOneWidget);

    await tester.longPress(unitFinder);
    await tester.pumpAndSettle();

    verify(controller.showDeleteUnitDialog(unit: anyNamed('unit'))).called(1);
  });

  testWidgets('Pressing the back button calls the controller',
      (final WidgetTester tester) async {
    await buildAndPumpWidget(tester);

    final Finder backButtonFinder = find.byIcon(Icons.arrow_back);
    expect(backButtonFinder, findsOneWidget);

    await tester.tap(backButtonFinder);
    await tester.pumpAndSettle();

    verify(controller.goBack()).called(1);
  });

  testWidgets('Empty model units show emptyView content with correct message',
      (final WidgetTester tester) async {
    model = const IngredientsSortingModel(
      units: <IngredientsSortingModelUnit>[],
    );

    await buildAndPumpWidget(tester);

    final Finder emptyViewFinder = find.byType(EmptyViewContent);
    expect(emptyViewFinder, findsOneWidget);
  });

  testWidgets('Ingredients list is displayed correctly',
      (final WidgetTester tester) async {
    model = IngredientsSortingModel(
      units: <IngredientsSortingModelUnit>[
        IngredientsSortingModelUnit(
          id: '1',
          title: 'Unit 1',
          sorting: <IngredientsSortingModelSorting>[
            IngredientsSortingModelSorting(
              id: '1',
              name: 'Ingredient 1',
              iconUrl: none(),
              type: '',
              iconPath: none(),
              ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
            ),
            IngredientsSortingModelSorting(
              id: '2',
              name: 'Ingredient 2',
              iconUrl: none(),
              type: '',
              iconPath: none(),
              ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
            ),
          ],
          selected: true,
        ),
      ],
    );

    await buildAndPumpWidget(tester);

    final Finder ingredientsListFinder = find.byType(ReorderableListView);
    expect(ingredientsListFinder, findsOneWidget);

    final ReorderableListView reorderableListView =
        tester.widget(ingredientsListFinder) as ReorderableListView;

    expect(reorderableListView.itemCount, equals(2));

    final ListTile firstListTile = tester.widget(
      find.descendant(
        of: ingredientsListFinder,
        matching: find.byType(ListTile).first,
      ),
    ) as ListTile;

    expect((firstListTile.title as Text?)!.data, equals('Ingredient 1'));
    expect(firstListTile.leading, isA<SizedBox>());
  });

  testWidgets(
      'Reordering an ingredient family calls the correct controller method',
      (final WidgetTester tester) async {
    final MockIngredientsSortingController controller =
        MockIngredientsSortingController();
    final IngredientsSortingModelUnit unit = IngredientsSortingModelUnit(
      id: '1',
      title: 'Unit 1',
      sorting: <IngredientsSortingModelSorting>[
        IngredientsSortingModelSorting(
          id: '1',
          name: 'Ingredient 1',
          iconUrl: none(),
          type: '',
          iconPath: none(),
          ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
        ),
        IngredientsSortingModelSorting(
          id: '2',
          name: 'Ingredient 2',
          iconUrl: none(),
          type: '',
          iconPath: none(),
          ingredientFamilies: <IngredientsSortingModelIngredientFamily>[],
        ),
      ],
      selected: true,
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: IngredientsSortingView(
            controller: controller,
            model: IngredientsSortingModel(
              units: <IngredientsSortingModelUnit>[unit],
            ),
          ),
        ),
      ),
    );

    final ReorderableListView reorderableListView =
        tester.widget(find.byType(ReorderableListView));

    reorderableListView.onReorder(0, 1);

    verify(
      controller.reorderIngredientFamily(
        unit: unit,
        oldIndex: 0,
        newIndex: 1,
      ),
    ).called(1);
  });
}
