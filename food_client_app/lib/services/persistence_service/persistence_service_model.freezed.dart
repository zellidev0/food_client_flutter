// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'persistence_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersistenceServiceModel {
  List<PersistenceServiceModelShoppingListRecipe> get recipes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersistenceServiceModelCopyWith<PersistenceServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelCopyWith<$Res> {
  factory $PersistenceServiceModelCopyWith(PersistenceServiceModel value,
          $Res Function(PersistenceServiceModel) then) =
      _$PersistenceServiceModelCopyWithImpl<$Res, PersistenceServiceModel>;
  @useResult
  $Res call({List<PersistenceServiceModelShoppingListRecipe> recipes});
}

/// @nodoc
class _$PersistenceServiceModelCopyWithImpl<$Res,
        $Val extends PersistenceServiceModel>
    implements $PersistenceServiceModelCopyWith<$Res> {
  _$PersistenceServiceModelCopyWithImpl(this._value, this._then);

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
              as List<PersistenceServiceModelShoppingListRecipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistenceServiceModelCopyWith<$Res>
    implements $PersistenceServiceModelCopyWith<$Res> {
  factory _$$_PersistenceServiceModelCopyWith(_$_PersistenceServiceModel value,
          $Res Function(_$_PersistenceServiceModel) then) =
      __$$_PersistenceServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PersistenceServiceModelShoppingListRecipe> recipes});
}

/// @nodoc
class __$$_PersistenceServiceModelCopyWithImpl<$Res>
    extends _$PersistenceServiceModelCopyWithImpl<$Res,
        _$_PersistenceServiceModel>
    implements _$$_PersistenceServiceModelCopyWith<$Res> {
  __$$_PersistenceServiceModelCopyWithImpl(_$_PersistenceServiceModel _value,
      $Res Function(_$_PersistenceServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_PersistenceServiceModel(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelShoppingListRecipe>,
    ));
  }
}

/// @nodoc

class _$_PersistenceServiceModel implements _PersistenceServiceModel {
  const _$_PersistenceServiceModel(
      {required final List<PersistenceServiceModelShoppingListRecipe> recipes})
      : _recipes = recipes;

  final List<PersistenceServiceModelShoppingListRecipe> _recipes;
  @override
  List<PersistenceServiceModelShoppingListRecipe> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'PersistenceServiceModel(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModel &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelCopyWith<_$_PersistenceServiceModel>
      get copyWith =>
          __$$_PersistenceServiceModelCopyWithImpl<_$_PersistenceServiceModel>(
              this, _$identity);
}

abstract class _PersistenceServiceModel implements PersistenceServiceModel {
  const factory _PersistenceServiceModel(
      {required final List<PersistenceServiceModelShoppingListRecipe>
          recipes}) = _$_PersistenceServiceModel;

