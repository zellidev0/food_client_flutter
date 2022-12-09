import 'package:food_client/services/navigation_service/navigation_service.dart';
import 'package:food_client/services/recipe_language_service/recipe_language_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@GenerateMocks(
  <Type>[
    WebClientServiceAggregator,
    RecipeLanguageServiceAggregator,
    NavigationServiceAggregator,
  ],
)
class GeneratedMocks {}

class MockHomeControllerImplementation extends AutoDisposeNotifier<HomeModel>
    with
        // ignore: prefer_mixin
        Mock
    implements
        HomeControllerImplementation {
  final HomeModel _model;
  MockHomeControllerImplementation(final HomeModel model) : _model = model;

  @override
  HomeModel build() => _model;

  // void openMeditation({required MeditationsModelMeditation? meditation}) {
  //   super.noSuchMethod(
  //     Invocation.method(
  //       #openMeditation,
  //       <Iterable<Object?>>[],
  //       <Symbol, Object?>{#meditation: meditation},
  //     ),
  //     returnValueForMissingStub: null,
  //   );
  // }
}
