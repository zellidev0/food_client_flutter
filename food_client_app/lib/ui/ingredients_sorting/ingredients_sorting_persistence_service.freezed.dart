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
mixin _$IngredientsSortingPersistenceModelIngredientFamily {
  List<String> get familyIds => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<Uri> get iconUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

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
  $Res call(
      {List<String> familyIds,
      String type,
      Option<Uri> iconUrl,
      String name,
      String slug});
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
    Object? familyIds = null,
    Object? type = null,
    Object? iconUrl = null,
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
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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
abstract class _$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWith<
        $Res>
    implements
        $IngredientsSortingPersistenceModelIngredientFamilyCopyWith<$Res> {
  factory _$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWith(
          _$_IngredientsSortingPersistenceModelIngredientFamily value,
          $Res Function(_$_IngredientsSortingPersistenceModelIngredientFamily)
              then) =
      __$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> familyIds,
      String type,
      Option<Uri> iconUrl,
      String name,
      String slug});
}

/// @nodoc
class __$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<$Res>
    extends _$IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<
        $Res, _$_IngredientsSortingPersistenceModelIngredientFamily>
    implements
        _$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWith<$Res> {
  __$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl(
      _$_IngredientsSortingPersistenceModelIngredientFamily _value,
      $Res Function(_$_IngredientsSortingPersistenceModelIngredientFamily)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? familyIds = null,
    Object? type = null,
    Object? iconUrl = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$_IngredientsSortingPersistenceModelIngredientFamily(
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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

class _$_IngredientsSortingPersistenceModelIngredientFamily
    implements _IngredientsSortingPersistenceModelIngredientFamily {
  const _$_IngredientsSortingPersistenceModelIngredientFamily(
      {required final List<String> familyIds,
      required this.type,
      required this.iconUrl,
      required this.name,
      required this.slug})
      : _familyIds = familyIds;

  final List<String> _familyIds;
  @override
  List<String> get familyIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  final String type;
  @override
  final Option<Uri> iconUrl;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'IngredientsSortingPersistenceModelIngredientFamily(familyIds: $familyIds, type: $type, iconUrl: $iconUrl, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingPersistenceModelIngredientFamily &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_familyIds),
      type,
      iconUrl,
      name,
      slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWith<
          _$_IngredientsSortingPersistenceModelIngredientFamily>
      get copyWith =>
          __$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWithImpl<
                  _$_IngredientsSortingPersistenceModelIngredientFamily>(
              this, _$identity);
}

abstract class _IngredientsSortingPersistenceModelIngredientFamily
    implements IngredientsSortingPersistenceModelIngredientFamily {
  const factory _IngredientsSortingPersistenceModelIngredientFamily(
          {required final List<String> familyIds,
          required final String type,
          required final Option<Uri> iconUrl,
          required final String name,
          required final String slug}) =
      _$_IngredientsSortingPersistenceModelIngredientFamily;

  @override
  List<String> get familyIds;
  @override
  String get type;
  @override
  Option<Uri> get iconUrl;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingPersistenceModelIngredientFamilyCopyWith<
          _$_IngredientsSortingPersistenceModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingPersistenceModelUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientsSortingPersistenceModelIngredientFamily>
      get ingredientFamilies => throw _privateConstructorUsedError;

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
      List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies});
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
              as List<IngredientsSortingPersistenceModelIngredientFamily>,
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
      List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies});
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
    Object? ingredientFamilies = null,
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
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingPersistenceModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingPersistenceModelUnit
    implements _IngredientsSortingPersistenceModelUnit {
  const _$_IngredientsSortingPersistenceModelUnit(
      {required this.id,
      required this.name,
      required final List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
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
    return 'IngredientsSortingPersistenceModelUnit(id: $id, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingPersistenceModelUnit &&
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
      required final List<IngredientsSortingPersistenceModelIngredientFamily>
          ingredientFamilies}) = _$_IngredientsSortingPersistenceModelUnit;

  @override
  String get id;
  @override
  String get name;
  @override
  List<IngredientsSortingPersistenceModelIngredientFamily>
      get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingPersistenceModelUnitCopyWith<
          _$_IngredientsSortingPersistenceModelUnit>
      get copyWith => throw _privateConstructorUsedError;
}