  @override
  List<PersistenceServiceModelShoppingListRecipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelCopyWith<_$_PersistenceServiceModel>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelShoppingListRecipe
    _$PersistenceServiceModelShoppingListRecipeFromJson(
        Map<String, dynamic> json) {
  return _PersistenceServiceModelShoppingListRecipe.fromJson(json);
}

/// @nodoc
mixin _$PersistenceServiceModelShoppingListRecipe {
  @HiveField(0)
  List<PersistenceServiceModelShoppingListIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  Option<Uri> get imagePath => throw _privateConstructorUsedError;
  @HiveField(3)
  int get servings => throw _privateConstructorUsedError;
  @HiveField(4)
  String get recipeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelShoppingListRecipeCopyWith<
          PersistenceServiceModelShoppingListRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelShoppingListRecipeCopyWith<$Res> {
  factory $PersistenceServiceModelShoppingListRecipeCopyWith(
          PersistenceServiceModelShoppingListRecipe value,
          $Res Function(PersistenceServiceModelShoppingListRecipe) then) =
      _$PersistenceServiceModelShoppingListRecipeCopyWithImpl<$Res,
          PersistenceServiceModelShoppingListRecipe>;
  @useResult
  $Res call(
      {@HiveField(0)
          List<PersistenceServiceModelShoppingListIngredient> ingredients,
      @HiveField(1)
          String title,
      @HiveField(2)
          Option<Uri> imagePath,
      @HiveField(3)
          int servings,
      @HiveField(4)
          String recipeId});
}

/// @nodoc
class _$PersistenceServiceModelShoppingListRecipeCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelShoppingListRecipe>
    implements $PersistenceServiceModelShoppingListRecipeCopyWith<$Res> {
  _$PersistenceServiceModelShoppingListRecipeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? title = null,
    Object? imagePath = null,
    Object? servings = null,
    Object? recipeId = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelShoppingListIngredient>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistenceServiceModelShoppingListRecipeCopyWith<$Res>
    implements $PersistenceServiceModelShoppingListRecipeCopyWith<$Res> {
  factory _$$_PersistenceServiceModelShoppingListRecipeCopyWith(
          _$_PersistenceServiceModelShoppingListRecipe value,
          $Res Function(_$_PersistenceServiceModelShoppingListRecipe) then) =
      __$$_PersistenceServiceModelShoppingListRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          List<PersistenceServiceModelShoppingListIngredient> ingredients,
      @HiveField(1)
          String title,
      @HiveField(2)
          Option<Uri> imagePath,
      @HiveField(3)
          int servings,
      @HiveField(4)
          String recipeId});
}

/// @nodoc
class __$$_PersistenceServiceModelShoppingListRecipeCopyWithImpl<$Res>
    extends _$PersistenceServiceModelShoppingListRecipeCopyWithImpl<$Res,
        _$_PersistenceServiceModelShoppingListRecipe>
    implements _$$_PersistenceServiceModelShoppingListRecipeCopyWith<$Res> {
  __$$_PersistenceServiceModelShoppingListRecipeCopyWithImpl(
      _$_PersistenceServiceModelShoppingListRecipe _value,
      $Res Function(_$_PersistenceServiceModelShoppingListRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
    Object? title = null,
    Object? imagePath = null,
    Object? servings = null,
    Object? recipeId = null,
  }) {
    return _then(_$_PersistenceServiceModelShoppingListRecipe(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelShoppingListIngredient>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: 1, adapterName: 'PersistenceServiceModelShoppingListRecipeAdapter')
class _$_PersistenceServiceModelShoppingListRecipe
    implements _PersistenceServiceModelShoppingListRecipe {
  const _$_PersistenceServiceModelShoppingListRecipe(
      {@HiveField(0)
          required final List<PersistenceServiceModelShoppingListIngredient>
              ingredients,
      @HiveField(1)
          required this.title,
      @HiveField(2)
          required this.imagePath,
      @HiveField(3)
          required this.servings,
      @HiveField(4)
          required this.recipeId})
      : _ingredients = ingredients;

  factory _$_PersistenceServiceModelShoppingListRecipe.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelShoppingListRecipeFromJson(json);

  final List<PersistenceServiceModelShoppingListIngredient> _ingredients;
  @override
  @HiveField(0)
  List<PersistenceServiceModelShoppingListIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final Option<Uri> imagePath;
  @override
  @HiveField(3)
  final int servings;
  @override
  @HiveField(4)
  final String recipeId;

  @override
  String toString() {
    return 'PersistenceServiceModelShoppingListRecipe(ingredients: $ingredients, title: $title, imagePath: $imagePath, servings: $servings, recipeId: $recipeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelShoppingListRecipe &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ingredients),
      title,
      imagePath,
      servings,
      recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelShoppingListRecipeCopyWith<
          _$_PersistenceServiceModelShoppingListRecipe>
      get copyWith =>
          __$$_PersistenceServiceModelShoppingListRecipeCopyWithImpl<
              _$_PersistenceServiceModelShoppingListRecipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistenceServiceModelShoppingListRecipeToJson(
      this,
    );
  }
}

abstract class _PersistenceServiceModelShoppingListRecipe
    implements PersistenceServiceModelShoppingListRecipe {
  const factory _PersistenceServiceModelShoppingListRecipe(
          {@HiveField(0)
              required final List<PersistenceServiceModelShoppingListIngredient>
                  ingredients,
          @HiveField(1)
              required final String title,
          @HiveField(2)
              required final Option<Uri> imagePath,
          @HiveField(3)
              required final int servings,
          @HiveField(4)
              required final String recipeId}) =
      _$_PersistenceServiceModelShoppingListRecipe;

  factory _PersistenceServiceModelShoppingListRecipe.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelShoppingListRecipe.fromJson;

  @override
  @HiveField(0)
  List<PersistenceServiceModelShoppingListIngredient> get ingredients;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  Option<Uri> get imagePath;
  @override
  @HiveField(3)
  int get servings;
  @override
  @HiveField(4)
  String get recipeId;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelShoppingListRecipeCopyWith<
          _$_PersistenceServiceModelShoppingListRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelShoppingListIngredient
    _$PersistenceServiceModelShoppingListIngredientFromJson(
        Map<String, dynamic> json) {
  return _PersistenceServiceModelShoppingListIngredient.fromJson(json);
}

/// @nodoc
mixin _$PersistenceServiceModelShoppingListIngredient {
  @HiveField(0)
  String get ingredientId => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isTickedOff => throw _privateConstructorUsedError;
  @HiveField(3)
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  String get slug => throw _privateConstructorUsedError;
  @HiveField(5)
  String get displayedName => throw _privateConstructorUsedError;
  @HiveField(6)
  Option<double> get amount => throw _privateConstructorUsedError;
  @HiveField(7)
  Option<String> get unit => throw _privateConstructorUsedError;
  @HiveField(8)
  Option<PersistenceServiceModelShoppingListIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelShoppingListIngredientCopyWith<
          PersistenceServiceModelShoppingListIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelShoppingListIngredientCopyWith<$Res> {
  factory $PersistenceServiceModelShoppingListIngredientCopyWith(
          PersistenceServiceModelShoppingListIngredient value,
          $Res Function(PersistenceServiceModelShoppingListIngredient) then) =
      _$PersistenceServiceModelShoppingListIngredientCopyWithImpl<$Res,
          PersistenceServiceModelShoppingListIngredient>;
  @useResult
  $Res call(
      {@HiveField(0)
          String ingredientId,
      @HiveField(1)
          bool isTickedOff,
      @HiveField(3)
          Option<Uri> imageUrl,
      @HiveField(4)
          String slug,
      @HiveField(5)
          String displayedName,
      @HiveField(6)
          Option<double> amount,
      @HiveField(7)
          Option<String> unit,
      @HiveField(8)
          Option<PersistenceServiceModelShoppingListIngredientFamily> family});
}

/// @nodoc
class _$PersistenceServiceModelShoppingListIngredientCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelShoppingListIngredient>
    implements $PersistenceServiceModelShoppingListIngredientCopyWith<$Res> {
  _$PersistenceServiceModelShoppingListIngredientCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_value.copyWith(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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
              as Option<PersistenceServiceModelShoppingListIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistenceServiceModelShoppingListIngredientCopyWith<$Res>
    implements $PersistenceServiceModelShoppingListIngredientCopyWith<$Res> {
  factory _$$_PersistenceServiceModelShoppingListIngredientCopyWith(
          _$_PersistenceServiceModelShoppingListIngredient value,
          $Res Function(_$_PersistenceServiceModelShoppingListIngredient)
              then) =
      __$$_PersistenceServiceModelShoppingListIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          String ingredientId,
      @HiveField(1)
          bool isTickedOff,
      @HiveField(3)
          Option<Uri> imageUrl,
      @HiveField(4)
          String slug,
      @HiveField(5)
          String displayedName,
      @HiveField(6)
          Option<double> amount,
      @HiveField(7)
          Option<String> unit,
      @HiveField(8)
          Option<PersistenceServiceModelShoppingListIngredientFamily> family});
}

/// @nodoc
class __$$_PersistenceServiceModelShoppingListIngredientCopyWithImpl<$Res>
    extends _$PersistenceServiceModelShoppingListIngredientCopyWithImpl<$Res,
        _$_PersistenceServiceModelShoppingListIngredient>
    implements _$$_PersistenceServiceModelShoppingListIngredientCopyWith<$Res> {
  __$$_PersistenceServiceModelShoppingListIngredientCopyWithImpl(
      _$_PersistenceServiceModelShoppingListIngredient _value,
      $Res Function(_$_PersistenceServiceModelShoppingListIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientId = null,
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_$_PersistenceServiceModelShoppingListIngredient(
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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
              as Option<PersistenceServiceModelShoppingListIngredientFamily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: 0,
    adapterName: 'PersistenceServiceModelShoppingListIngredientAdapter')
class _$_PersistenceServiceModelShoppingListIngredient
    implements _PersistenceServiceModelShoppingListIngredient {
  const _$_PersistenceServiceModelShoppingListIngredient(
      {@HiveField(0) required this.ingredientId,
      @HiveField(1) required this.isTickedOff,
      @HiveField(3) required this.imageUrl,
      @HiveField(4) required this.slug,
      @HiveField(5) required this.displayedName,
      @HiveField(6) required this.amount,
      @HiveField(7) required this.unit,
      @HiveField(8) required this.family});

  factory _$_PersistenceServiceModelShoppingListIngredient.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelShoppingListIngredientFromJson(json);

  @override
  @HiveField(0)
  final String ingredientId;
  @override
  @HiveField(1)
  final bool isTickedOff;
  @override
  @HiveField(3)
  final Option<Uri> imageUrl;
  @override
  @HiveField(4)
  final String slug;
  @override
  @HiveField(5)
  final String displayedName;
  @override
  @HiveField(6)
  final Option<double> amount;
  @override
  @HiveField(7)
  final Option<String> unit;
  @override
  @HiveField(8)
  final Option<PersistenceServiceModelShoppingListIngredientFamily> family;

  @override
  String toString() {
    return 'PersistenceServiceModelShoppingListIngredient(ingredientId: $ingredientId, isTickedOff: $isTickedOff, imageUrl: $imageUrl, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelShoppingListIngredient &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ingredientId, isTickedOff,
      imageUrl, slug, displayedName, amount, unit, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelShoppingListIngredientCopyWith<
          _$_PersistenceServiceModelShoppingListIngredient>
      get copyWith =>
          __$$_PersistenceServiceModelShoppingListIngredientCopyWithImpl<
                  _$_PersistenceServiceModelShoppingListIngredient>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistenceServiceModelShoppingListIngredientToJson(
      this,
    );
  }
}

abstract class _PersistenceServiceModelShoppingListIngredient
    implements PersistenceServiceModelShoppingListIngredient {
  const factory _PersistenceServiceModelShoppingListIngredient(
      {@HiveField(0)
          required final String ingredientId,
      @HiveField(1)
          required final bool isTickedOff,
      @HiveField(3)
          required final Option<Uri> imageUrl,
      @HiveField(4)
          required final String slug,
      @HiveField(5)
          required final String displayedName,
      @HiveField(6)
          required final Option<double> amount,
      @HiveField(7)
          required final Option<String> unit,
      @HiveField(8)
          required final Option<
                  PersistenceServiceModelShoppingListIngredientFamily>
              family}) = _$_PersistenceServiceModelShoppingListIngredient;

  factory _PersistenceServiceModelShoppingListIngredient.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelShoppingListIngredient.fromJson;

  @override
  @HiveField(0)
  String get ingredientId;
  @override
  @HiveField(1)
  bool get isTickedOff;
  @override
  @HiveField(3)
  Option<Uri> get imageUrl;
  @override
  @HiveField(4)
  String get slug;
  @override
  @HiveField(5)
  String get displayedName;
  @override
  @HiveField(6)
  Option<double> get amount;
  @override
  @HiveField(7)
  Option<String> get unit;
  @override
  @HiveField(8)
  Option<PersistenceServiceModelShoppingListIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelShoppingListIngredientCopyWith<
          _$_PersistenceServiceModelShoppingListIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelShoppingListIngredientFamily
    _$PersistenceServiceModelShoppingListIngredientFamilyFromJson(
        Map<String, dynamic> json) {
  return _PersistenceServiceModelShoppingListIngredientFamily.fromJson(json);
}

/// @nodoc
mixin _$PersistenceServiceModelShoppingListIngredientFamily {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get type => throw _privateConstructorUsedError;
  @HiveField(2)
  Option<String> get iconPath => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelShoppingListIngredientFamilyCopyWith<
          PersistenceServiceModelShoppingListIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelShoppingListIngredientFamilyCopyWith<
    $Res> {
  factory $PersistenceServiceModelShoppingListIngredientFamilyCopyWith(
          PersistenceServiceModelShoppingListIngredientFamily value,
          $Res Function(PersistenceServiceModelShoppingListIngredientFamily)
              then) =
      _$PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<$Res,
          PersistenceServiceModelShoppingListIngredientFamily>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String type,
      @HiveField(2) Option<String> iconPath,
      @HiveField(3) String name,
      @HiveField(4) String slug});
}

/// @nodoc
class _$PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelShoppingListIngredientFamily>
    implements
        $PersistenceServiceModelShoppingListIngredientFamilyCopyWith<$Res> {
  _$PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl(
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
abstract class _$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWith<
        $Res>
    implements
        $PersistenceServiceModelShoppingListIngredientFamilyCopyWith<$Res> {
  factory _$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWith(
          _$_PersistenceServiceModelShoppingListIngredientFamily value,
          $Res Function(_$_PersistenceServiceModelShoppingListIngredientFamily)
              then) =
      __$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String type,
      @HiveField(2) Option<String> iconPath,
      @HiveField(3) String name,
      @HiveField(4) String slug});
}

/// @nodoc
class __$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<$Res>
    extends _$PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<
        $Res, _$_PersistenceServiceModelShoppingListIngredientFamily>
    implements
        _$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWith<$Res> {
  __$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl(
      _$_PersistenceServiceModelShoppingListIngredientFamily _value,
      $Res Function(_$_PersistenceServiceModelShoppingListIngredientFamily)
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
    return _then(_$_PersistenceServiceModelShoppingListIngredientFamily(
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
@JsonSerializable()
@HiveType(
    typeId: 2,
    adapterName: 'PersistenceServiceModelShoppingListIngredientFamilyAdapter')
class _$_PersistenceServiceModelShoppingListIngredientFamily
    implements _PersistenceServiceModelShoppingListIngredientFamily {
  const _$_PersistenceServiceModelShoppingListIngredientFamily(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.type,
      @HiveField(2) required this.iconPath,
      @HiveField(3) required this.name,
      @HiveField(4) required this.slug});

  factory _$_PersistenceServiceModelShoppingListIngredientFamily.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelShoppingListIngredientFamilyFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String type;
  @override
  @HiveField(2)
  final Option<String> iconPath;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  final String slug;

  @override
  String toString() {
    return 'PersistenceServiceModelShoppingListIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelShoppingListIngredientFamily &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconPath, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWith<
          _$_PersistenceServiceModelShoppingListIngredientFamily>
      get copyWith =>
          __$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWithImpl<
                  _$_PersistenceServiceModelShoppingListIngredientFamily>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistenceServiceModelShoppingListIngredientFamilyToJson(
      this,
    );
  }
}

abstract class _PersistenceServiceModelShoppingListIngredientFamily
    implements PersistenceServiceModelShoppingListIngredientFamily {
  const factory _PersistenceServiceModelShoppingListIngredientFamily(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String type,
          @HiveField(2) required final Option<String> iconPath,
          @HiveField(3) required final String name,
          @HiveField(4) required final String slug}) =
      _$_PersistenceServiceModelShoppingListIngredientFamily;

  factory _PersistenceServiceModelShoppingListIngredientFamily.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelShoppingListIngredientFamily.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get type;
  @override
  @HiveField(2)
  Option<String> get iconPath;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(4)
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelShoppingListIngredientFamilyCopyWith<
          _$_PersistenceServiceModelShoppingListIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelSortingUnit _$PersistenceServiceModelSortingUnitFromJson(
    Map<String, dynamic> json) {
  return _PersistenceServiceModelSortingUnit.fromJson(json);
}

/// @nodoc
mixin _$PersistenceServiceModelSortingUnit {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<PersistenceServiceModelSortingUnitIngredientFamily> get families =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelSortingUnitCopyWith<
          PersistenceServiceModelSortingUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelSortingUnitCopyWith<$Res> {
  factory $PersistenceServiceModelSortingUnitCopyWith(
          PersistenceServiceModelSortingUnit value,
          $Res Function(PersistenceServiceModelSortingUnit) then) =
      _$PersistenceServiceModelSortingUnitCopyWithImpl<$Res,
          PersistenceServiceModelSortingUnit>;
  @useResult
  $Res call(
      {@HiveField(0)
          String id,
      @HiveField(1)
          String name,
      @HiveField(2)
          List<PersistenceServiceModelSortingUnitIngredientFamily> families});
}

/// @nodoc
class _$PersistenceServiceModelSortingUnitCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelSortingUnit>
    implements $PersistenceServiceModelSortingUnitCopyWith<$Res> {
  _$PersistenceServiceModelSortingUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? families = null,
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
      families: null == families
          ? _value.families
          : families // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelSortingUnitIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersistenceServiceModelSortingUnitCopyWith<$Res>
    implements $PersistenceServiceModelSortingUnitCopyWith<$Res> {
  factory _$$_PersistenceServiceModelSortingUnitCopyWith(
          _$_PersistenceServiceModelSortingUnit value,
          $Res Function(_$_PersistenceServiceModelSortingUnit) then) =
      __$$_PersistenceServiceModelSortingUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          String id,
      @HiveField(1)
          String name,
      @HiveField(2)
          List<PersistenceServiceModelSortingUnitIngredientFamily> families});
}

/// @nodoc
class __$$_PersistenceServiceModelSortingUnitCopyWithImpl<$Res>
    extends _$PersistenceServiceModelSortingUnitCopyWithImpl<$Res,
        _$_PersistenceServiceModelSortingUnit>
    implements _$$_PersistenceServiceModelSortingUnitCopyWith<$Res> {
  __$$_PersistenceServiceModelSortingUnitCopyWithImpl(
      _$_PersistenceServiceModelSortingUnit _value,
      $Res Function(_$_PersistenceServiceModelSortingUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? families = null,
  }) {
    return _then(_$_PersistenceServiceModelSortingUnit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      families: null == families
          ? _value._families
          : families // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelSortingUnitIngredientFamily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'PersistenceServiceModelSortingUnitAdapter')
class _$_PersistenceServiceModelSortingUnit
    implements _PersistenceServiceModelSortingUnit {
  const _$_PersistenceServiceModelSortingUnit(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.name,
      @HiveField(2)
          required final List<
                  PersistenceServiceModelSortingUnitIngredientFamily>
              families})
      : _families = families;

  factory _$_PersistenceServiceModelSortingUnit.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelSortingUnitFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  final List<PersistenceServiceModelSortingUnitIngredientFamily> _families;
  @override
  @HiveField(2)
  List<PersistenceServiceModelSortingUnitIngredientFamily> get families {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_families);
  }

  @override
  String toString() {
    return 'PersistenceServiceModelSortingUnit(id: $id, name: $name, families: $families)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelSortingUnit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._families, _families));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_families));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelSortingUnitCopyWith<
          _$_PersistenceServiceModelSortingUnit>
      get copyWith => __$$_PersistenceServiceModelSortingUnitCopyWithImpl<
          _$_PersistenceServiceModelSortingUnit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistenceServiceModelSortingUnitToJson(
      this,
    );
  }
}

abstract class _PersistenceServiceModelSortingUnit
    implements PersistenceServiceModelSortingUnit {
  const factory _PersistenceServiceModelSortingUnit(
      {@HiveField(0)
          required final String id,
      @HiveField(1)
          required final String name,
      @HiveField(2)
          required final List<
                  PersistenceServiceModelSortingUnitIngredientFamily>
              families}) = _$_PersistenceServiceModelSortingUnit;

  factory _PersistenceServiceModelSortingUnit.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelSortingUnit.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<PersistenceServiceModelSortingUnitIngredientFamily> get families;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelSortingUnitCopyWith<
          _$_PersistenceServiceModelSortingUnit>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelSortingUnitIngredientFamily
    _$PersistenceServiceModelSortingUnitIngredientFamilyFromJson(
        Map<String, dynamic> json) {
  return _PersistenceServiceModelSortingUnitIngredientFamily.fromJson(json);
}

/// @nodoc
mixin _$PersistenceServiceModelSortingUnitIngredientFamily {
  @HiveField(0)
  List<String> get familyIds => throw _privateConstructorUsedError;
  @HiveField(1)
  String get type => throw _privateConstructorUsedError;
  @HiveField(2)
  Option<String> get iconUrlAsString => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<
          PersistenceServiceModelSortingUnitIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<
    $Res> {
  factory $PersistenceServiceModelSortingUnitIngredientFamilyCopyWith(
          PersistenceServiceModelSortingUnitIngredientFamily value,
          $Res Function(PersistenceServiceModelSortingUnitIngredientFamily)
              then) =
      _$PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<$Res,
          PersistenceServiceModelSortingUnitIngredientFamily>;
  @useResult
  $Res call(
      {@HiveField(0) List<String> familyIds,
      @HiveField(1) String type,
      @HiveField(2) Option<String> iconUrlAsString,
      @HiveField(3) String name,
      @HiveField(4) String slug});
}

/// @nodoc
class _$PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelSortingUnitIngredientFamily>
    implements
        $PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<$Res> {
  _$PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyIds = null,
    Object? type = null,
    Object? iconUrlAsString = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      familyIds: null == familyIds
          ? _value.familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrlAsString: null == iconUrlAsString
          ? _value.iconUrlAsString
          : iconUrlAsString // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<
        $Res>
    implements
        $PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<$Res> {
  factory _$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWith(
          _$_PersistenceServiceModelSortingUnitIngredientFamily value,
          $Res Function(_$_PersistenceServiceModelSortingUnitIngredientFamily)
              then) =
      __$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<String> familyIds,
      @HiveField(1) String type,
      @HiveField(2) Option<String> iconUrlAsString,
      @HiveField(3) String name,
      @HiveField(4) String slug});
}

/// @nodoc
class __$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<$Res>
    extends _$PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<
        $Res, _$_PersistenceServiceModelSortingUnitIngredientFamily>
    implements
        _$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<$Res> {
  __$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl(
      _$_PersistenceServiceModelSortingUnitIngredientFamily _value,
      $Res Function(_$_PersistenceServiceModelSortingUnitIngredientFamily)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyIds = null,
    Object? type = null,
    Object? iconUrlAsString = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$_PersistenceServiceModelSortingUnitIngredientFamily(
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrlAsString: null == iconUrlAsString
          ? _value.iconUrlAsString
          : iconUrlAsString // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
@HiveType(
    typeId: 4,
    adapterName: 'PersistenceServiceModelSortingUnitIngredientFamilyAdapter')
class _$_PersistenceServiceModelSortingUnitIngredientFamily
    implements _PersistenceServiceModelSortingUnitIngredientFamily {
  const _$_PersistenceServiceModelSortingUnitIngredientFamily(
      {@HiveField(0) required final List<String> familyIds,
      @HiveField(1) required this.type,
      @HiveField(2) required this.iconUrlAsString,
      @HiveField(3) required this.name,
      @HiveField(4) required this.slug})
      : _familyIds = familyIds;

  factory _$_PersistenceServiceModelSortingUnitIngredientFamily.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelSortingUnitIngredientFamilyFromJson(json);

  final List<String> _familyIds;
  @override
  @HiveField(0)
  List<String> get familyIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  @HiveField(1)
  final String type;
  @override
  @HiveField(2)
  final Option<String> iconUrlAsString;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  final String slug;

  @override
  String toString() {
    return 'PersistenceServiceModelSortingUnitIngredientFamily(familyIds: $familyIds, type: $type, iconUrlAsString: $iconUrlAsString, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelSortingUnitIngredientFamily &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrlAsString, iconUrlAsString) ||
                other.iconUrlAsString == iconUrlAsString) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_familyIds),
      type,
      iconUrlAsString,
      name,
      slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<
          _$_PersistenceServiceModelSortingUnitIngredientFamily>
      get copyWith =>
          __$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWithImpl<
                  _$_PersistenceServiceModelSortingUnitIngredientFamily>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersistenceServiceModelSortingUnitIngredientFamilyToJson(
      this,
    );
  }
}

abstract class _PersistenceServiceModelSortingUnitIngredientFamily
    implements PersistenceServiceModelSortingUnitIngredientFamily {
  const factory _PersistenceServiceModelSortingUnitIngredientFamily(
          {@HiveField(0) required final List<String> familyIds,
          @HiveField(1) required final String type,
          @HiveField(2) required final Option<String> iconUrlAsString,
          @HiveField(3) required final String name,
          @HiveField(4) required final String slug}) =
      _$_PersistenceServiceModelSortingUnitIngredientFamily;

  factory _PersistenceServiceModelSortingUnitIngredientFamily.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelSortingUnitIngredientFamily.fromJson;

  @override
  @HiveField(0)
  List<String> get familyIds;
  @override
  @HiveField(1)
  String get type;
  @override
  @HiveField(2)
  Option<String> get iconUrlAsString;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(4)
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelSortingUnitIngredientFamilyCopyWith<
          _$_PersistenceServiceModelSortingUnitIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

PersistenceServiceModelActiveSorting
    _$PersistenceServiceModelActiveSortingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'unit':
      return PersistenceServiceModelActiveSortingUnit.fromJson(json);
    case 'custom':
      return PersistenceServiceModelActiveSortingCustom.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PersistenceServiceModelActiveSorting',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PersistenceServiceModelActiveSorting {
  @HiveField(1)
  List<String> get customSortingIngredientIds =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)
        unit,
    required TResult Function(
            @HiveField(0) List<String> customSortingIngredientIds)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult? Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersistenceServiceModelActiveSortingUnit value)
        unit,
    required TResult Function(PersistenceServiceModelActiveSortingCustom value)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult? Function(PersistenceServiceModelActiveSortingCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult Function(PersistenceServiceModelActiveSortingCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistenceServiceModelActiveSortingCopyWith<
          PersistenceServiceModelActiveSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory $PersistenceServiceModelActiveSortingCopyWith(
          PersistenceServiceModelActiveSorting value,
          $Res Function(PersistenceServiceModelActiveSorting) then) =
      _$PersistenceServiceModelActiveSortingCopyWithImpl<$Res,
          PersistenceServiceModelActiveSorting>;
  @useResult
  $Res call({@HiveField(1) List<String> customSortingIngredientIds});
}

/// @nodoc
class _$PersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        $Val extends PersistenceServiceModelActiveSorting>
    implements $PersistenceServiceModelActiveSortingCopyWith<$Res> {
  _$PersistenceServiceModelActiveSortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customSortingIngredientIds = null,
  }) {
    return _then(_value.copyWith(
      customSortingIngredientIds: null == customSortingIngredientIds
          ? _value.customSortingIngredientIds
          : customSortingIngredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersistenceServiceModelActiveSortingUnitCopyWith<$Res>
    implements $PersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory _$$PersistenceServiceModelActiveSortingUnitCopyWith(
          _$PersistenceServiceModelActiveSortingUnit value,
          $Res Function(_$PersistenceServiceModelActiveSortingUnit) then) =
      __$$PersistenceServiceModelActiveSortingUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String activeSortingUnitId,
      @HiveField(1) List<String> customSortingIngredientIds});
}

/// @nodoc
class __$$PersistenceServiceModelActiveSortingUnitCopyWithImpl<$Res>
    extends _$PersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        _$PersistenceServiceModelActiveSortingUnit>
    implements _$$PersistenceServiceModelActiveSortingUnitCopyWith<$Res> {
  __$$PersistenceServiceModelActiveSortingUnitCopyWithImpl(
      _$PersistenceServiceModelActiveSortingUnit _value,
      $Res Function(_$PersistenceServiceModelActiveSortingUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSortingUnitId = null,
    Object? customSortingIngredientIds = null,
  }) {
    return _then(_$PersistenceServiceModelActiveSortingUnit(
      activeSortingUnitId: null == activeSortingUnitId
          ? _value.activeSortingUnitId
          : activeSortingUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      customSortingIngredientIds: null == customSortingIngredientIds
          ? _value._customSortingIngredientIds
          : customSortingIngredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: 5, adapterName: 'PersistenceServiceModelActiveSortingUnitAdapter')
class _$PersistenceServiceModelActiveSortingUnit
    implements PersistenceServiceModelActiveSortingUnit {
  const _$PersistenceServiceModelActiveSortingUnit(
      {@HiveField(0) required this.activeSortingUnitId,
      @HiveField(1) required final List<String> customSortingIngredientIds,
      final String? $type})
      : _customSortingIngredientIds = customSortingIngredientIds,
        $type = $type ?? 'unit';

  factory _$PersistenceServiceModelActiveSortingUnit.fromJson(
          Map<String, dynamic> json) =>
      _$$PersistenceServiceModelActiveSortingUnitFromJson(json);

  @override
  @HiveField(0)
  final String activeSortingUnitId;
  final List<String> _customSortingIngredientIds;
  @override
  @HiveField(1)
  List<String> get customSortingIngredientIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customSortingIngredientIds);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersistenceServiceModelActiveSorting.unit(activeSortingUnitId: $activeSortingUnitId, customSortingIngredientIds: $customSortingIngredientIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersistenceServiceModelActiveSortingUnit &&
            (identical(other.activeSortingUnitId, activeSortingUnitId) ||
                other.activeSortingUnitId == activeSortingUnitId) &&
            const DeepCollectionEquality().equals(
                other._customSortingIngredientIds,
                _customSortingIngredientIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activeSortingUnitId,
      const DeepCollectionEquality().hash(_customSortingIngredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersistenceServiceModelActiveSortingUnitCopyWith<
          _$PersistenceServiceModelActiveSortingUnit>
      get copyWith => __$$PersistenceServiceModelActiveSortingUnitCopyWithImpl<
          _$PersistenceServiceModelActiveSortingUnit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)
        unit,
    required TResult Function(
            @HiveField(0) List<String> customSortingIngredientIds)
        custom,
  }) {
    return unit(activeSortingUnitId, customSortingIngredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult? Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
  }) {
    return unit?.call(activeSortingUnitId, customSortingIngredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(activeSortingUnitId, customSortingIngredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersistenceServiceModelActiveSortingUnit value)
        unit,
    required TResult Function(PersistenceServiceModelActiveSortingCustom value)
        custom,
  }) {
    return unit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult? Function(PersistenceServiceModelActiveSortingCustom value)? custom,
  }) {
    return unit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult Function(PersistenceServiceModelActiveSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersistenceServiceModelActiveSortingUnitToJson(
      this,
    );
  }
}

abstract class PersistenceServiceModelActiveSortingUnit
    implements PersistenceServiceModelActiveSorting {
  const factory PersistenceServiceModelActiveSortingUnit(
          {@HiveField(0)
              required final String activeSortingUnitId,
          @HiveField(1)
              required final List<String> customSortingIngredientIds}) =
      _$PersistenceServiceModelActiveSortingUnit;

  factory PersistenceServiceModelActiveSortingUnit.fromJson(
          Map<String, dynamic> json) =
      _$PersistenceServiceModelActiveSortingUnit.fromJson;

  @HiveField(0)
  String get activeSortingUnitId;
  @override
  @HiveField(1)
  List<String> get customSortingIngredientIds;
  @override
  @JsonKey(ignore: true)
  _$$PersistenceServiceModelActiveSortingUnitCopyWith<
          _$PersistenceServiceModelActiveSortingUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersistenceServiceModelActiveSortingCustomCopyWith<$Res>
    implements $PersistenceServiceModelActiveSortingCopyWith<$Res> {
  factory _$$PersistenceServiceModelActiveSortingCustomCopyWith(
          _$PersistenceServiceModelActiveSortingCustom value,
          $Res Function(_$PersistenceServiceModelActiveSortingCustom) then) =
      __$$PersistenceServiceModelActiveSortingCustomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<String> customSortingIngredientIds});
}

/// @nodoc
class __$$PersistenceServiceModelActiveSortingCustomCopyWithImpl<$Res>
    extends _$PersistenceServiceModelActiveSortingCopyWithImpl<$Res,
        _$PersistenceServiceModelActiveSortingCustom>
    implements _$$PersistenceServiceModelActiveSortingCustomCopyWith<$Res> {
  __$$PersistenceServiceModelActiveSortingCustomCopyWithImpl(
      _$PersistenceServiceModelActiveSortingCustom _value,
      $Res Function(_$PersistenceServiceModelActiveSortingCustom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customSortingIngredientIds = null,
  }) {
    return _then(_$PersistenceServiceModelActiveSortingCustom(
      customSortingIngredientIds: null == customSortingIngredientIds
          ? _value._customSortingIngredientIds
          : customSortingIngredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(
    typeId: 6, adapterName: 'PersistenceServiceModelActiveSortingCustomAdapter')
class _$PersistenceServiceModelActiveSortingCustom
    implements PersistenceServiceModelActiveSortingCustom {
  const _$PersistenceServiceModelActiveSortingCustom(
      {@HiveField(0) required final List<String> customSortingIngredientIds,
      final String? $type})
      : _customSortingIngredientIds = customSortingIngredientIds,
        $type = $type ?? 'custom';

  factory _$PersistenceServiceModelActiveSortingCustom.fromJson(
          Map<String, dynamic> json) =>
      _$$PersistenceServiceModelActiveSortingCustomFromJson(json);

  final List<String> _customSortingIngredientIds;
  @override
  @HiveField(0)
  List<String> get customSortingIngredientIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customSortingIngredientIds);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PersistenceServiceModelActiveSorting.custom(customSortingIngredientIds: $customSortingIngredientIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersistenceServiceModelActiveSortingCustom &&
            const DeepCollectionEquality().equals(
                other._customSortingIngredientIds,
                _customSortingIngredientIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_customSortingIngredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersistenceServiceModelActiveSortingCustomCopyWith<
          _$PersistenceServiceModelActiveSortingCustom>
      get copyWith =>
          __$$PersistenceServiceModelActiveSortingCustomCopyWithImpl<
              _$PersistenceServiceModelActiveSortingCustom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)
        unit,
    required TResult Function(
            @HiveField(0) List<String> customSortingIngredientIds)
        custom,
  }) {
    return custom(customSortingIngredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult? Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
  }) {
    return custom?.call(customSortingIngredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String activeSortingUnitId,
            @HiveField(1) List<String> customSortingIngredientIds)?
        unit,
    TResult Function(@HiveField(0) List<String> customSortingIngredientIds)?
        custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(customSortingIngredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersistenceServiceModelActiveSortingUnit value)
        unit,
    required TResult Function(PersistenceServiceModelActiveSortingCustom value)
        custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult? Function(PersistenceServiceModelActiveSortingCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersistenceServiceModelActiveSortingUnit value)? unit,
    TResult Function(PersistenceServiceModelActiveSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersistenceServiceModelActiveSortingCustomToJson(
      this,
    );
  }
}

abstract class PersistenceServiceModelActiveSortingCustom
    implements PersistenceServiceModelActiveSorting {
  const factory PersistenceServiceModelActiveSortingCustom(
          {@HiveField(0)
              required final List<String> customSortingIngredientIds}) =
      _$PersistenceServiceModelActiveSortingCustom;

  factory PersistenceServiceModelActiveSortingCustom.fromJson(
          Map<String, dynamic> json) =
      _$PersistenceServiceModelActiveSortingCustom.fromJson;

  @override
  @HiveField(0)
  List<String> get customSortingIngredientIds;
  @override
  @JsonKey(ignore: true)
  _$$PersistenceServiceModelActiveSortingCustomCopyWith<
          _$PersistenceServiceModelActiveSortingCustom>
      get copyWith => throw _privateConstructorUsedError;
}
