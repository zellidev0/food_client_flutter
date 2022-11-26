// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_recipe_controller.dart';

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

String $SingleRecipeControllerImplementationHash() =>
    r'01237a9c095c9eddb23bd5a87e03f2717e2fc901';

/// See also [SingleRecipeControllerImplementation].
class SingleRecipeControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        SingleRecipeControllerImplementation, SingleRecipeModel> {
  SingleRecipeControllerImplementationProvider({
    required this.recipeId,
  }) : super(
          () => SingleRecipeControllerImplementation()..recipeId = recipeId,
          from: singleRecipeControllerImplementationProvider,
          name: r'singleRecipeControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $SingleRecipeControllerImplementationHash,
        );

  final String recipeId;

  @override
  bool operator ==(Object other) {
    return other is SingleRecipeControllerImplementationProvider &&
        other.recipeId == recipeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipeId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  SingleRecipeModel runNotifierBuild(
    covariant _$SingleRecipeControllerImplementation notifier,
  ) {
    return notifier.build(
      recipeId: recipeId,
    );
  }
}

typedef SingleRecipeControllerImplementationRef
    = AutoDisposeNotifierProviderRef<SingleRecipeModel>;

/// See also [SingleRecipeControllerImplementation].
final singleRecipeControllerImplementationProvider =
    SingleRecipeControllerImplementationFamily();

class SingleRecipeControllerImplementationFamily
    extends Family<SingleRecipeModel> {
  SingleRecipeControllerImplementationFamily();

  SingleRecipeControllerImplementationProvider call({
    required String recipeId,
  }) {
    return SingleRecipeControllerImplementationProvider(
      recipeId: recipeId,
    );
  }

  @override
  AutoDisposeNotifierProviderImpl<SingleRecipeControllerImplementation,
      SingleRecipeModel> getProviderOverride(
    covariant SingleRecipeControllerImplementationProvider provider,
  ) {
    return call(
      recipeId: provider.recipeId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'singleRecipeControllerImplementationProvider';
}

abstract class _$SingleRecipeControllerImplementation
    extends BuildlessAutoDisposeNotifier<SingleRecipeModel> {
  late final String recipeId;

  SingleRecipeModel build({
    required String recipeId,
  });
}
