import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_view.dart';

import '../../common.dart';
import '../../mocks.dart';

void main() {
  late HomeControllerImplementation connectControllerMock;

  Widget createTestWidget() => ProviderScope(
        overrides: <Override>[
          homeControllerImplementationProvider
              .overrideWith(() => connectControllerMock)
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: HomeView(),
          ),
        ),
      );

  testWidgets('When permission is not granted show correct ui', (
    final WidgetTester widgetTester,
  ) async {
    connectControllerMock = MockHomeControllerImplementation(
      const HomeModel(
        allRecipes: <HomeModelRecipe>[],
        allTags: <HomeModelFilterTag>[],
        filteredRecipes: <HomeModelRecipe>[],
        allCuisines: [],
      ),
    );
    await initWidgetTest(widgetTester: widgetTester);
    await widgetTester.pumpWidget(createTestWidget());
    expect(
      find.byType(ChoiceChip),
      findsOneWidget,
    );
  });
}
