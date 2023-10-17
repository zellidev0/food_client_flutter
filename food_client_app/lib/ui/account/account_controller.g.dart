// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountControllerImplementationHash() =>
    r'ba513f7ec12dc512c4ce0ebfe4f12d0828f04351';

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

abstract class _$AccountControllerImplementation
    extends BuildlessAutoDisposeNotifier<AccountModel> {
  late final AccountNavigationService navigationService;

  AccountModel build({
    required AccountNavigationService navigationService,
  });
}

/// See also [AccountControllerImplementation].
@ProviderFor(AccountControllerImplementation)
const accountControllerImplementationProvider =
    AccountControllerImplementationFamily();

/// See also [AccountControllerImplementation].
class AccountControllerImplementationFamily extends Family<AccountModel> {
  /// See also [AccountControllerImplementation].
  const AccountControllerImplementationFamily();

  /// See also [AccountControllerImplementation].
  AccountControllerImplementationProvider call({
    required AccountNavigationService navigationService,
  }) {
    return AccountControllerImplementationProvider(
      navigationService: navigationService,
    );
  }

  @override
  AccountControllerImplementationProvider getProviderOverride(
    covariant AccountControllerImplementationProvider provider,
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
  String? get name => r'accountControllerImplementationProvider';
}

/// See also [AccountControllerImplementation].
class AccountControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<AccountControllerImplementation,
        AccountModel> {
  /// See also [AccountControllerImplementation].
  AccountControllerImplementationProvider({
    required AccountNavigationService navigationService,
  }) : this._internal(
          () => AccountControllerImplementation()
            ..navigationService = navigationService,
          from: accountControllerImplementationProvider,
          name: r'accountControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountControllerImplementationHash,
          dependencies: AccountControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              AccountControllerImplementationFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  AccountControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final AccountNavigationService navigationService;

  @override
  AccountModel runNotifierBuild(
    covariant AccountControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(AccountControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountControllerImplementationProvider._internal(
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
  AutoDisposeNotifierProviderElement<AccountControllerImplementation,
      AccountModel> createElement() {
    return _AccountControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountControllerImplementationProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountControllerImplementationRef
    on AutoDisposeNotifierProviderRef<AccountModel> {
  /// The parameter `navigationService` of this provider.
  AccountNavigationService get navigationService;
}

class _AccountControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<AccountControllerImplementation,
        AccountModel> with AccountControllerImplementationRef {
  _AccountControllerImplementationProviderElement(super.provider);

  @override
  AccountNavigationService get navigationService =>
      (origin as AccountControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
