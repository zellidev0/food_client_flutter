// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeControllerImplementationHash() =>
    r'70761136cd55ee1275464af87dc84380511296a0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomeControllerImplementation
    extends BuildlessAutoDisposeNotifier<HomeModel> {
  late final HomeWebClientService webClientService;
  late final HomeWebImageSizerService webImageSizerService;
  late final HomeNavigationService globalNavigationService;
  late final HomeLoggingService loggingService;
  late final List<Locale> recipeLocales;

  HomeModel build({
    required HomeWebClientService webClientService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required HomeLoggingService loggingService,
    required List<Locale> recipeLocales,
  });
}

/// See also [HomeControllerImplementation].
@ProviderFor(HomeControllerImplementation)
const homeControllerImplementationProvider =
    HomeControllerImplementationFamily();

/// See also [HomeControllerImplementation].
class HomeControllerImplementationFamily extends Family<HomeModel> {
  /// See also [HomeControllerImplementation].
  const HomeControllerImplementationFamily();

  /// See also [HomeControllerImplementation].
  HomeControllerImplementationProvider call({
    required HomeWebClientService webClientService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required HomeLoggingService loggingService,
    required List<Locale> recipeLocales,
  }) {
    return HomeControllerImplementationProvider(
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      globalNavigationService: globalNavigationService,
      loggingService: loggingService,
      recipeLocales: recipeLocales,
    );
  }

  @override
  HomeControllerImplementationProvider getProviderOverride(
    covariant HomeControllerImplementationProvider provider,
  ) {
    return call(
      webClientService: provider.webClientService,
      webImageSizerService: provider.webImageSizerService,
      globalNavigationService: provider.globalNavigationService,
      loggingService: provider.loggingService,
      recipeLocales: provider.recipeLocales,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeControllerImplementationProvider';
}

/// See also [HomeControllerImplementation].
class HomeControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<HomeControllerImplementation,
        HomeModel> {
  /// See also [HomeControllerImplementation].
  HomeControllerImplementationProvider({
    required HomeWebClientService webClientService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required HomeLoggingService loggingService,
    required List<Locale> recipeLocales,
  }) : this._internal(
          () => HomeControllerImplementation()
            ..webClientService = webClientService
            ..webImageSizerService = webImageSizerService
            ..globalNavigationService = globalNavigationService
            ..loggingService = loggingService
            ..recipeLocales = recipeLocales,
          from: homeControllerImplementationProvider,
          name: r'homeControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeControllerImplementationHash,
          dependencies: HomeControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              HomeControllerImplementationFamily._allTransitiveDependencies,
          webClientService: webClientService,
          webImageSizerService: webImageSizerService,
          globalNavigationService: globalNavigationService,
          loggingService: loggingService,
          recipeLocales: recipeLocales,
        );

  HomeControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.webClientService,
    required this.webImageSizerService,
    required this.globalNavigationService,
    required this.loggingService,
    required this.recipeLocales,
  }) : super.internal();

  final HomeWebClientService webClientService;
  final HomeWebImageSizerService webImageSizerService;
  final HomeNavigationService globalNavigationService;
  final HomeLoggingService loggingService;
  final List<Locale> recipeLocales;

  @override
  HomeModel runNotifierBuild(
    covariant HomeControllerImplementation notifier,
  ) {
    return notifier.build(
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      globalNavigationService: globalNavigationService,
      loggingService: loggingService,
      recipeLocales: recipeLocales,
    );
  }

  @override
  Override overrideWith(HomeControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeControllerImplementationProvider._internal(
        () => create()
          ..webClientService = webClientService
          ..webImageSizerService = webImageSizerService
          ..globalNavigationService = globalNavigationService
          ..loggingService = loggingService
          ..recipeLocales = recipeLocales,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        webClientService: webClientService,
        webImageSizerService: webImageSizerService,
        globalNavigationService: globalNavigationService,
        loggingService: loggingService,
        recipeLocales: recipeLocales,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<HomeControllerImplementation, HomeModel>
      createElement() {
    return _HomeControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeControllerImplementationProvider &&
        other.webClientService == webClientService &&
        other.webImageSizerService == webImageSizerService &&
        other.globalNavigationService == globalNavigationService &&
        other.loggingService == loggingService &&
        other.recipeLocales == recipeLocales;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, webClientService.hashCode);
    hash = _SystemHash.combine(hash, webImageSizerService.hashCode);
    hash = _SystemHash.combine(hash, globalNavigationService.hashCode);
    hash = _SystemHash.combine(hash, loggingService.hashCode);
    hash = _SystemHash.combine(hash, recipeLocales.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeControllerImplementationRef
    on AutoDisposeNotifierProviderRef<HomeModel> {
  /// The parameter `webClientService` of this provider.
  HomeWebClientService get webClientService;

  /// The parameter `webImageSizerService` of this provider.
  HomeWebImageSizerService get webImageSizerService;

  /// The parameter `globalNavigationService` of this provider.
  HomeNavigationService get globalNavigationService;

  /// The parameter `loggingService` of this provider.
  HomeLoggingService get loggingService;

  /// The parameter `recipeLocales` of this provider.
  List<Locale> get recipeLocales;
}

class _HomeControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<HomeControllerImplementation,
        HomeModel> with HomeControllerImplementationRef {
  _HomeControllerImplementationProviderElement(super.provider);

  @override
  HomeWebClientService get webClientService =>
      (origin as HomeControllerImplementationProvider).webClientService;
  @override
  HomeWebImageSizerService get webImageSizerService =>
      (origin as HomeControllerImplementationProvider).webImageSizerService;
  @override
  HomeNavigationService get globalNavigationService =>
      (origin as HomeControllerImplementationProvider).globalNavigationService;
  @override
  HomeLoggingService get loggingService =>
      (origin as HomeControllerImplementationProvider).loggingService;
  @override
  List<Locale> get recipeLocales =>
      (origin as HomeControllerImplementationProvider).recipeLocales;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
