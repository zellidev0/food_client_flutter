// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$historyControllerImplementationHash() =>
    r'87378765caa6e935b1e3851bfc1011199ec0aadf';

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

abstract class _$HistoryControllerImplementation
    extends BuildlessAutoDisposeNotifier<HistoryModel> {
  late final HistoryPersistenceService persistenceService;
  late final HistoryNavigationService navigationService;
  late final LoggingService logger;

  HistoryModel build({
    required HistoryPersistenceService persistenceService,
    required HistoryNavigationService navigationService,
    required LoggingService logger,
  });
}

/// See also [HistoryControllerImplementation].
@ProviderFor(HistoryControllerImplementation)
const historyControllerImplementationProvider =
    HistoryControllerImplementationFamily();

/// See also [HistoryControllerImplementation].
class HistoryControllerImplementationFamily extends Family<HistoryModel> {
  /// See also [HistoryControllerImplementation].
  const HistoryControllerImplementationFamily();

  /// See also [HistoryControllerImplementation].
  HistoryControllerImplementationProvider call({
    required HistoryPersistenceService persistenceService,
    required HistoryNavigationService navigationService,
    required LoggingService logger,
  }) {
    return HistoryControllerImplementationProvider(
      persistenceService: persistenceService,
      navigationService: navigationService,
      logger: logger,
    );
  }

  @override
  HistoryControllerImplementationProvider getProviderOverride(
    covariant HistoryControllerImplementationProvider provider,
  ) {
    return call(
      persistenceService: provider.persistenceService,
      navigationService: provider.navigationService,
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
  String? get name => r'historyControllerImplementationProvider';
}

/// See also [HistoryControllerImplementation].
class HistoryControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<HistoryControllerImplementation,
        HistoryModel> {
  /// See also [HistoryControllerImplementation].
  HistoryControllerImplementationProvider({
    required HistoryPersistenceService persistenceService,
    required HistoryNavigationService navigationService,
    required LoggingService logger,
  }) : this._internal(
          () => HistoryControllerImplementation()
            ..persistenceService = persistenceService
            ..navigationService = navigationService
            ..logger = logger,
          from: historyControllerImplementationProvider,
          name: r'historyControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$historyControllerImplementationHash,
          dependencies: HistoryControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              HistoryControllerImplementationFamily._allTransitiveDependencies,
          persistenceService: persistenceService,
          navigationService: navigationService,
          logger: logger,
        );

  HistoryControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.persistenceService,
    required this.navigationService,
    required this.logger,
  }) : super.internal();

  final HistoryPersistenceService persistenceService;
  final HistoryNavigationService navigationService;
  final LoggingService logger;

  @override
  HistoryModel runNotifierBuild(
    covariant HistoryControllerImplementation notifier,
  ) {
    return notifier.build(
      persistenceService: persistenceService,
      navigationService: navigationService,
      logger: logger,
    );
  }

  @override
  Override overrideWith(HistoryControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: HistoryControllerImplementationProvider._internal(
        () => create()
          ..persistenceService = persistenceService
          ..navigationService = navigationService
          ..logger = logger,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        persistenceService: persistenceService,
        navigationService: navigationService,
        logger: logger,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<HistoryControllerImplementation,
      HistoryModel> createElement() {
    return _HistoryControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HistoryControllerImplementationProvider &&
        other.persistenceService == persistenceService &&
        other.navigationService == navigationService &&
        other.logger == logger;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, persistenceService.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, logger.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HistoryControllerImplementationRef
    on AutoDisposeNotifierProviderRef<HistoryModel> {
  /// The parameter `persistenceService` of this provider.
  HistoryPersistenceService get persistenceService;

  /// The parameter `navigationService` of this provider.
  HistoryNavigationService get navigationService;

  /// The parameter `logger` of this provider.
  LoggingService get logger;
}

class _HistoryControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<HistoryControllerImplementation,
        HistoryModel> with HistoryControllerImplementationRef {
  _HistoryControllerImplementationProviderElement(super.provider);

  @override
  HistoryPersistenceService get persistenceService =>
      (origin as HistoryControllerImplementationProvider).persistenceService;
  @override
  HistoryNavigationService get navigationService =>
      (origin as HistoryControllerImplementationProvider).navigationService;
  @override
  LoggingService get logger =>
      (origin as HistoryControllerImplementationProvider).logger;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
