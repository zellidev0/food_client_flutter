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
  List<PersistenceServiceModelShoppingListIngredient> get ingredients =>
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
  $Res call({List<PersistenceServiceModelShoppingListIngredient> ingredients});
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
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelShoppingListIngredient>,
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
  $Res call({List<PersistenceServiceModelShoppingListIngredient> ingredients});
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
    Object? ingredients = null,
  }) {
    return _then(_$_PersistenceServiceModel(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<PersistenceServiceModelShoppingListIngredient>,
    ));
  }
}

/// @nodoc

class _$_PersistenceServiceModel implements _PersistenceServiceModel {
  const _$_PersistenceServiceModel(
      {required final List<PersistenceServiceModelShoppingListIngredient>
          ingredients})
      : _ingredients = ingredients;

  final List<PersistenceServiceModelShoppingListIngredient> _ingredients;
  @override
  List<PersistenceServiceModelShoppingListIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'PersistenceServiceModel(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModel &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

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
      {required final List<PersistenceServiceModelShoppingListIngredient>
          ingredients}) = _$_PersistenceServiceModel;

  @override
  List<PersistenceServiceModelShoppingListIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelCopyWith<_$_PersistenceServiceModel>
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
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isTickedOff => throw _privateConstructorUsedError;
  @HiveField(2)
  String get recipeId => throw _privateConstructorUsedError;
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
      {@HiveField(0) String id,
      @HiveField(1) bool isTickedOff,
      @HiveField(2) String recipeId,
      @HiveField(3) Option<Uri> imageUrl,
      @HiveField(4) String slug,
      @HiveField(5) String displayedName,
      @HiveField(6) Option<double> amount,
      @HiveField(7) Option<String> unit});
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
    Object? id = null,
    Object? isTickedOff = null,
    Object? recipeId = null,
    Object? imageUrl = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@HiveField(0) String id,
      @HiveField(1) bool isTickedOff,
      @HiveField(2) String recipeId,
      @HiveField(3) Option<Uri> imageUrl,
      @HiveField(4) String slug,
      @HiveField(5) String displayedName,
      @HiveField(6) Option<double> amount,
      @HiveField(7) Option<String> unit});
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
    Object? id = null,
    Object? isTickedOff = null,
    Object? recipeId = null,
    Object? imageUrl = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_PersistenceServiceModelShoppingListIngredient(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@HiveField(0) required this.id,
      @HiveField(1) required this.isTickedOff,
      @HiveField(2) required this.recipeId,
      @HiveField(3) required this.imageUrl,
      @HiveField(4) required this.slug,
      @HiveField(5) required this.displayedName,
      @HiveField(6) required this.amount,
      @HiveField(7) required this.unit});

  factory _$_PersistenceServiceModelShoppingListIngredient.fromJson(
          Map<String, dynamic> json) =>
      _$$_PersistenceServiceModelShoppingListIngredientFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final bool isTickedOff;
  @override
  @HiveField(2)
  final String recipeId;
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
  String toString() {
    return 'PersistenceServiceModelShoppingListIngredient(id: $id, isTickedOff: $isTickedOff, recipeId: $recipeId, imageUrl: $imageUrl, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersistenceServiceModelShoppingListIngredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isTickedOff, recipeId,
      imageUrl, slug, displayedName, amount, unit);

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
          {@HiveField(0) required final String id,
          @HiveField(1) required final bool isTickedOff,
          @HiveField(2) required final String recipeId,
          @HiveField(3) required final Option<Uri> imageUrl,
          @HiveField(4) required final String slug,
          @HiveField(5) required final String displayedName,
          @HiveField(6) required final Option<double> amount,
          @HiveField(7) required final Option<String> unit}) =
      _$_PersistenceServiceModelShoppingListIngredient;

  factory _PersistenceServiceModelShoppingListIngredient.fromJson(
          Map<String, dynamic> json) =
      _$_PersistenceServiceModelShoppingListIngredient.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  bool get isTickedOff;
  @override
  @HiveField(2)
  String get recipeId;
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
  @JsonKey(ignore: true)
  _$$_PersistenceServiceModelShoppingListIngredientCopyWith<
          _$_PersistenceServiceModelShoppingListIngredient>
      get copyWith => throw _privateConstructorUsedError;
}
