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

  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({List<CartModelRecipe> recipes});
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
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
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
  $Res call({List<CartModelRecipe> recipes});
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
  }) {
    return _then(_$_CartModel(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
    ));
  }
}

/// @nodoc

class _$_CartModel implements _CartModel {
  const _$_CartModel({required final List<CartModelRecipe> recipes})
      : _recipes = recipes;

  final List<CartModelRecipe> _recipes;
  @override
  List<CartModelRecipe> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'CartModel(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);
}

abstract class _CartModel implements CartModel {
  const factory _CartModel({required final List<CartModelRecipe> recipes}) =
      _$_CartModel;

  @override
  List<CartModelRecipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelRecipe {
  List<CartModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

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
  $Res call(
      {List<CartModelIngredient> ingredients,
      String title,
      String recipeId,
      int serving,
      Option<Uri> imageUrl,
      Color color});
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
    Object? ingredients = null,
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
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
  $Res call(
      {List<CartModelIngredient> ingredients,
      String title,
      String recipeId,
      int serving,
      Option<Uri> imageUrl,
      Color color});
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
    Object? ingredients = null,
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
    Object? color = null,
  }) {
    return _then(_$_CartModelRecipe(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_CartModelRecipe implements _CartModelRecipe {
  const _$_CartModelRecipe(
      {required final List<CartModelIngredient> ingredients,
      required this.title,
      required this.recipeId,
      required this.serving,
      required this.imageUrl,
      required this.color})
      : _ingredients = ingredients;

  final List<CartModelIngredient> _ingredients;
  @override
  List<CartModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final String title;
  @override
  final String recipeId;
  @override
  final int serving;
  @override
  final Option<Uri> imageUrl;
  @override
  final Color color;

  @override
  String toString() {
    return 'CartModelRecipe(ingredients: $ingredients, title: $title, recipeId: $recipeId, serving: $serving, imageUrl: $imageUrl, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModelRecipe &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ingredients),
      title,
      recipeId,
      serving,
      imageUrl,
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelRecipeCopyWith<_$_CartModelRecipe> get copyWith =>
      __$$_CartModelRecipeCopyWithImpl<_$_CartModelRecipe>(this, _$identity);
}

abstract class _CartModelRecipe implements CartModelRecipe {
  const factory _CartModelRecipe(
      {required final List<CartModelIngredient> ingredients,
      required final String title,
      required final String recipeId,
      required final int serving,
      required final Option<Uri> imageUrl,
      required final Color color}) = _$_CartModelRecipe;

  @override
  List<CartModelIngredient> get ingredients;
  @override
  String get title;
  @override
  String get recipeId;
  @override
  int get serving;
  @override
  Option<Uri> get imageUrl;
  @override
  Color get color;
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
      Option<String> unit});
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
      Option<String> unit});
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
      required this.unit});

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
    return 'CartModelIngredientInfo(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit)';
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
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageUrl, ingredientId, slug, displayedName, amount, unit);

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
      required final Option<String> unit}) = _$_CartModelIngredientInfo;

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
  _$$_CartModelIngredientInfoCopyWith<_$_CartModelIngredientInfo>
      get copyWith => throw _privateConstructorUsedError;
}
