// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_recipe_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleRecipePersistenceServiceRecipe {
  List<SingleRecipePersistenceServiceIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipePersistenceServiceRecipeCopyWith<
          SingleRecipePersistenceServiceRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipePersistenceServiceRecipeCopyWith<$Res> {
  factory $SingleRecipePersistenceServiceRecipeCopyWith(
          SingleRecipePersistenceServiceRecipe value,
          $Res Function(SingleRecipePersistenceServiceRecipe) then) =
      _$SingleRecipePersistenceServiceRecipeCopyWithImpl<$Res,
          SingleRecipePersistenceServiceRecipe>;
  @useResult
  $Res call(
      {List<SingleRecipePersistenceServiceIngredient> ingredients,
      Option<Uri> imagePath,
      String recipeId,
      String title,
      int servings});
}

/// @nodoc
class _$SingleRecipePersistenceServiceRecipeCopyWithImpl<$Res,
        $Val extends SingleRecipePersistenceServiceRecipe>
    implements $SingleRecipePersistenceServiceRecipeCopyWith<$Res> {
  _$SingleRecipePersistenceServiceRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? imagePath = null,
    Object? recipeId = null,
    Object? title = null,
    Object? servings = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipePersistenceServiceIngredient>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleRecipePersistenceServiceRecipeCopyWith<$Res>
    implements $SingleRecipePersistenceServiceRecipeCopyWith<$Res> {
  factory _$$_SingleRecipePersistenceServiceRecipeCopyWith(
          _$_SingleRecipePersistenceServiceRecipe value,
          $Res Function(_$_SingleRecipePersistenceServiceRecipe) then) =
      __$$_SingleRecipePersistenceServiceRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SingleRecipePersistenceServiceIngredient> ingredients,
      Option<Uri> imagePath,
      String recipeId,
      String title,
      int servings});
}

