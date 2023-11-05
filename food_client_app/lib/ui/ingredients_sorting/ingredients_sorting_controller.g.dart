// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_sorting_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ingredientsSortingControllerImplementationHash() =>
    r'77dbac363aad1f69d95009577638e192621ca6dd';

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

abstract class _$IngredientsSortingControllerImplementation
    extends BuildlessAutoDisposeNotifier<IngredientsSortingModel> {
  late final IngredientsSortingNavigationService navigationService;
  late final IngredientsSortingWebClientService webClientService;
  late final IngredientsSortingWebImageSizerService webImageSizerService;
  late final IngredientsSortingPersistenceService persistenceService;
  late final LoggingService logger;

  IngredientsSortingModel build({
    required IngredientsSortingNavigationService navigationService,
    required IngredientsSortingWebClientService webClientService,
    required IngredientsSortingWebImageSizerService webImageSizerService,
    required IngredientsSortingPersistenceService persistenceService,
    required LoggingService logger,
  });
}

/// See also [IngredientsSortingControllerImplementation].
@ProviderFor(IngredientsSortingControllerImplementation)
const ingredientsSortingControllerImplementationProvider =
    IngredientsSortingControllerImplementationFamily();

/// See also [IngredientsSortingControllerImplementation].
class IngredientsSortingControllerImplementationFamily
    extends Family<IngredientsSortingModel> {
  /// See also [IngredientsSortingControllerImplementation].
  const IngredientsSortingControllerImplementationFamily();

  /// See also [IngredientsSortingControllerImplementation].
  IngredientsSortingControllerImplementationProvider call({
    required IngredientsSortingNavigationService navigationService,
    required IngredientsSortingWebClientService webClientService,
    required IngredientsSortingWebImageSizerService webImageSizerService,
    required IngredientsSortingPersistenceService persistenceService,
    required LoggingService logger,
  }) {
    return IngredientsSortingControllerImplementationProvider(
      navigationService: navigationService,
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      persistenceService: persistenceService,
      logger: logger,
    );
  }

  @override
  IngredientsSortingControllerImplementationProvider getProviderOverride(
    covariant IngredientsSortingControllerImplementationProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      webClientService: provider.webClientService,
      webImageSizerService: provider.webImageSizerService,
      persistenceService: provider.persistenceService,
      logger: provider.logger,
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
  String? get name => r'ingredientsSortingControllerImplementationProvider';
}

/// See also [IngredientsSortingControllerImplementation].
class IngredientsSortingControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        IngredientsSortingControllerImplementation, IngredientsSortingModel> {
  /// See also [IngredientsSortingControllerImplementation].
  IngredientsSortingControllerImplementationProvider({
    required IngredientsSortingNavigationService navigationService,
    required IngredientsSortingWebClientService webClientService,
    required IngredientsSortingWebImageSizerService webImageSizerService,
    required IngredientsSortingPersistenceService persistenceService,
    required LoggingService logger,
  }) : this._internal(
          () => IngredientsSortingControllerImplementation()
            ..navigationService = navigationService
            ..webClientService = webClientService
            ..webImageSizerService = webImageSizerService
            ..persistenceService = persistenceService
            ..logger = logger,
          from: ingredientsSortingControllerImplementationProvider,
          name: r'ingredientsSortingControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ingredientsSortingControllerImplementationHash,
          dependencies:
              IngredientsSortingControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              IngredientsSortingControllerImplementationFamily
                  ._allTransitiveDependencies,
          navigationService: navigationService,
          webClientService: webClientService,
          webImageSizerService: webImageSizerService,
          persistenceService: persistenceService,
          logger: logger,
        );

  IngredientsSortingControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.webClientService,
    required this.webImageSizerService,
    required this.persistenceService,
    required this.logger,
  }) : super.internal();

  final IngredientsSortingNavigationService navigationService;
  final IngredientsSortingWebClientService webClientService;
  final IngredientsSortingWebImageSizerService webImageSizerService;
  final IngredientsSortingPersistenceService persistenceService;
  final LoggingService logger;

  @override
  IngredientsSortingModel runNotifierBuild(
    covariant IngredientsSortingControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      persistenceService: persistenceService,
      logger: logger,
    );
  }

  @override
  Override overrideWith(
      IngredientsSortingControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: IngredientsSortingControllerImplementationProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..webClientService = webClientService
          ..webImageSizerService = webImageSizerService
          ..persistenceService = persistenceService
          ..logger = logger,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        webClientService: webClientService,
        webImageSizerService: webImageSizerService,
        persistenceService: persistenceService,
        logger: logger,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<IngredientsSortingControllerImplementation,
      IngredientsSortingModel> createElement() {
    return _IngredientsSortingControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IngredientsSortingControllerImplementationProvider &&
        other.navigationService == navigationService &&
        other.webClientService == webClientService &&
        other.webImageSizerService == webImageSizerService &&
        other.persistenceService == persistenceService &&
        other.logger == logger;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, webClientService.hashCode);
    hash = _SystemHash.combine(hash, webImageSizerService.hashCode);
    hash = _SystemHash.combine(hash, persistenceService.hashCode);
    hash = _SystemHash.combine(hash, logger.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IngredientsSortingControllerImplementationRef
    on AutoDisposeNotifierProviderRef<IngredientsSortingModel> {
  /// The parameter `navigationService` of this provider.
  IngredientsSortingNavigationService get navigationService;

  /// The parameter `webClientService` of this provider.
  IngredientsSortingWebClientService get webClientService;

  /// The parameter `webImageSizerService` of this provider.
  IngredientsSortingWebImageSizerService get webImageSizerService;

  /// The parameter `persistenceService` of this provider.
  IngredientsSortingPersistenceService get persistenceService;

  /// The parameter `logger` of this provider.
  LoggingService get logger;
}

class _IngredientsSortingControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<
        IngredientsSortingControllerImplementation, IngredientsSortingModel>
    with IngredientsSortingControllerImplementationRef {
  _IngredientsSortingControllerImplementationProviderElement(super.provider);

  @override
  IngredientsSortingNavigationService get navigationService =>
      (origin as IngredientsSortingControllerImplementationProvider)
          .navigationService;
  @override
  IngredientsSortingWebClientService get webClientService =>
      (origin as IngredientsSortingControllerImplementationProvider)
          .webClientService;
  @override
  IngredientsSortingWebImageSizerService get webImageSizerService =>
      (origin as IngredientsSortingControllerImplementationProvider)
          .webImageSizerService;
  @override
  IngredientsSortingPersistenceService get persistenceService =>
      (origin as IngredientsSortingControllerImplementationProvider)
          .persistenceService;
  @override
  LoggingService get logger =>
      (origin as IngredientsSortingControllerImplementationProvider).logger;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
