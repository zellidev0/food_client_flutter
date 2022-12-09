// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartPersistenceServiceModelRecipe {
  String get recipeId => throw _privateConstructorUsedError;
  List<CartPersistenceServiceModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelRecipeCopyWith<CartPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  factory $CartPersistenceServiceModelRecipeCopyWith(
          CartPersistenceServiceModelRecipe value,
          $Res Function(CartPersistenceServiceModelRecipe) then) =
      _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
          CartPersistenceServiceModelRecipe>;
  @useResult
  $Res call(
      {String recipeId,
      List<CartPersistenceServiceModelIngredient> ingredients});
}

/// @nodoc
class _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelRecipe>
    implements $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  _$CartPersistenceServiceModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPersistenceServiceModelRecipeCopyWith<$Res>
    implements $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  factory _$$_CartPersistenceServiceModelRecipeCopyWith(
          _$_CartPersistenceServiceModelRecipe value,
          $Res Function(_$_CartPersistenceServiceModelRecipe) then) =
      __$$_CartPersistenceServiceModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      List<CartPersistenceServiceModelIngredient> ingredients});
}

/// @nodoc
class __$$_CartPersistenceServiceModelRecipeCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
        _$_CartPersistenceServiceModelRecipe>
    implements _$$_CartPersistenceServiceModelRecipeCopyWith<$Res> {
  __$$_CartPersistenceServiceModelRecipeCopyWithImpl(
      _$_CartPersistenceServiceModelRecipe _value,
      $Res Function(_$_CartPersistenceServiceModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? ingredients = null,
  }) {
    return _then(_$_CartPersistenceServiceModelRecipe(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ));
  }
}

/// @nodoc

class _$_CartPersistenceServiceModelRecipe
    implements _CartPersistenceServiceModelRecipe {
  const _$_CartPersistenceServiceModelRecipe(
      {required this.recipeId,
      required final List<CartPersistenceServiceModelIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final String recipeId;
  final List<CartPersistenceServiceModelIngredient> _ingredients;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelRecipe(recipeId: $recipeId, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPersistenceServiceModelRecipe &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, recipeId, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPersistenceServiceModelRecipeCopyWith<
          _$_CartPersistenceServiceModelRecipe>
      get copyWith => __$$_CartPersistenceServiceModelRecipeCopyWithImpl<
          _$_CartPersistenceServiceModelRecipe>(this, _$identity);
}

abstract class _CartPersistenceServiceModelRecipe
    implements CartPersistenceServiceModelRecipe {
  const factory _CartPersistenceServiceModelRecipe(
      {required final String recipeId,
      required final List<CartPersistenceServiceModelIngredient>
          ingredients}) = _$_CartPersistenceServiceModelRecipe;

  @override
  String get recipeId;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_CartPersistenceServiceModelRecipeCopyWith<
          _$_CartPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelIngredient {
  bool get isTickedOff => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelIngredientCopyWith<
          CartPersistenceServiceModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  factory $CartPersistenceServiceModelIngredientCopyWith(
          CartPersistenceServiceModelIngredient value,
          $Res Function(CartPersistenceServiceModelIngredient) then) =
      _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
          CartPersistenceServiceModelIngredient>;
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit});
}

/// @nodoc
class _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelIngredient>
    implements $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  _$CartPersistenceServiceModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPersistenceServiceModelIngredientCopyWith<$Res>
    implements $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  factory _$$_CartPersistenceServiceModelIngredientCopyWith(
          _$_CartPersistenceServiceModelIngredient value,
          $Res Function(_$_CartPersistenceServiceModelIngredient) then) =
      __$$_CartPersistenceServiceModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit});
}

/// @nodoc
class __$$_CartPersistenceServiceModelIngredientCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
        _$_CartPersistenceServiceModelIngredient>
    implements _$$_CartPersistenceServiceModelIngredientCopyWith<$Res> {
  __$$_CartPersistenceServiceModelIngredientCopyWithImpl(
      _$_CartPersistenceServiceModelIngredient _value,
      $Res Function(_$_CartPersistenceServiceModelIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_CartPersistenceServiceModelIngredient(
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_CartPersistenceServiceModelIngredient
    implements _CartPersistenceServiceModelIngredient {
  const _$_CartPersistenceServiceModelIngredient(
      {required this.isTickedOff,
      required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit});

  @override
  final bool isTickedOff;
  @override
  final Option<Uri> imageUrl;
  @override
  final String ingredientId;
  @override
  final String slug;
  @override
  final String displayedName;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'CartPersistenceServiceModelIngredient(isTickedOff: $isTickedOff, imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPersistenceServiceModelIngredient &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTickedOff, imageUrl,
      ingredientId, slug, displayedName, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPersistenceServiceModelIngredientCopyWith<
          _$_CartPersistenceServiceModelIngredient>
      get copyWith => __$$_CartPersistenceServiceModelIngredientCopyWithImpl<
          _$_CartPersistenceServiceModelIngredient>(this, _$identity);
}

abstract class _CartPersistenceServiceModelIngredient
    implements CartPersistenceServiceModelIngredient {
  const factory _CartPersistenceServiceModelIngredient(
          {required final bool isTickedOff,
          required final Option<Uri> imageUrl,
          required final String ingredientId,
          required final String slug,
          required final String displayedName,
          required final Option<double> amount,
          required final Option<String> unit}) =
      _$_CartPersistenceServiceModelIngredient;

  @override
  bool get isTickedOff;
  @override
  Option<Uri> get imageUrl;
  @override
  String get ingredientId;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$_CartPersistenceServiceModelIngredientCopyWith<
          _$_CartPersistenceServiceModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}
