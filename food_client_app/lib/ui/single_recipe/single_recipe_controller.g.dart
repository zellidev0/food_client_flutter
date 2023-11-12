// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_recipe_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$singleRecipeControllerImplementationHash() =>
    r'6425b34a56b08ed94c7a478af716fbe41fd3e00a';

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

abstract class _$SingleRecipeControllerImplementation
    extends BuildlessAutoDisposeNotifier<SingleRecipeModel> {
  late final String recipeId;
  late final SingleRecipeWebClientService webClientService;
  late final SingleRecipeWebImageSizerService webImageSizerService;
  late final SingleRecipeNavigationService navigationService;
  late final SingleRecipePersistenceService persistenceService;
  late final LoggingService logger;

  SingleRecipeModel build({
    required String recipeId,
    required SingleRecipeWebClientService webClientService,
    required SingleRecipeWebImageSizerService webImageSizerService,
    required SingleRecipeNavigationService navigationService,
    required SingleRecipePersistenceService persistenceService,
    required LoggingService logger,
  });
}

/// See also [SingleRecipeControllerImplementation].
@ProviderFor(SingleRecipeControllerImplementation)
const singleRecipeControllerImplementationProvider =
    SingleRecipeControllerImplementationFamily();

/// See also [SingleRecipeControllerImplementation].
class SingleRecipeControllerImplementationFamily
    extends Family<SingleRecipeModel> {
  /// See also [SingleRecipeControllerImplementation].
  const SingleRecipeControllerImplementationFamily();

  /// See also [SingleRecipeControllerImplementation].
  SingleRecipeControllerImplementationProvider call({
    required String recipeId,
    required SingleRecipeWebClientService webClientService,
    required SingleRecipeWebImageSizerService webImageSizerService,
    required SingleRecipeNavigationService navigationService,
    required SingleRecipePersistenceService persistenceService,
    required LoggingService logger,
  }) {
    return SingleRecipeControllerImplementationProvider(
      recipeId: recipeId,
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      navigationService: navigationService,
      persistenceService: persistenceService,
      logger: logger,
    );
  }

  @override
  SingleRecipeControllerImplementationProvider getProviderOverride(
    covariant SingleRecipeControllerImplementationProvider provider,
  ) {
    return call(
      recipeId: provider.recipeId,
      webClientService: provider.webClientService,
      webImageSizerService: provider.webImageSizerService,
      navigationService: provider.navigationService,
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
  String? get name => r'singleRecipeControllerImplementationProvider';
}

/// See also [SingleRecipeControllerImplementation].
class SingleRecipeControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        SingleRecipeControllerImplementation, SingleRecipeModel> {
  /// See also [SingleRecipeControllerImplementation].
  SingleRecipeControllerImplementationProvider({
    required String recipeId,
    required SingleRecipeWebClientService webClientService,
    required SingleRecipeWebImageSizerService webImageSizerService,
    required SingleRecipeNavigationService navigationService,
    required SingleRecipePersistenceService persistenceService,
    required LoggingService logger,
  }) : this._internal(
          () => SingleRecipeControllerImplementation()
            ..recipeId = recipeId
            ..webClientService = webClientService
            ..webImageSizerService = webImageSizerService
            ..navigationService = navigationService
            ..persistenceService = persistenceService
            ..logger = logger,
          from: singleRecipeControllerImplementationProvider,
          name: r'singleRecipeControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleRecipeControllerImplementationHash,
          dependencies:
              SingleRecipeControllerImplementationFamily._dependencies,
          allTransitiveDependencies: SingleRecipeControllerImplementationFamily
              ._allTransitiveDependencies,
          recipeId: recipeId,
          webClientService: webClientService,
          webImageSizerService: webImageSizerService,
          navigationService: navigationService,
          persistenceService: persistenceService,
          logger: logger,
        );

  SingleRecipeControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.recipeId,
    required this.webClientService,
    required this.webImageSizerService,
    required this.navigationService,
    required this.persistenceService,
    required this.logger,
  }) : super.internal();

  final String recipeId;
  final SingleRecipeWebClientService webClientService;
  final SingleRecipeWebImageSizerService webImageSizerService;
  final SingleRecipeNavigationService navigationService;
  final SingleRecipePersistenceService persistenceService;
  final LoggingService logger;

  @override
  SingleRecipeModel runNotifierBuild(
    covariant SingleRecipeControllerImplementation notifier,
  ) {
    return notifier.build(
      recipeId: recipeId,
      webClientService: webClientService,
      webImageSizerService: webImageSizerService,
      navigationService: navigationService,
      persistenceService: persistenceService,
      logger: logger,
    );
  }

  @override
  Override overrideWith(
      SingleRecipeControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: SingleRecipeControllerImplementationProvider._internal(
        () => create()
          ..recipeId = recipeId
          ..webClientService = webClientService
          ..webImageSizerService = webImageSizerService
          ..navigationService = navigationService
          ..persistenceService = persistenceService
          ..logger = logger,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        recipeId: recipeId,
        webClientService: webClientService,
        webImageSizerService: webImageSizerService,
        navigationService: navigationService,
        persistenceService: persistenceService,
        logger: logger,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SingleRecipeControllerImplementation,
      SingleRecipeModel> createElement() {
    return _SingleRecipeControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleRecipeControllerImplementationProvider &&
        other.recipeId == recipeId &&
        other.webClientService == webClientService &&
        other.webImageSizerService == webImageSizerService &&
        other.navigationService == navigationService &&
        other.persistenceService == persistenceService &&
        other.logger == logger;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipeId.hashCode);
    hash = _SystemHash.combine(hash, webClientService.hashCode);
    hash = _SystemHash.combine(hash, webImageSizerService.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, persistenceService.hashCode);
    hash = _SystemHash.combine(hash, logger.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleRecipeControllerImplementationRef
    on AutoDisposeNotifierProviderRef<SingleRecipeModel> {
  /// The parameter `recipeId` of this provider.
  String get recipeId;

  /// The parameter `webClientService` of this provider.
  SingleRecipeWebClientService get webClientService;

  /// The parameter `webImageSizerService` of this provider.
  SingleRecipeWebImageSizerService get webImageSizerService;

  /// The parameter `navigationService` of this provider.
  SingleRecipeNavigationService get navigationService;

  /// The parameter `persistenceService` of this provider.
  SingleRecipePersistenceService get persistenceService;

  /// The parameter `logger` of this provider.
  LoggingService get logger;
}

class _SingleRecipeControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<
        SingleRecipeControllerImplementation,
        SingleRecipeModel> with SingleRecipeControllerImplementationRef {
  _SingleRecipeControllerImplementationProviderElement(super.provider);

  @override
  String get recipeId =>
      (origin as SingleRecipeControllerImplementationProvider).recipeId;
  @override
  SingleRecipeWebClientService get webClientService =>
      (origin as SingleRecipeControllerImplementationProvider).webClientService;
  @override
  SingleRecipeWebImageSizerService get webImageSizerService =>
      (origin as SingleRecipeControllerImplementationProvider)
          .webImageSizerService;
  @override
  SingleRecipeNavigationService get navigationService =>
      (origin as SingleRecipeControllerImplementationProvider)
          .navigationService;
  @override
  SingleRecipePersistenceService get persistenceService =>
      (origin as SingleRecipeControllerImplementationProvider)
          .persistenceService;
  @override
  LoggingService get logger =>
      (origin as SingleRecipeControllerImplementationProvider).logger;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
