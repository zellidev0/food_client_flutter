// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartModel {
  List<CartModelRecipe> get recipes => throw _privateConstructorUsedError;
  List<CartModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  bool get combineIngredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {List<CartModelRecipe> recipes,
      List<CartModelIngredient> ingredients,
      bool combineIngredients});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartModelRecipe> recipes,
      List<CartModelIngredient> ingredients,
      bool combineIngredients});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
  }) {
    return _then(_$_CartModel(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {required final List<CartModelRecipe> recipes,
      required final List<CartModelIngredient> ingredients,
      required this.combineIngredients})
      : _recipes = recipes,
        _ingredients = ingredients;

  final List<CartModelRecipe> _recipes;
  @override
  List<CartModelRecipe> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<CartModelIngredient> _ingredients;
  @override
  List<CartModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final bool combineIngredients;

  @override
  String toString() {
    return 'CartModel(recipes: $recipes, ingredients: $ingredients, combineIngredients: $combineIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.combineIngredients, combineIngredients) ||
                other.combineIngredients == combineIngredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_ingredients),
      combineIngredients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {required final List<CartModelRecipe> recipes,
      required final List<CartModelIngredient> ingredients,
      required final bool combineIngredients}) = _$_CartModel;

  @override
  List<CartModelRecipe> get recipes;
  @override
  List<CartModelIngredient> get ingredients;
  @override
  bool get combineIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelRecipe {
  String get title => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelRecipeCopyWith<CartModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelRecipeCopyWith<$Res> {
  factory $CartModelRecipeCopyWith(
          CartModelRecipe value, $Res Function(CartModelRecipe) then) =
      _$CartModelRecipeCopyWithImpl<$Res, CartModelRecipe>;
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class _$CartModelRecipeCopyWithImpl<$Res, $Val extends CartModelRecipe>
    implements $CartModelRecipeCopyWith<$Res> {
  _$CartModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelRecipeCopyWith<$Res>
    implements $CartModelRecipeCopyWith<$Res> {
  factory _$$_CartModelRecipeCopyWith(
          _$_CartModelRecipe value, $Res Function(_$_CartModelRecipe) then) =
      __$$_CartModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class __$$_CartModelRecipeCopyWithImpl<$Res>
    extends _$CartModelRecipeCopyWithImpl<$Res, _$_CartModelRecipe>
    implements _$$_CartModelRecipeCopyWith<$Res> {
  __$$_CartModelRecipeCopyWithImpl(
      _$_CartModelRecipe _value, $Res Function(_$_CartModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_CartModelRecipe(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$_CartModelRecipe implements _CartModelRecipe {
  const _$_CartModelRecipe(
      {required this.title,
      required this.recipeId,
      required this.serving,
      required this.imageUrl});

  @override
  final String title;
  @override
  final String recipeId;
  @override
  final int serving;
  @override
  final Option<Uri> imageUrl;

  @override
  String toString() {
    return 'CartModelRecipe(title: $title, recipeId: $recipeId, serving: $serving, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModelRecipe &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, recipeId, serving, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelRecipeCopyWith<_$_CartModelRecipe> get copyWith =>
      __$$_CartModelRecipeCopyWithImpl<_$_CartModelRecipe>(this, _$identity);
}

abstract class _CartModelRecipe implements CartModelRecipe {
  const factory _CartModelRecipe(
      {required final String title,
      required final String recipeId,
      required final int serving,
      required final Option<Uri> imageUrl}) = _$_CartModelRecipe;

  @override
  String get title;
  @override
  String get recipeId;
  @override
  int get serving;
  @override
  Option<Uri> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelRecipeCopyWith<_$_CartModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelIngredient {
  CartModelIngredientInfo get ingredient => throw _privateConstructorUsedError;
  bool get isTickedOff => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelIngredientCopyWith<CartModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelIngredientCopyWith<$Res> {
  factory $CartModelIngredientCopyWith(
          CartModelIngredient value, $Res Function(CartModelIngredient) then) =
      _$CartModelIngredientCopyWithImpl<$Res, CartModelIngredient>;
  @useResult
  $Res call({CartModelIngredientInfo ingredient, bool isTickedOff});

  $CartModelIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$CartModelIngredientCopyWithImpl<$Res, $Val extends CartModelIngredient>
    implements $CartModelIngredientCopyWith<$Res> {
  _$CartModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartModelIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelIngredientInfoCopyWith<$Res> get ingredient {
    return $CartModelIngredientInfoCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartModelIngredientCopyWith<$Res>
    implements $CartModelIngredientCopyWith<$Res> {
  factory _$$_CartModelIngredientCopyWith(_$_CartModelIngredient value,
          $Res Function(_$_CartModelIngredient) then) =
      __$$_CartModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModelIngredientInfo ingredient, bool isTickedOff});

  @override
  $CartModelIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$_CartModelIngredientCopyWithImpl<$Res>
    extends _$CartModelIngredientCopyWithImpl<$Res, _$_CartModelIngredient>
    implements _$$_CartModelIngredientCopyWith<$Res> {
  __$$_CartModelIngredientCopyWithImpl(_$_CartModelIngredient _value,
      $Res Function(_$_CartModelIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_$_CartModelIngredient(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartModelIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CartModelIngredient implements _CartModelIngredient {
  const _$_CartModelIngredient(
      {required this.ingredient, required this.isTickedOff});

  @override
  final CartModelIngredientInfo ingredient;
  @override
  final bool isTickedOff;

  @override
  String toString() {
    return 'CartModelIngredient(ingredient: $ingredient, isTickedOff: $isTickedOff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModelIngredient &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, isTickedOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelIngredientCopyWith<_$_CartModelIngredient> get copyWith =>
      __$$_CartModelIngredientCopyWithImpl<_$_CartModelIngredient>(
          this, _$identity);
}

abstract class _CartModelIngredient implements CartModelIngredient {
  const factory _CartModelIngredient(
      {required final CartModelIngredientInfo ingredient,
      required final bool isTickedOff}) = _$_CartModelIngredient;

  @override
  CartModelIngredientInfo get ingredient;
  @override
  bool get isTickedOff;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelIngredientCopyWith<_$_CartModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelIngredientInfo {
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  List<String> get recipeIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelIngredientInfoCopyWith<CartModelIngredientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelIngredientInfoCopyWith<$Res> {
  factory $CartModelIngredientInfoCopyWith(CartModelIngredientInfo value,
          $Res Function(CartModelIngredientInfo) then) =
      _$CartModelIngredientInfoCopyWithImpl<$Res, CartModelIngredientInfo>;
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds});
}

/// @nodoc
class _$CartModelIngredientInfoCopyWithImpl<$Res,
        $Val extends CartModelIngredientInfo>
    implements $CartModelIngredientInfoCopyWith<$Res> {
  _$CartModelIngredientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? recipeIds = null,
  }) {
    return _then(_value.copyWith(
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
      recipeIds: null == recipeIds
          ? _value.recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelIngredientInfoCopyWith<$Res>
    implements $CartModelIngredientInfoCopyWith<$Res> {
  factory _$$_CartModelIngredientInfoCopyWith(_$_CartModelIngredientInfo value,
          $Res Function(_$_CartModelIngredientInfo) then) =
      __$$_CartModelIngredientInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds});
}

/// @nodoc
class __$$_CartModelIngredientInfoCopyWithImpl<$Res>
    extends _$CartModelIngredientInfoCopyWithImpl<$Res,
        _$_CartModelIngredientInfo>
    implements _$$_CartModelIngredientInfoCopyWith<$Res> {
  __$$_CartModelIngredientInfoCopyWithImpl(_$_CartModelIngredientInfo _value,
      $Res Function(_$_CartModelIngredientInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? recipeIds = null,
  }) {
    return _then(_$_CartModelIngredientInfo(
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
      recipeIds: null == recipeIds
          ? _value._recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CartModelIngredientInfo implements _CartModelIngredientInfo {
  const _$_CartModelIngredientInfo(
      {required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required final List<String> recipeIds})
      : _recipeIds = recipeIds;

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
  final List<String> _recipeIds;
  @override
  List<String> get recipeIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeIds);
  }

  @override
  String toString() {
    return 'CartModelIngredientInfo(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, recipeIds: $recipeIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModelIngredientInfo &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other._recipeIds, _recipeIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      ingredientId,
      slug,
      displayedName,
      amount,
      unit,
      const DeepCollectionEquality().hash(_recipeIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelIngredientInfoCopyWith<_$_CartModelIngredientInfo>
      get copyWith =>
          __$$_CartModelIngredientInfoCopyWithImpl<_$_CartModelIngredientInfo>(
              this, _$identity);
}

abstract class _CartModelIngredientInfo implements CartModelIngredientInfo {
  const factory _CartModelIngredientInfo(
      {required final Option<Uri> imageUrl,
      required final String ingredientId,
      required final String slug,
      required final String displayedName,
      required final Option<double> amount,
      required final Option<String> unit,
      required final List<String> recipeIds}) = _$_CartModelIngredientInfo;

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
  List<String> get recipeIds;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelIngredientInfoCopyWith<_$_CartModelIngredientInfo>
      get copyWith => throw _privateConstructorUsedError;
}
