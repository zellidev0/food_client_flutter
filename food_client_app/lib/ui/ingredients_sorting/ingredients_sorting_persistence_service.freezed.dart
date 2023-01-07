// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredients_sorting_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientsSortingPersistenceModelUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientsSortingPersistenceModelSorting> get sortings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingPersistenceModelUnitCopyWith<
          IngredientsSortingPersistenceModelUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingPersistenceModelUnitCopyWith<$Res> {
  factory $IngredientsSortingPersistenceModelUnitCopyWith(
          IngredientsSortingPersistenceModelUnit value,
          $Res Function(IngredientsSortingPersistenceModelUnit) then) =
      _$IngredientsSortingPersistenceModelUnitCopyWithImpl<$Res,
          IngredientsSortingPersistenceModelUnit>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<IngredientsSortingPersistenceModelSorting> sortings});
}

/// @nodoc
class _$IngredientsSortingPersistenceModelUnitCopyWithImpl<$Res,
        $Val extends IngredientsSortingPersistenceModelUnit>
    implements $IngredientsSortingPersistenceModelUnitCopyWith<$Res> {
  _$IngredientsSortingPersistenceModelUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortings = null,
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
      sortings: null == sortings
          ? _value.sortings
          : sortings // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingPersistenceModelSorting>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsSortingPersistenceModelUnitCopyWith<$Res>
    implements $IngredientsSortingPersistenceModelUnitCopyWith<$Res> {
  factory _$$_IngredientsSortingPersistenceModelUnitCopyWith(
          _$_IngredientsSortingPersistenceModelUnit value,
          $Res Function(_$_IngredientsSortingPersistenceModelUnit) then) =
      __$$_IngredientsSortingPersistenceModelUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<IngredientsSortingPersistenceModelSorting> sortings});
}

