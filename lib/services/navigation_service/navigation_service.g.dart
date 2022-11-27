// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $globalNavigationServiceHash() =>
    r'bef2ccdac7a7227d5a15190d726a1967b5ccdb71';

/// See also [globalNavigationService].
final globalNavigationServiceProvider =
    AutoDisposeProvider<NavigationServiceAggregator>(
  globalNavigationService,
  name: r'globalNavigationServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $globalNavigationServiceHash,
);
typedef GlobalNavigationServiceRef
    = AutoDisposeProviderRef<NavigationServiceAggregator>;
String $bottomNavigationBarNavigationServiceHash() =>
    r'05de2fbf470701cdd17e0955db5f9832f303d023';

/// See also [bottomNavigationBarNavigationService].
final bottomNavigationBarNavigationServiceProvider =
    AutoDisposeProvider<NavigationServiceAggregator>(
  bottomNavigationBarNavigationService,
  name: r'bottomNavigationBarNavigationServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $bottomNavigationBarNavigationServiceHash,
);
typedef BottomNavigationBarNavigationServiceRef
    = AutoDisposeProviderRef<NavigationServiceAggregator>;
String $globalBeamerDelegateHash() =>
    r'f50447d9942dce7de46ad5fa8f623fe1e9b95f78';

/// See also [globalBeamerDelegate].
final globalBeamerDelegateProvider = Provider<BeamerDelegate>(
  globalBeamerDelegate,
  name: r'globalBeamerDelegateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $globalBeamerDelegateHash,
);
typedef GlobalBeamerDelegateRef = ProviderRef<BeamerDelegate>;
String $bottomNavigationBarBeamerDelegateHash() =>
    r'6bbe4fc5e072f0cfb139ea0f3862c162c3765ec3';

/// See also [bottomNavigationBarBeamerDelegate].
final bottomNavigationBarBeamerDelegateProvider = Provider<BeamerDelegate>(
  bottomNavigationBarBeamerDelegate,
  name: r'bottomNavigationBarBeamerDelegateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $bottomNavigationBarBeamerDelegateHash,
);
typedef BottomNavigationBarBeamerDelegateRef = ProviderRef<BeamerDelegate>;