/// @nodoc
class __$$_SingleRecipePersistenceServiceRecipeCopyWithImpl<$Res>
    extends _$SingleRecipePersistenceServiceRecipeCopyWithImpl<$Res,
        _$_SingleRecipePersistenceServiceRecipe>
    implements _$$_SingleRecipePersistenceServiceRecipeCopyWith<$Res> {
  __$$_SingleRecipePersistenceServiceRecipeCopyWithImpl(
      _$_SingleRecipePersistenceServiceRecipe _value,
      $Res Function(_$_SingleRecipePersistenceServiceRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? imagePath = null,
    Object? recipeId = null,
    Object? title = null,
    Object? servings = null,
  }) {
    return _then(_$_SingleRecipePersistenceServiceRecipe(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipePersistenceServiceIngredient>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SingleRecipePersistenceServiceRecipe
    implements _SingleRecipePersistenceServiceRecipe {
  const _$_SingleRecipePersistenceServiceRecipe(
      {required final List<SingleRecipePersistenceServiceIngredient>
          ingredients,
      required this.imagePath,
      required this.recipeId,
      required this.title,
      required this.servings})
      : _ingredients = ingredients;

  final List<SingleRecipePersistenceServiceIngredient> _ingredients;
  @override
  List<SingleRecipePersistenceServiceIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final Option<Uri> imagePath;
  @override
  final String recipeId;
  @override
  final String title;
  @override
  final int servings;

  @override
  String toString() {
    return 'SingleRecipePersistenceServiceRecipe(ingredients: $ingredients, imagePath: $imagePath, recipeId: $recipeId, title: $title, servings: $servings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipePersistenceServiceRecipe &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.servings, servings) ||
                other.servings == servings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ingredients),
      imagePath,
      recipeId,
      title,
      servings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SingleRecipePersistenceServiceRecipeCopyWith<
          _$_SingleRecipePersistenceServiceRecipe>
      get copyWith => __$$_SingleRecipePersistenceServiceRecipeCopyWithImpl<
          _$_SingleRecipePersistenceServiceRecipe>(this, _$identity);
}

abstract class _SingleRecipePersistenceServiceRecipe
    implements SingleRecipePersistenceServiceRecipe {
  const factory _SingleRecipePersistenceServiceRecipe(
      {required final List<SingleRecipePersistenceServiceIngredient>
          ingredients,
      required final Option<Uri> imagePath,
      required final String recipeId,
      required final String title,
      required final int servings}) = _$_SingleRecipePersistenceServiceRecipe;

  @override
  List<SingleRecipePersistenceServiceIngredient> get ingredients;
  @override
  Option<Uri> get imagePath;
  @override
  String get recipeId;
  @override
  String get title;
  @override
  int get servings;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipePersistenceServiceRecipeCopyWith<
          _$_SingleRecipePersistenceServiceRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipePersistenceServiceIngredient {
  bool get isTickedOff => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  Option<SingleRecipePersistenceServiceIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipePersistenceServiceIngredientCopyWith<
          SingleRecipePersistenceServiceIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipePersistenceServiceIngredientCopyWith<$Res> {
  factory $SingleRecipePersistenceServiceIngredientCopyWith(
          SingleRecipePersistenceServiceIngredient value,
          $Res Function(SingleRecipePersistenceServiceIngredient) then) =
      _$SingleRecipePersistenceServiceIngredientCopyWithImpl<$Res,
          SingleRecipePersistenceServiceIngredient>;
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<SingleRecipePersistenceServiceIngredientFamily> family});
}

/// @nodoc
class _$SingleRecipePersistenceServiceIngredientCopyWithImpl<$Res,
        $Val extends SingleRecipePersistenceServiceIngredient>
    implements $SingleRecipePersistenceServiceIngredientCopyWith<$Res> {
  _$SingleRecipePersistenceServiceIngredientCopyWithImpl(
      this._value, this._then);

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
              as Option<SingleRecipePersistenceServiceIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleRecipePersistenceServiceIngredientCopyWith<$Res>
    implements $SingleRecipePersistenceServiceIngredientCopyWith<$Res> {
  factory _$$_SingleRecipePersistenceServiceIngredientCopyWith(
          _$_SingleRecipePersistenceServiceIngredient value,
          $Res Function(_$_SingleRecipePersistenceServiceIngredient) then) =
      __$$_SingleRecipePersistenceServiceIngredientCopyWithImpl<$Res>;
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
      Option<SingleRecipePersistenceServiceIngredientFamily> family});
}

/// @nodoc
class __$$_SingleRecipePersistenceServiceIngredientCopyWithImpl<$Res>
    extends _$SingleRecipePersistenceServiceIngredientCopyWithImpl<$Res,
        _$_SingleRecipePersistenceServiceIngredient>
    implements _$$_SingleRecipePersistenceServiceIngredientCopyWith<$Res> {
  __$$_SingleRecipePersistenceServiceIngredientCopyWithImpl(
      _$_SingleRecipePersistenceServiceIngredient _value,
      $Res Function(_$_SingleRecipePersistenceServiceIngredient) _then)
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
    return _then(_$_SingleRecipePersistenceServiceIngredient(
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
              as Option<SingleRecipePersistenceServiceIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$_SingleRecipePersistenceServiceIngredient
    implements _SingleRecipePersistenceServiceIngredient {
  const _$_SingleRecipePersistenceServiceIngredient(
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
  final Option<SingleRecipePersistenceServiceIngredientFamily> family;

  @override
  String toString() {
    return 'SingleRecipePersistenceServiceIngredient(isTickedOff: $isTickedOff, imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipePersistenceServiceIngredient &&
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
  _$$_SingleRecipePersistenceServiceIngredientCopyWith<
          _$_SingleRecipePersistenceServiceIngredient>
      get copyWith => __$$_SingleRecipePersistenceServiceIngredientCopyWithImpl<
          _$_SingleRecipePersistenceServiceIngredient>(this, _$identity);
}

abstract class _SingleRecipePersistenceServiceIngredient
    implements SingleRecipePersistenceServiceIngredient {
  const factory _SingleRecipePersistenceServiceIngredient(
      {required final bool isTickedOff,
      required final Option<Uri> imageUrl,
      required final String ingredientId,
      required final String slug,
      required final String displayedName,
      required final Option<double> amount,
      required final Option<String> unit,
      required final Option<SingleRecipePersistenceServiceIngredientFamily>
          family}) = _$_SingleRecipePersistenceServiceIngredient;

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
  Option<SingleRecipePersistenceServiceIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipePersistenceServiceIngredientCopyWith<
          _$_SingleRecipePersistenceServiceIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipePersistenceServiceIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipePersistenceServiceIngredientFamilyCopyWith<
          SingleRecipePersistenceServiceIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipePersistenceServiceIngredientFamilyCopyWith<$Res> {
  factory $SingleRecipePersistenceServiceIngredientFamilyCopyWith(
          SingleRecipePersistenceServiceIngredientFamily value,
          $Res Function(SingleRecipePersistenceServiceIngredientFamily) then) =
      _$SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<$Res,
          SingleRecipePersistenceServiceIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<$Res,
        $Val extends SingleRecipePersistenceServiceIngredientFamily>
    implements $SingleRecipePersistenceServiceIngredientFamilyCopyWith<$Res> {
  _$SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl(
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
abstract class _$$_SingleRecipePersistenceServiceIngredientFamilyCopyWith<$Res>
    implements $SingleRecipePersistenceServiceIngredientFamilyCopyWith<$Res> {
  factory _$$_SingleRecipePersistenceServiceIngredientFamilyCopyWith(
          _$_SingleRecipePersistenceServiceIngredientFamily value,
          $Res Function(_$_SingleRecipePersistenceServiceIngredientFamily)
              then) =
      __$$_SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<$Res>;
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
class __$$_SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<$Res>
    extends _$SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<$Res,
        _$_SingleRecipePersistenceServiceIngredientFamily>
    implements
        _$$_SingleRecipePersistenceServiceIngredientFamilyCopyWith<$Res> {
  __$$_SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl(
      _$_SingleRecipePersistenceServiceIngredientFamily _value,
      $Res Function(_$_SingleRecipePersistenceServiceIngredientFamily) _then)
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
    return _then(_$_SingleRecipePersistenceServiceIngredientFamily(
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

class _$_SingleRecipePersistenceServiceIngredientFamily
    implements _SingleRecipePersistenceServiceIngredientFamily {
  const _$_SingleRecipePersistenceServiceIngredientFamily(
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
    return 'SingleRecipePersistenceServiceIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipePersistenceServiceIngredientFamily &&
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
  _$$_SingleRecipePersistenceServiceIngredientFamilyCopyWith<
          _$_SingleRecipePersistenceServiceIngredientFamily>
      get copyWith =>
          __$$_SingleRecipePersistenceServiceIngredientFamilyCopyWithImpl<
                  _$_SingleRecipePersistenceServiceIngredientFamily>(
              this, _$identity);
}

abstract class _SingleRecipePersistenceServiceIngredientFamily
    implements SingleRecipePersistenceServiceIngredientFamily {
  const factory _SingleRecipePersistenceServiceIngredientFamily(
          {required final String id,
          required final String type,
          required final Option<String> iconPath,
          required final String name,
          required final String slug}) =
      _$_SingleRecipePersistenceServiceIngredientFamily;

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
  _$$_SingleRecipePersistenceServiceIngredientFamilyCopyWith<
          _$_SingleRecipePersistenceServiceIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}