/// @nodoc
class __$$_IngredientsSortingPersistenceModelUnitCopyWithImpl<$Res>
    extends _$IngredientsSortingPersistenceModelUnitCopyWithImpl<$Res,
        _$_IngredientsSortingPersistenceModelUnit>
    implements _$$_IngredientsSortingPersistenceModelUnitCopyWith<$Res> {
  __$$_IngredientsSortingPersistenceModelUnitCopyWithImpl(
      _$_IngredientsSortingPersistenceModelUnit _value,
      $Res Function(_$_IngredientsSortingPersistenceModelUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sortings = null,
  }) {
    return _then(_$_IngredientsSortingPersistenceModelUnit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortings: null == sortings
          ? _value._sortings
          : sortings // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingPersistenceModelSorting>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingPersistenceModelUnit
    implements _IngredientsSortingPersistenceModelUnit {
  const _$_IngredientsSortingPersistenceModelUnit(
      {required this.id,
      required this.name,
      required final List<IngredientsSortingPersistenceModelSorting> sortings})
      : _sortings = sortings;

  @override
  final String id;
  @override
  final String name;
  final List<IngredientsSortingPersistenceModelSorting> _sortings;
  @override
  List<IngredientsSortingPersistenceModelSorting> get sortings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortings);
  }

  @override
  String toString() {
    return 'IngredientsSortingPersistenceModelUnit(id: $id, name: $name, sortings: $sortings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingPersistenceModelUnit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sortings, _sortings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sortings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingPersistenceModelUnitCopyWith<
          _$_IngredientsSortingPersistenceModelUnit>
      get copyWith => __$$_IngredientsSortingPersistenceModelUnitCopyWithImpl<
          _$_IngredientsSortingPersistenceModelUnit>(this, _$identity);
}

abstract class _IngredientsSortingPersistenceModelUnit
    implements IngredientsSortingPersistenceModelUnit {
  const factory _IngredientsSortingPersistenceModelUnit(
      {required final String id,
      required final String name,
      required final List<IngredientsSortingPersistenceModelSorting>
          sortings}) = _$_IngredientsSortingPersistenceModelUnit;

  @override
  String get id;
  @override
  String get name;
  @override
  List<IngredientsSortingPersistenceModelSorting> get sortings;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingPersistenceModelUnitCopyWith<
          _$_IngredientsSortingPersistenceModelUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingPersistenceModelSorting {
  String get type => throw _privateConstructorUsedError;
  Option<Uri> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientsSortingPersistenceModelIngredientFamily>
      get ingredientFamilies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingPersistenceModelSortingCopyWith<
          IngredientsSortingPersistenceModelSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingPersistenceModelSortingCopyWith<$Res> {
  factory $IngredientsSortingPersistenceModelSortingCopyWith(
          IngredientsSortingPersistenceModelSorting value,
          $Res Function(IngredientsSortingPersistenceModelSorting) then) =
      _$IngredientsSortingPersistenceModelSortingCopyWithImpl<$Res,
          IngredientsSortingPersistenceModelSorting>;
  @useResult
  $Res call(
      {String type,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies});
}

/// @nodoc
class _$IngredientsSortingPersistenceModelSortingCopyWithImpl<$Res,
        $Val extends IngredientsSortingPersistenceModelSorting>
    implements $IngredientsSortingPersistenceModelSortingCopyWith<$Res> {
  _$IngredientsSortingPersistenceModelSortingCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value.ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingPersistenceModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsSortingPersistenceModelSortingCopyWith<$Res>
    implements $IngredientsSortingPersistenceModelSortingCopyWith<$Res> {
  factory _$$_IngredientsSortingPersistenceModelSortingCopyWith(
          _$_IngredientsSortingPersistenceModelSorting value,
          $Res Function(_$_IngredientsSortingPersistenceModelSorting) then) =
      __$$_IngredientsSortingPersistenceModelSortingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies});
}

/// @nodoc
class __$$_IngredientsSortingPersistenceModelSortingCopyWithImpl<$Res>
    extends _$IngredientsSortingPersistenceModelSortingCopyWithImpl<$Res,
        _$_IngredientsSortingPersistenceModelSorting>
    implements _$$_IngredientsSortingPersistenceModelSortingCopyWith<$Res> {
  __$$_IngredientsSortingPersistenceModelSortingCopyWithImpl(
      _$_IngredientsSortingPersistenceModelSorting _value,
      $Res Function(_$_IngredientsSortingPersistenceModelSorting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$_IngredientsSortingPersistenceModelSorting(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingPersistenceModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingPersistenceModelSorting
    implements _IngredientsSortingPersistenceModelSorting {
  const _$_IngredientsSortingPersistenceModelSorting(
      {required this.type,
      required this.iconPath,
      required this.name,
      required final List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String type;
  @override
  final Option<Uri> iconPath;
  @override
  final String name;
  final List<IngredientsSortingPersistenceModelIngredientFamily>
      _ingredientFamilies;
  @override
  List<IngredientsSortingPersistenceModelIngredientFamily>
      get ingredientFamilies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'IngredientsSortingPersistenceModelSorting(type: $type, iconPath: $iconPath, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingPersistenceModelSorting &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, iconPath, name,
      const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingPersistenceModelSortingCopyWith<
          _$_IngredientsSortingPersistenceModelSorting>
      get copyWith =>
          __$$_IngredientsSortingPersistenceModelSortingCopyWithImpl<
              _$_IngredientsSortingPersistenceModelSorting>(this, _$identity);
}

abstract class _IngredientsSortingPersistenceModelSorting
    implements IngredientsSortingPersistenceModelSorting {
  const factory _IngredientsSortingPersistenceModelSorting(
      {required final String type,
      required final Option<Uri> iconPath,
      required final String name,
      required final List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies}) = _$_IngredientsSortingPersistenceModelSorting;

  @override
  String get type;
  @override
  Option<Uri> get iconPath;
  @override
  String get name;
  @override
  List<IngredientsSortingPersistenceModelIngredientFamily>
      get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingPersistenceModelSortingCopyWith<
          _$_IngredientsSortingPersistenceModelSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingPersistenceModelIngredientFamily {
  String get helloFreshFamilyId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String helloFreshFamilyId) helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String helloFreshFamilyId)? helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String helloFreshFamilyId)? helloFresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)?
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingPersistenceModelIngredientFamilyCopyWith<
          IngredientsSortingPersistenceModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingPersistenceModelIngredientFamilyCopyWith<
    $Res> {
  factory $IngredientsSortingPersistenceModelIngredientFamilyCopyWith(
          IngredientsSortingPersistenceModelIngredientFamily value,
          $Res Function(IngredientsSortingPersistenceModelIngredientFamily)
              then) =
      _$IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<$Res,
          IngredientsSortingPersistenceModelIngredientFamily>;
  @useResult
  $Res call({String helloFreshFamilyId});
}

/// @nodoc
class _$IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends IngredientsSortingPersistenceModelIngredientFamily>
    implements
        $IngredientsSortingPersistenceModelIngredientFamilyCopyWith<$Res> {
  _$IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helloFreshFamilyId = null,
  }) {
    return _then(_value.copyWith(
      helloFreshFamilyId: null == helloFreshFamilyId
          ? _value.helloFreshFamilyId
          : helloFreshFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWith<
        $Res>
    implements
        $IngredientsSortingPersistenceModelIngredientFamilyCopyWith<$Res> {
  factory _$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWith(
          _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value,
          $Res Function(
                  _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh)
              then) =
      __$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String helloFreshFamilyId});
}

/// @nodoc
class __$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWithImpl<
        $Res>
    extends _$IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<
        $Res, _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh>
    implements
        _$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWith<
            $Res> {
  __$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWithImpl(
      _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh _value,
      $Res Function(
              _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helloFreshFamilyId = null,
  }) {
    return _then(_$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh(
      helloFreshFamilyId: null == helloFreshFamilyId
          ? _value.helloFreshFamilyId
          : helloFreshFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh
    implements IngredientsSortingPersistenceModelIngredientFamilyHelloFresh {
  const _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh(
      {required this.helloFreshFamilyId});

  @override
  final String helloFreshFamilyId;

  @override
  String toString() {
    return 'IngredientsSortingPersistenceModelIngredientFamily.helloFresh(helloFreshFamilyId: $helloFreshFamilyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh &&
            (identical(other.helloFreshFamilyId, helloFreshFamilyId) ||
                other.helloFreshFamilyId == helloFreshFamilyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, helloFreshFamilyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWith<
          _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh>
      get copyWith =>
          __$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWithImpl<
                  _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String helloFreshFamilyId) helloFresh,
  }) {
    return helloFresh(helloFreshFamilyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String helloFreshFamilyId)? helloFresh,
  }) {
    return helloFresh?.call(helloFreshFamilyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String helloFreshFamilyId)? helloFresh,
    required TResult orElse(),
  }) {
    if (helloFresh != null) {
      return helloFresh(helloFreshFamilyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)
        helloFresh,
  }) {
    return helloFresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)?
        helloFresh,
  }) {
    return helloFresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(
            IngredientsSortingPersistenceModelIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) {
    if (helloFresh != null) {
      return helloFresh(this);
    }
    return orElse();
  }
}

abstract class IngredientsSortingPersistenceModelIngredientFamilyHelloFresh
    implements IngredientsSortingPersistenceModelIngredientFamily {
  const factory IngredientsSortingPersistenceModelIngredientFamilyHelloFresh(
          {required final String helloFreshFamilyId}) =
      _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh;

  @override
  String get helloFreshFamilyId;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingPersistenceModelIngredientFamilyHelloFreshCopyWith<
          _$IngredientsSortingPersistenceModelIngredientFamilyHelloFresh>
      get copyWith => throw _privateConstructorUsedError;
}
