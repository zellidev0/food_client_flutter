// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartPersistenceServiceModelRecipe {
  String get recipeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;
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
      String title,
      int serving,
      Option<Uri> imagePath,
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
    Object? title = null,
    Object? serving = null,
    Object? imagePath = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelRecipeImplCopyWith<$Res>
    implements $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelRecipeImplCopyWith(
          _$CartPersistenceServiceModelRecipeImpl value,
          $Res Function(_$CartPersistenceServiceModelRecipeImpl) then) =
      __$$CartPersistenceServiceModelRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      String title,
      int serving,
      Option<Uri> imagePath,
      List<CartPersistenceServiceModelIngredient> ingredients});
}

/// @nodoc
class __$$CartPersistenceServiceModelRecipeImplCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
        _$CartPersistenceServiceModelRecipeImpl>
    implements _$$CartPersistenceServiceModelRecipeImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelRecipeImplCopyWithImpl(
      _$CartPersistenceServiceModelRecipeImpl _value,
      $Res Function(_$CartPersistenceServiceModelRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
    Object? serving = null,
    Object? imagePath = null,
    Object? ingredients = null,
  }) {
    return _then(_$CartPersistenceServiceModelRecipeImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelRecipeImpl
    implements _CartPersistenceServiceModelRecipe {
  const _$CartPersistenceServiceModelRecipeImpl(
      {required this.recipeId,
      required this.title,
      required this.serving,
      required this.imagePath,
      required final List<CartPersistenceServiceModelIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final String recipeId;
  @override
  final String title;
  @override
  final int serving;
  @override
  final Option<Uri> imagePath;
  final List<CartPersistenceServiceModelIngredient> _ingredients;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelRecipe(recipeId: $recipeId, title: $title, serving: $serving, imagePath: $imagePath, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelRecipeImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, title, serving,
      imagePath, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelRecipeImplCopyWith<
          _$CartPersistenceServiceModelRecipeImpl>
      get copyWith => __$$CartPersistenceServiceModelRecipeImplCopyWithImpl<
          _$CartPersistenceServiceModelRecipeImpl>(this, _$identity);
}

abstract class _CartPersistenceServiceModelRecipe
    implements CartPersistenceServiceModelRecipe {
  const factory _CartPersistenceServiceModelRecipe(
      {required final String recipeId,
      required final String title,
      required final int serving,
      required final Option<Uri> imagePath,
      required final List<CartPersistenceServiceModelIngredient>
          ingredients}) = _$CartPersistenceServiceModelRecipeImpl;

  @override
  String get recipeId;
  @override
  String get title;
  @override
  int get serving;
  @override
  Option<Uri> get imagePath;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelRecipeImplCopyWith<
          _$CartPersistenceServiceModelRecipeImpl>
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
  Option<CartPersistenceServiceModelIngredientFamilyFamily> get family =>
      throw _privateConstructorUsedError;

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
      Option<String> unit,
      Option<CartPersistenceServiceModelIngredientFamilyFamily> family});
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
    Object? family = null,
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
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartPersistenceServiceModelIngredientFamilyFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelIngredientImplCopyWith<$Res>
    implements $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelIngredientImplCopyWith(
          _$CartPersistenceServiceModelIngredientImpl value,
          $Res Function(_$CartPersistenceServiceModelIngredientImpl) then) =
      __$$CartPersistenceServiceModelIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<CartPersistenceServiceModelIngredientFamilyFamily> family});
}

/// @nodoc
class __$$CartPersistenceServiceModelIngredientImplCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
        _$CartPersistenceServiceModelIngredientImpl>
    implements _$$CartPersistenceServiceModelIngredientImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelIngredientImplCopyWithImpl(
      _$CartPersistenceServiceModelIngredientImpl _value,
      $Res Function(_$CartPersistenceServiceModelIngredientImpl) _then)
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
    Object? family = null,
  }) {
    return _then(_$CartPersistenceServiceModelIngredientImpl(
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
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartPersistenceServiceModelIngredientFamilyFamily>,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelIngredientImpl
    implements _CartPersistenceServiceModelIngredient {
  const _$CartPersistenceServiceModelIngredientImpl(
      {required this.isTickedOff,
      required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required this.family});

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
  final Option<CartPersistenceServiceModelIngredientFamilyFamily> family;

  @override
  String toString() {
    return 'CartPersistenceServiceModelIngredient(isTickedOff: $isTickedOff, imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelIngredientImpl &&
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
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTickedOff, imageUrl,
      ingredientId, slug, displayedName, amount, unit, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelIngredientImplCopyWith<
          _$CartPersistenceServiceModelIngredientImpl>
      get copyWith => __$$CartPersistenceServiceModelIngredientImplCopyWithImpl<
          _$CartPersistenceServiceModelIngredientImpl>(this, _$identity);
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
      required final Option<String> unit,
      required final Option<CartPersistenceServiceModelIngredientFamilyFamily>
          family}) = _$CartPersistenceServiceModelIngredientImpl;

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
  Option<CartPersistenceServiceModelIngredientFamilyFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelIngredientImplCopyWith<
          _$CartPersistenceServiceModelIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelIngredientFamilyFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
          CartPersistenceServiceModelIngredientFamilyFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
    $Res> {
  factory $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith(
          CartPersistenceServiceModelIngredientFamilyFamily value,
          $Res Function(CartPersistenceServiceModelIngredientFamilyFamily)
              then) =
      _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res,
          CartPersistenceServiceModelIngredientFamilyFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelIngredientFamilyFamily>
    implements
        $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<$Res> {
  _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWith<
        $Res>
    implements
        $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWith(
          _$CartPersistenceServiceModelIngredientFamilyFamilyImpl value,
          $Res Function(_$CartPersistenceServiceModelIngredientFamilyFamilyImpl)
              then) =
      __$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class __$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWithImpl<
        $Res>
    extends _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<
        $Res, _$CartPersistenceServiceModelIngredientFamilyFamilyImpl>
    implements
        _$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWithImpl(
      _$CartPersistenceServiceModelIngredientFamilyFamilyImpl _value,
      $Res Function(_$CartPersistenceServiceModelIngredientFamilyFamilyImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$CartPersistenceServiceModelIngredientFamilyFamilyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelIngredientFamilyFamilyImpl
    implements _CartPersistenceServiceModelIngredientFamilyFamily {
  const _$CartPersistenceServiceModelIngredientFamilyFamilyImpl(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  @override
  final String id;
  @override
  final String type;
  @override
  final Option<String> iconPath;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'CartPersistenceServiceModelIngredientFamilyFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelIngredientFamilyFamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconPath, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWith<
          _$CartPersistenceServiceModelIngredientFamilyFamilyImpl>
      get copyWith =>
          __$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWithImpl<
                  _$CartPersistenceServiceModelIngredientFamilyFamilyImpl>(
              this, _$identity);
}

abstract class _CartPersistenceServiceModelIngredientFamilyFamily
    implements CartPersistenceServiceModelIngredientFamilyFamily {
  const factory _CartPersistenceServiceModelIngredientFamilyFamily(
          {required final String id,
          required final String type,
          required final Option<String> iconPath,
          required final String name,
          required final String slug}) =
      _$CartPersistenceServiceModelIngredientFamilyFamilyImpl;

  @override
  String get id;
  @override
  String get type;
  @override
  Option<String> get iconPath;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelIngredientFamilyFamilyImplCopyWith<
          _$CartPersistenceServiceModelIngredientFamilyFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelSortingUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CartPersistenceServiceModelSortingUnitFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelSortingUnitCopyWith<
          CartPersistenceServiceModelSortingUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelSortingUnitCopyWith<$Res> {
  factory $CartPersistenceServiceModelSortingUnitCopyWith(
          CartPersistenceServiceModelSortingUnit value,
          $Res Function(CartPersistenceServiceModelSortingUnit) then) =
      _$CartPersistenceServiceModelSortingUnitCopyWithImpl<$Res,
          CartPersistenceServiceModelSortingUnit>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartPersistenceServiceModelSortingUnitFamily> ingredientFamilies});
}

/// @nodoc
class _$CartPersistenceServiceModelSortingUnitCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelSortingUnit>
    implements $CartPersistenceServiceModelSortingUnitCopyWith<$Res> {
  _$CartPersistenceServiceModelSortingUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value.ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelSortingUnitFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelSortingUnitImplCopyWith<$Res>
    implements $CartPersistenceServiceModelSortingUnitCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelSortingUnitImplCopyWith(
          _$CartPersistenceServiceModelSortingUnitImpl value,
          $Res Function(_$CartPersistenceServiceModelSortingUnitImpl) then) =
      __$$CartPersistenceServiceModelSortingUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartPersistenceServiceModelSortingUnitFamily> ingredientFamilies});
}

/// @nodoc
class __$$CartPersistenceServiceModelSortingUnitImplCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelSortingUnitCopyWithImpl<$Res,
        _$CartPersistenceServiceModelSortingUnitImpl>
    implements _$$CartPersistenceServiceModelSortingUnitImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelSortingUnitImplCopyWithImpl(
      _$CartPersistenceServiceModelSortingUnitImpl _value,
      $Res Function(_$CartPersistenceServiceModelSortingUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$CartPersistenceServiceModelSortingUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelSortingUnitFamily>,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelSortingUnitImpl
    implements _CartPersistenceServiceModelSortingUnit {
  const _$CartPersistenceServiceModelSortingUnitImpl(
      {required this.id,
      required this.name,
      required final List<CartPersistenceServiceModelSortingUnitFamily>
          ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
  @override
  final String name;
  final List<CartPersistenceServiceModelSortingUnitFamily> _ingredientFamilies;
  @override
  List<CartPersistenceServiceModelSortingUnitFamily> get ingredientFamilies {
    if (_ingredientFamilies is EqualUnmodifiableListView)
      return _ingredientFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelSortingUnit(id: $id, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelSortingUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelSortingUnitImplCopyWith<
          _$CartPersistenceServiceModelSortingUnitImpl>
      get copyWith =>
          __$$CartPersistenceServiceModelSortingUnitImplCopyWithImpl<
              _$CartPersistenceServiceModelSortingUnitImpl>(this, _$identity);
}

abstract class _CartPersistenceServiceModelSortingUnit
    implements CartPersistenceServiceModelSortingUnit {
  const factory _CartPersistenceServiceModelSortingUnit(
      {required final String id,
      required final String name,
      required final List<CartPersistenceServiceModelSortingUnitFamily>
          ingredientFamilies}) = _$CartPersistenceServiceModelSortingUnitImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CartPersistenceServiceModelSortingUnitFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelSortingUnitImplCopyWith<
          _$CartPersistenceServiceModelSortingUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelActiveSorting {
  List<String> get ingredientIds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String activeSortingUnitId, List<String> ingredientIds)
        selectedUnit,
    required TResult Function(List<String> ingredientIds) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)
        selectedUnit,
    required TResult Function(
            CartPersistenceServiceModelActiveSortingCustom value)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult? Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelActiveSortingCopyWith<
          CartPersistenceServiceModelActiveSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory $CartPersistenceServiceModelActiveSortingCopyWith(
          CartPersistenceServiceModelActiveSorting value,
          $Res Function(CartPersistenceServiceModelActiveSorting) then) =
      _$CartPersistenceServiceModelActiveSortingCopyWithImpl<$Res,
          CartPersistenceServiceModelActiveSorting>;
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class _$CartPersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelActiveSorting>
    implements $CartPersistenceServiceModelActiveSortingCopyWith<$Res> {
  _$CartPersistenceServiceModelActiveSortingCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_value.copyWith(
      ingredientIds: null == ingredientIds
          ? _value.ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWith<
    $Res> implements $CartPersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWith(
          _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl value,
          $Res Function(
                  _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl)
              then) =
      __$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String activeSortingUnitId, List<String> ingredientIds});
}

/// @nodoc
class __$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWithImpl<
        $Res>
    extends _$CartPersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl>
    implements
        _$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWith<
            $Res> {
  __$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWithImpl(
      _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl _value,
      $Res Function(_$CartPersistenceServiceModelActiveSortingSelectedUnitImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSortingUnitId = null,
    Object? ingredientIds = null,
  }) {
    return _then(_$CartPersistenceServiceModelActiveSortingSelectedUnitImpl(
      activeSortingUnitId: null == activeSortingUnitId
          ? _value.activeSortingUnitId
          : activeSortingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl
    implements CartPersistenceServiceModelActiveSortingSelectedUnit {
  const _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl(
      {required this.activeSortingUnitId,
      required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  @override
  final String activeSortingUnitId;
  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelActiveSorting.selectedUnit(activeSortingUnitId: $activeSortingUnitId, ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl &&
            (identical(other.activeSortingUnitId, activeSortingUnitId) ||
                other.activeSortingUnitId == activeSortingUnitId) &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeSortingUnitId,
      const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWith<
          _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl>
      get copyWith =>
          __$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWithImpl<
                  _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String activeSortingUnitId, List<String> ingredientIds)
        selectedUnit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return selectedUnit(activeSortingUnitId, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return selectedUnit?.call(activeSortingUnitId, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (selectedUnit != null) {
      return selectedUnit(activeSortingUnitId, ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)
        selectedUnit,
    required TResult Function(
            CartPersistenceServiceModelActiveSortingCustom value)
        custom,
  }) {
    return selectedUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult? Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
  }) {
    return selectedUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
    required TResult orElse(),
  }) {
    if (selectedUnit != null) {
      return selectedUnit(this);
    }
    return orElse();
  }
}

abstract class CartPersistenceServiceModelActiveSortingSelectedUnit
    implements CartPersistenceServiceModelActiveSorting {
  const factory CartPersistenceServiceModelActiveSortingSelectedUnit(
          {required final String activeSortingUnitId,
          required final List<String> ingredientIds}) =
      _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl;

  String get activeSortingUnitId;
  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelActiveSortingSelectedUnitImplCopyWith<
          _$CartPersistenceServiceModelActiveSortingSelectedUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelActiveSortingCustomImplCopyWith<
    $Res> implements $CartPersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelActiveSortingCustomImplCopyWith(
          _$CartPersistenceServiceModelActiveSortingCustomImpl value,
          $Res Function(_$CartPersistenceServiceModelActiveSortingCustomImpl)
              then) =
      __$$CartPersistenceServiceModelActiveSortingCustomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class __$$CartPersistenceServiceModelActiveSortingCustomImplCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        _$CartPersistenceServiceModelActiveSortingCustomImpl>
    implements
        _$$CartPersistenceServiceModelActiveSortingCustomImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelActiveSortingCustomImplCopyWithImpl(
      _$CartPersistenceServiceModelActiveSortingCustomImpl _value,
      $Res Function(_$CartPersistenceServiceModelActiveSortingCustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_$CartPersistenceServiceModelActiveSortingCustomImpl(
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelActiveSortingCustomImpl
    implements CartPersistenceServiceModelActiveSortingCustom {
  const _$CartPersistenceServiceModelActiveSortingCustomImpl(
      {required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelActiveSorting.custom(ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelActiveSortingCustomImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelActiveSortingCustomImplCopyWith<
          _$CartPersistenceServiceModelActiveSortingCustomImpl>
      get copyWith =>
          __$$CartPersistenceServiceModelActiveSortingCustomImplCopyWithImpl<
                  _$CartPersistenceServiceModelActiveSortingCustomImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String activeSortingUnitId, List<String> ingredientIds)
        selectedUnit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return custom(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return custom?.call(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String activeSortingUnitId, List<String> ingredientIds)?
        selectedUnit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)
        selectedUnit,
    required TResult Function(
            CartPersistenceServiceModelActiveSortingCustom value)
        custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult? Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            CartPersistenceServiceModelActiveSortingSelectedUnit value)?
        selectedUnit,
    TResult Function(CartPersistenceServiceModelActiveSortingCustom value)?
        custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CartPersistenceServiceModelActiveSortingCustom
    implements CartPersistenceServiceModelActiveSorting {
  const factory CartPersistenceServiceModelActiveSortingCustom(
          {required final List<String> ingredientIds}) =
      _$CartPersistenceServiceModelActiveSortingCustomImpl;

  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelActiveSortingCustomImplCopyWith<
          _$CartPersistenceServiceModelActiveSortingCustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelSortingUnitFamily {
  List<String> get familyIds => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelSortingUnitFamilyCopyWith<
          CartPersistenceServiceModelSortingUnitFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelSortingUnitFamilyCopyWith<$Res> {
  factory $CartPersistenceServiceModelSortingUnitFamilyCopyWith(
          CartPersistenceServiceModelSortingUnitFamily value,
          $Res Function(CartPersistenceServiceModelSortingUnitFamily) then) =
      _$CartPersistenceServiceModelSortingUnitFamilyCopyWithImpl<$Res,
          CartPersistenceServiceModelSortingUnitFamily>;
  @useResult
  $Res call({List<String> familyIds, String name});
}

/// @nodoc
class _$CartPersistenceServiceModelSortingUnitFamilyCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelSortingUnitFamily>
    implements $CartPersistenceServiceModelSortingUnitFamilyCopyWith<$Res> {
  _$CartPersistenceServiceModelSortingUnitFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyIds = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      familyIds: null == familyIds
          ? _value.familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWith<$Res>
    implements $CartPersistenceServiceModelSortingUnitFamilyCopyWith<$Res> {
  factory _$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWith(
          _$CartPersistenceServiceModelSortingUnitFamilyImpl value,
          $Res Function(_$CartPersistenceServiceModelSortingUnitFamilyImpl)
              then) =
      __$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> familyIds, String name});
}

/// @nodoc
class __$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelSortingUnitFamilyCopyWithImpl<$Res,
        _$CartPersistenceServiceModelSortingUnitFamilyImpl>
    implements
        _$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWith<$Res> {
  __$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWithImpl(
      _$CartPersistenceServiceModelSortingUnitFamilyImpl _value,
      $Res Function(_$CartPersistenceServiceModelSortingUnitFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyIds = null,
    Object? name = null,
  }) {
    return _then(_$CartPersistenceServiceModelSortingUnitFamilyImpl(
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartPersistenceServiceModelSortingUnitFamilyImpl
    implements _CartPersistenceServiceModelSortingUnitFamily {
  const _$CartPersistenceServiceModelSortingUnitFamilyImpl(
      {required final List<String> familyIds, required this.name})
      : _familyIds = familyIds;

  final List<String> _familyIds;
  @override
  List<String> get familyIds {
    if (_familyIds is EqualUnmodifiableListView) return _familyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  final String name;

  @override
  String toString() {
    return 'CartPersistenceServiceModelSortingUnitFamily(familyIds: $familyIds, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartPersistenceServiceModelSortingUnitFamilyImpl &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_familyIds), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWith<
          _$CartPersistenceServiceModelSortingUnitFamilyImpl>
      get copyWith =>
          __$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWithImpl<
                  _$CartPersistenceServiceModelSortingUnitFamilyImpl>(
              this, _$identity);
}

abstract class _CartPersistenceServiceModelSortingUnitFamily
    implements CartPersistenceServiceModelSortingUnitFamily {
  const factory _CartPersistenceServiceModelSortingUnitFamily(
          {required final List<String> familyIds, required final String name}) =
      _$CartPersistenceServiceModelSortingUnitFamilyImpl;

  @override
  List<String> get familyIds;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CartPersistenceServiceModelSortingUnitFamilyImplCopyWith<
          _$CartPersistenceServiceModelSortingUnitFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
