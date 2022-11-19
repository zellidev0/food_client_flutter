// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

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

String $homeWebClientServiceHash() =>
    r'a660163ac8629e6cbebb68ba76d8141d8ef4c36d';

/// See also [homeWebClientService].
final homeWebClientServiceProvider = AutoDisposeProvider<HomeWebClientService>(
  homeWebClientService,
  name: r'homeWebClientServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $homeWebClientServiceHash,
);
typedef HomeWebClientServiceRef = AutoDisposeProviderRef<HomeWebClientService>;
String $homeRecipeParserServiceHash() =>
    r'1fd7c5c9903236aabde02703060584fc168f8af9';

/// See also [homeRecipeParserService].
final homeRecipeParserServiceProvider =
    AutoDisposeProvider<HomeRecipeParserService>(
  homeRecipeParserService,
  name: r'homeRecipeParserServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $homeRecipeParserServiceHash,
);
typedef HomeRecipeParserServiceRef
    = AutoDisposeProviderRef<HomeRecipeParserService>;
