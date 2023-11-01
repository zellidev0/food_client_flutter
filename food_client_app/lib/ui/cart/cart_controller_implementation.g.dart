// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartControllerImplementationHash() =>
    r'fba9e2f947c1d684121468373bcbcbff0fe501fb';

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

abstract class _$CartControllerImplementation
    extends BuildlessAutoDisposeNotifier<CartModel> {
  late final CartNavigationService navigationService;
  late final CartPersistenceService persistenceService;
  late final CartWebImageSizerService imageSizerService;
  late final LoggingService logger;
  late final bool combinedIngredients;

  CartModel build({
    required CartNavigationService navigationService,
    required CartPersistenceService persistenceService,
    required CartWebImageSizerService imageSizerService,
    required LoggingService logger,
    required bool combinedIngredients,
  });
}

/// See also [CartControllerImplementation].
@ProviderFor(CartControllerImplementation)
const cartControllerImplementationProvider =
    CartControllerImplementationFamily();

/// See also [CartControllerImplementation].
class CartControllerImplementationFamily extends Family<CartModel> {
  /// See also [CartControllerImplementation].
  const CartControllerImplementationFamily();

  /// See also [CartControllerImplementation].
  CartControllerImplementationProvider call({
    required CartNavigationService navigationService,
    required CartPersistenceService persistenceService,
    required CartWebImageSizerService imageSizerService,
    required LoggingService logger,
    required bool combinedIngredients,
  }) {
    return CartControllerImplementationProvider(
      navigationService: navigationService,
      persistenceService: persistenceService,
      imageSizerService: imageSizerService,
      logger: logger,
      combinedIngredients: combinedIngredients,
    );
  }

  @override
  CartControllerImplementationProvider getProviderOverride(
    covariant CartControllerImplementationProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      persistenceService: provider.persistenceService,
      imageSizerService: provider.imageSizerService,
      logger: provider.logger,
      combinedIngredients: provider.combinedIngredients,
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
  String? get name => r'cartControllerImplementationProvider';
}

/// See also [CartControllerImplementation].
class CartControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<CartControllerImplementation,
        CartModel> {
  /// See also [CartControllerImplementation].
  CartControllerImplementationProvider({
    required CartNavigationService navigationService,
    required CartPersistenceService persistenceService,
    required CartWebImageSizerService imageSizerService,
    required LoggingService logger,
    required bool combinedIngredients,
  }) : this._internal(
          () => CartControllerImplementation()
            ..navigationService = navigationService
            ..persistenceService = persistenceService
            ..imageSizerService = imageSizerService
            ..logger = logger
            ..combinedIngredients = combinedIngredients,
          from: cartControllerImplementationProvider,
          name: r'cartControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cartControllerImplementationHash,
          dependencies: CartControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              CartControllerImplementationFamily._allTransitiveDependencies,
          navigationService: navigationService,
          persistenceService: persistenceService,
          imageSizerService: imageSizerService,
          logger: logger,
          combinedIngredients: combinedIngredients,
        );

  CartControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.persistenceService,
    required this.imageSizerService,
    required this.logger,
    required this.combinedIngredients,
  }) : super.internal();

  final CartNavigationService navigationService;
  final CartPersistenceService persistenceService;
  final CartWebImageSizerService imageSizerService;
  final LoggingService logger;
  final bool combinedIngredients;

  @override
  CartModel runNotifierBuild(
    covariant CartControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      persistenceService: persistenceService,
      imageSizerService: imageSizerService,
      logger: logger,
      combinedIngredients: combinedIngredients,
    );
  }

  @override
  Override overrideWith(CartControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: CartControllerImplementationProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..persistenceService = persistenceService
          ..imageSizerService = imageSizerService
          ..logger = logger
          ..combinedIngredients = combinedIngredients,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        persistenceService: persistenceService,
        imageSizerService: imageSizerService,
        logger: logger,
        combinedIngredients: combinedIngredients,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CartControllerImplementation, CartModel>
      createElement() {
    return _CartControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CartControllerImplementationProvider &&
        other.navigationService == navigationService &&
        other.persistenceService == persistenceService &&
        other.imageSizerService == imageSizerService &&
        other.logger == logger &&
        other.combinedIngredients == combinedIngredients;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, persistenceService.hashCode);
    hash = _SystemHash.combine(hash, imageSizerService.hashCode);
    hash = _SystemHash.combine(hash, logger.hashCode);
    hash = _SystemHash.combine(hash, combinedIngredients.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CartControllerImplementationRef
    on AutoDisposeNotifierProviderRef<CartModel> {
  /// The parameter `navigationService` of this provider.
  CartNavigationService get navigationService;

  /// The parameter `persistenceService` of this provider.
  CartPersistenceService get persistenceService;

  /// The parameter `imageSizerService` of this provider.
  CartWebImageSizerService get imageSizerService;

  /// The parameter `logger` of this provider.
  LoggingService get logger;

  /// The parameter `combinedIngredients` of this provider.
  bool get combinedIngredients;
}

class _CartControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<CartControllerImplementation,
        CartModel> with CartControllerImplementationRef {
  _CartControllerImplementationProviderElement(super.provider);

  @override
  CartNavigationService get navigationService =>
      (origin as CartControllerImplementationProvider).navigationService;
  @override
  CartPersistenceService get persistenceService =>
      (origin as CartControllerImplementationProvider).persistenceService;
  @override
  CartWebImageSizerService get imageSizerService =>
      (origin as CartControllerImplementationProvider).imageSizerService;
  @override
  LoggingService get logger =>
      (origin as CartControllerImplementationProvider).logger;
  @override
  bool get combinedIngredients =>
      (origin as CartControllerImplementationProvider).combinedIngredients;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
