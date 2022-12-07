// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:food_client/providers/providers.dart';
// import 'package:food_client/services/recipe_language_service/recipe_language_service.dart';
// import 'package:food_client/ui/home/home_controller.dart';
// import 'package:food_client/ui/home/home_model.dart';
// import 'package:food_client/ui/home/home_web_client_service.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:mockito/mockito.dart';
//
// import '../../mocks.mocks.dart';
//
// void main() {
//   late MockNavigationServiceAggregator navigationService;
//   late MockRecipeLanguageServiceAggregator languageService;
//   late MockWebClientServiceAggregator webClientService;
//
//   ProviderContainer makeProviderContainer({
//     required final MockNavigationServiceAggregator navigationService,
//     required final MockRecipeLanguageServiceAggregator languageService,
//     required final MockWebClientServiceAggregator webClientService,
//   }) {
//     final ProviderContainer container = ProviderContainer(
//       overrides: <Override>[
//         // navigationServiceProvider.overrideWithValue(navigationService),
//         recipeLanguageServiceProvider.overrideWithValue(languageService),
//       ],
//     );
//     addTearDown(container.dispose);
//     return container;
//   }
//
//   setUp(() {
//     navigationService = MockNavigationServiceAggregator();
//     languageService = MockRecipeLanguageServiceAggregator();
//     webClientService = MockWebClientServiceAggregator();
//   });
//
//   test('Information is fetched on startup', () async {
//     when(languageService.getSupportedRecipeLanguages()).thenAnswer(
//       (final _) => <String>['DE'],
//     );
//     when(
//       webClientService.fetchAllRecipes(
//         country: anyNamed('country'),
//         limit: anyNamed('limit'),
//         tags: anyNamed('tags'),
//         cuisines: anyNamed('cuisines'),
//         ingredients: anyNamed('ingredients'),
//         searchTerm: anyNamed('searchTerm'),
//       ),
//     ).thenAnswer(
//       (final _) => TaskEither<Exception, List<HomeWebClientModelRecipe>>.right(
//         <HomeWebClientModelRecipe>[],
//       ),
//     );
//     when(
//       webClientService.fetchAllTags(
//         country: anyNamed('country'),
//         take: anyNamed('take'),
//       ),
//     ).thenAnswer(
//       (final _) => TaskEither<Exception, List<HomeWebClientModelTag>>.right(
//         <HomeWebClientModelTag>[
//           const HomeWebClientModelTag(
//             id: 'id',
//             type: 'slug',
//             displayedName: 'displayedName',
//             numberOfRecipes: 0,
//           )
//         ],
//       ),
//     );
//
//     final ProviderContainer container = makeProviderContainer(
//       navigationService: navigationService,
//       languageService: languageService,
//       webClientService: webClientService,
//     );
//
//     final HomeControllerImplementation controller =
//         container.read(providers.cartControllerProvider.notifier);
//
//     expect(
//       controller.debugState,
//       equals(
//         const HomeModel(
//           allRecipes: <HomeModelRecipe>[],
//           allTags: <HomeModelFilterTag>[],
//           filteredRecipes: <HomeModelRecipe>[],
//           allCuisines: <HomeModelFilterCuisine>[],
//         ),
//       ),
//     );
//
//     verify(
//       webClientService.fetchAllRecipes(
//         country: 'DE',
//         limit: anyNamed('limit'),
//         tags: anyNamed('tags'),
//         cuisines: anyNamed('cuisines'),
//         ingredients: anyNamed('ingredients'),
//         searchTerm: anyNamed('searchTerm'),
//       ),
//     ).called(1);
//
//     await Future<void>.delayed(const Duration(seconds: 2));
//
//     expect(
//       controller.debugState,
//       equals(
//         const HomeModel(
//           allRecipes: <HomeModelRecipe>[],
//           allTags: <HomeModelFilterTag>[
//             HomeModelFilterTag(
//               id: 'id',
//               displayedName: 'displayedName',
//               isSelected: false,
//               type: '',
//               numberOfRecipes: 0,
//             )
//           ],
//           filteredRecipes: <HomeModelRecipe>[],
//           allCuisines: <HomeModelFilterCuisine>[],
//         ),
//       ),
//     );
//   });
// }
