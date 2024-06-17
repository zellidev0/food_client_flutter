// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainControllerImplementationHash() =>
    r'2c9a9f13b1f02837797b024ca19edbdd296a9fe2';

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

abstract class _$MainControllerImplementation
    extends BuildlessAutoDisposeNotifier<MainModel> {
  late final MainNavigationService navigationService;

  MainModel build({
    required MainNavigationService navigationService,
  });
}

/// See also [MainControllerImplementation].
@ProviderFor(MainControllerImplementation)
const mainControllerImplementationProvider =
    MainControllerImplementationFamily();

/// See also [MainControllerImplementation].
class MainControllerImplementationFamily extends Family<MainModel> {
  /// See also [MainControllerImplementation].
  const MainControllerImplementationFamily();

  /// See also [MainControllerImplementation].
  MainControllerImplementationProvider call({
    required MainNavigationService navigationService,
  }) {
    return MainControllerImplementationProvider(
      navigationService: navigationService,
    );
  }

  @override
  MainControllerImplementationProvider getProviderOverride(
    covariant MainControllerImplementationProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
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
  String? get name => r'mainControllerImplementationProvider';
}

/// See also [MainControllerImplementation].
class MainControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<MainControllerImplementation,
        MainModel> {
  /// See also [MainControllerImplementation].
  MainControllerImplementationProvider({
    required MainNavigationService navigationService,
  }) : this._internal(
          () => MainControllerImplementation()
            ..navigationService = navigationService,
          from: mainControllerImplementationProvider,
          name: r'mainControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mainControllerImplementationHash,
          dependencies: MainControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              MainControllerImplementationFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  MainControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final MainNavigationService navigationService;

  @override
  MainModel runNotifierBuild(
    covariant MainControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(MainControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: MainControllerImplementationProvider._internal(
        () => create()..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MainControllerImplementation, MainModel>
      createElement() {
    return _MainControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MainControllerImplementationProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MainControllerImplementationRef
    on AutoDisposeNotifierProviderRef<MainModel> {
  /// The parameter `navigationService` of this provider.
  MainNavigationService get navigationService;
}

class _MainControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<MainControllerImplementation,
        MainModel> with MainControllerImplementationRef {
  _MainControllerImplementationProviderElement(super.provider);

  @override
  MainNavigationService get navigationService =>
      (origin as MainControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
