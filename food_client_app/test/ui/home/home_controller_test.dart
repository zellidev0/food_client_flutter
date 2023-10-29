// ignore_for_file: unreachable_from_main, unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        recipeLocales: anyNamed('recipeLocales'),
        take: anyNamed('take'),
      ),
    ).thenAnswer(
      (final _) => TaskEither<Exception, List<HomeWebClientModelCuisine>>.of(
        initialFetchVariant.currentValue!.cuisines,
      ),
    );
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
