// ignore_for_file: unreachable_from_main

import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_client/ui/home/home_controller.dart';
import 'package:food_client/ui/home/home_model.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

part 'home_controller_test.freezed.dart';

void main() {
  late MockHomeWebClientService webClientService;
  late MockHomeWebImageSizerService webImageSizerService;
  late MockHomeNavigationService navigationService;

  setUp(() {
    webClientService = MockHomeWebClientService();
    webImageSizerService = MockHomeWebImageSizerService();
    navigationService = MockHomeNavigationService();
  });

  final ValueVariant<InitialFetchVariant> initialFetchVariant =
      ValueVariant<InitialFetchVariant>(
    <InitialFetchVariant>{
      InitialFetchVariant(
        cuisines: exampleCuisines,
        tags: <HomeWebClientModelTag>[],
      ),
      InitialFetchVariant(
        cuisines: <HomeWebClientModelCuisine>[],
        tags: exampleTags,
      ),
      const InitialFetchVariant(
        cuisines: <HomeWebClientModelCuisine>[],
        tags: <HomeWebClientModelTag>[],
      ),
      InitialFetchVariant(cuisines: exampleCuisines, tags: exampleTags),
    },
  );

  testWidgets('On creation initial tags and cusines are fetched',
      variant: initialFetchVariant, (final _) async {
    when(
      webClientService.fetchAllTags(
        take: anyNamed('take'),
        recipeLocales: anyNamed('recipeLocales'),
      ),
    ).thenAnswer(
      (final _) => TaskEither<Exception, List<HomeWebClientModelTag>>.of(
        initialFetchVariant.currentValue!.tags,
      ),
    );
    when(
      webClientService.fetchAllCuisines(
        country: anyNamed('country'),
        take: anyNamed('take'),
      ),
    ).thenAnswer(
      (final _) => TaskEither<Exception, List<HomeWebClientModelCuisine>>.of(
        initialFetchVariant.currentValue!.cuisines,
      ),
    );

    final HomeControllerImplementation controller =
        HomeControllerImplementation(
      HomeModel(
        pagingController: PagingController<int, HomeModelRecipe>(
          firstPageKey: 0,
        ),
        allTags: <HomeModelFilterTag>[],
        allCuisines: <HomeModelFilterCuisine>[],
        recipeLocales: <Locale>[],
      ),
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      globalNavigationService: navigationService,
    );

    await controller.init().run();

    expect(controller.debugState.allTags, isNotEmpty);
    expect(controller.debugState.allCuisines, isNotEmpty);
  });
}

@freezed
class InitialFetchVariant with _$InitialFetchVariant {
  const factory InitialFetchVariant({
    required final List<HomeWebClientModelCuisine> cuisines,
    required final List<HomeWebClientModelTag> tags,
  }) = _InitialFetchVariant;
}

final List<HomeWebClientModelCuisine> exampleCuisines =
    <HomeWebClientModelCuisine>[
  HomeWebClientModelCuisine(
    id: 'id',
    slug: 'slug',
    countryCode: some('en'),
    iconPath: some(Uri()),
    displayedName: 'name',
    numberOfRecipes: some(0),
  ),
];

final List<HomeWebClientModelTag> exampleTags = <HomeWebClientModelTag>[
  HomeWebClientModelTag(
    id: 'id',
    displayedName: 'name',
    type: '',
    numberOfRecipes: some(0),
  ),
];
