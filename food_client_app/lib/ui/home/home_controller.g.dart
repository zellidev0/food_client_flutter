// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeControllerImplementationHash() =>
    r'94ca9ed15e20d15e3194617062978bda858a2400';

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
  late final HomePersistenceService persistenceService;
  late final HomeWebImageSizerService webImageSizerService;
  late final HomeNavigationService globalNavigationService;
  late final LoggingService logger;
  late final List<Locale> recipeLocales;

  HomeModel build({
    required HomeWebClientService webClientService,
    required HomePersistenceService persistenceService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required LoggingService logger,
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
    required HomePersistenceService persistenceService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required LoggingService logger,
    required List<Locale> recipeLocales,
  }) {
    return HomeControllerImplementationProvider(
      webClientService: webClientService,
      persistenceService: persistenceService,
      webImageSizerService: webImageSizerService,
      globalNavigationService: globalNavigationService,
      logger: logger,
      recipeLocales: recipeLocales,
    );
  }

  @override
  HomeControllerImplementationProvider getProviderOverride(
    covariant HomeControllerImplementationProvider provider,
  ) {
    return call(
      webClientService: provider.webClientService,
      persistenceService: provider.persistenceService,
      webImageSizerService: provider.webImageSizerService,
      globalNavigationService: provider.globalNavigationService,
      logger: provider.logger,
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
    required HomePersistenceService persistenceService,
    required HomeWebImageSizerService webImageSizerService,
    required HomeNavigationService globalNavigationService,
    required LoggingService logger,
    required List<Locale> recipeLocales,
  }) : this._internal(
          () => HomeControllerImplementation()
            ..webClientService = webClientService
            ..persistenceService = persistenceService
            ..webImageSizerService = webImageSizerService
            ..globalNavigationService = globalNavigationService
            ..logger = logger
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
          persistenceService: persistenceService,
          webImageSizerService: webImageSizerService,
          globalNavigationService: globalNavigationService,
          logger: logger,
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
    required this.persistenceService,
    required this.webImageSizerService,
    required this.globalNavigationService,
    required this.logger,
    required this.recipeLocales,
  }) : super.internal();

  final HomeWebClientService webClientService;
  final HomePersistenceService persistenceService;
  final HomeWebImageSizerService webImageSizerService;
  final HomeNavigationService globalNavigationService;
  final LoggingService logger;
  final List<Locale> recipeLocales;

  @override
  HomeModel runNotifierBuild(
    covariant HomeControllerImplementation notifier,
  ) {
    return notifier.build(
      webClientService: webClientService,
      persistenceService: persistenceService,
      webImageSizerService: webImageSizerService,
      globalNavigationService: globalNavigationService,
      logger: logger,
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
          ..persistenceService = persistenceService
          ..webImageSizerService = webImageSizerService
          ..globalNavigationService = globalNavigationService
          ..logger = logger
          ..recipeLocales = recipeLocales,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        webClientService: webClientService,
        persistenceService: persistenceService,
        webImageSizerService: webImageSizerService,
        globalNavigationService: globalNavigationService,
        logger: logger,
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
        other.persistenceService == persistenceService &&
        other.webImageSizerService == webImageSizerService &&
        other.globalNavigationService == globalNavigationService &&
        other.logger == logger &&
        other.recipeLocales == recipeLocales;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, webClientService.hashCode);
    hash = _SystemHash.combine(hash, persistenceService.hashCode);
    hash = _SystemHash.combine(hash, webImageSizerService.hashCode);
    hash = _SystemHash.combine(hash, globalNavigationService.hashCode);
    hash = _SystemHash.combine(hash, logger.hashCode);
    hash = _SystemHash.combine(hash, recipeLocales.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomeControllerImplementationRef
    on AutoDisposeNotifierProviderRef<HomeModel> {
  /// The parameter `webClientService` of this provider.
  HomeWebClientService get webClientService;

  /// The parameter `persistenceService` of this provider.
  HomePersistenceService get persistenceService;

  /// The parameter `webImageSizerService` of this provider.
  HomeWebImageSizerService get webImageSizerService;

  /// The parameter `globalNavigationService` of this provider.
  HomeNavigationService get globalNavigationService;

  /// The parameter `logger` of this provider.
  LoggingService get logger;

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
  HomePersistenceService get persistenceService =>
      (origin as HomeControllerImplementationProvider).persistenceService;
  @override
  HomeWebImageSizerService get webImageSizerService =>
      (origin as HomeControllerImplementationProvider).webImageSizerService;
  @override
  HomeNavigationService get globalNavigationService =>
      (origin as HomeControllerImplementationProvider).globalNavigationService;
  @override
  LoggingService get logger =>
      (origin as HomeControllerImplementationProvider).logger;
  @override
  List<Locale> get recipeLocales =>
      (origin as HomeControllerImplementationProvider).recipeLocales;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
