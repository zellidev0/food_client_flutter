// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredients_sorting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientsSortingModel {
  List<IngredientsSortingModelUnit> get units =>
      throw _privateConstructorUsedError;
  Option<String> get currentlyEditingUnitName =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingModelCopyWith<IngredientsSortingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingModelCopyWith<$Res> {
  factory $IngredientsSortingModelCopyWith(IngredientsSortingModel value,
          $Res Function(IngredientsSortingModel) then) =
      _$IngredientsSortingModelCopyWithImpl<$Res, IngredientsSortingModel>;
  @useResult
  $Res call(
      {List<IngredientsSortingModelUnit> units,
      Option<String> currentlyEditingUnitName});
}

/// @nodoc
class _$IngredientsSortingModelCopyWithImpl<$Res,
        $Val extends IngredientsSortingModel>
    implements $IngredientsSortingModelCopyWith<$Res> {
  _$IngredientsSortingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
    Object? currentlyEditingUnitName = null,
  }) {
    return _then(_value.copyWith(
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelUnit>,
      currentlyEditingUnitName: null == currentlyEditingUnitName
          ? _value.currentlyEditingUnitName
          : currentlyEditingUnitName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsSortingModelCopyWith<$Res>
    implements $IngredientsSortingModelCopyWith<$Res> {
  factory _$$_IngredientsSortingModelCopyWith(_$_IngredientsSortingModel value,
          $Res Function(_$_IngredientsSortingModel) then) =
      __$$_IngredientsSortingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IngredientsSortingModelUnit> units,
      Option<String> currentlyEditingUnitName});
}

/// @nodoc
class __$$_IngredientsSortingModelCopyWithImpl<$Res>
    extends _$IngredientsSortingModelCopyWithImpl<$Res,
        _$_IngredientsSortingModel>
    implements _$$_IngredientsSortingModelCopyWith<$Res> {
  __$$_IngredientsSortingModelCopyWithImpl(_$_IngredientsSortingModel _value,
      $Res Function(_$_IngredientsSortingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
    Object? currentlyEditingUnitName = null,
  }) {
    return _then(_$_IngredientsSortingModel(
      units: null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelUnit>,
      currentlyEditingUnitName: null == currentlyEditingUnitName
          ? _value.currentlyEditingUnitName
          : currentlyEditingUnitName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingModel implements _IngredientsSortingModel {
  const _$_IngredientsSortingModel(
      {required final List<IngredientsSortingModelUnit> units,
      required this.currentlyEditingUnitName})
      : _units = units;

  final List<IngredientsSortingModelUnit> _units;
  @override
  List<IngredientsSortingModelUnit> get units {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  final Option<String> currentlyEditingUnitName;

  @override
  String toString() {
    return 'IngredientsSortingModel(units: $units, currentlyEditingUnitName: $currentlyEditingUnitName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingModel &&
            const DeepCollectionEquality().equals(other._units, _units) &&
            (identical(
                    other.currentlyEditingUnitName, currentlyEditingUnitName) ||
                other.currentlyEditingUnitName == currentlyEditingUnitName));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_units), currentlyEditingUnitName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingModelCopyWith<_$_IngredientsSortingModel>
      get copyWith =>
          __$$_IngredientsSortingModelCopyWithImpl<_$_IngredientsSortingModel>(
              this, _$identity);
}

abstract class _IngredientsSortingModel implements IngredientsSortingModel {
  const factory _IngredientsSortingModel(
          {required final List<IngredientsSortingModelUnit> units,
          required final Option<String> currentlyEditingUnitName}) =
      _$_IngredientsSortingModel;

  @override
  List<IngredientsSortingModelUnit> get units;
  @override
  Option<String> get currentlyEditingUnitName;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingModelCopyWith<_$_IngredientsSortingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingModelUnit {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingModelUnitCopyWith<IngredientsSortingModelUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingModelUnitCopyWith<$Res> {
  factory $IngredientsSortingModelUnitCopyWith(
          IngredientsSortingModelUnit value,
          $Res Function(IngredientsSortingModelUnit) then) =
      _$IngredientsSortingModelUnitCopyWithImpl<$Res,
          IngredientsSortingModelUnit>;
  @useResult
  $Res call(
      {String id,
      String title,
      bool selected,
      List<IngredientsSortingModelIngredientFamily> ingredientFamilies});
}

/// @nodoc
class _$IngredientsSortingModelUnitCopyWithImpl<$Res,
        $Val extends IngredientsSortingModelUnit>
    implements $IngredientsSortingModelUnitCopyWith<$Res> {
  _$IngredientsSortingModelUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selected = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredientFamilies: null == ingredientFamilies
          ? _value.ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsSortingModelUnitCopyWith<$Res>
    implements $IngredientsSortingModelUnitCopyWith<$Res> {
  factory _$$_IngredientsSortingModelUnitCopyWith(
          _$_IngredientsSortingModelUnit value,
          $Res Function(_$_IngredientsSortingModelUnit) then) =
      __$$_IngredientsSortingModelUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      bool selected,
      List<IngredientsSortingModelIngredientFamily> ingredientFamilies});
}

/// @nodoc
class __$$_IngredientsSortingModelUnitCopyWithImpl<$Res>
    extends _$IngredientsSortingModelUnitCopyWithImpl<$Res,
        _$_IngredientsSortingModelUnit>
    implements _$$_IngredientsSortingModelUnitCopyWith<$Res> {
  __$$_IngredientsSortingModelUnitCopyWithImpl(
      _$_IngredientsSortingModelUnit _value,
      $Res Function(_$_IngredientsSortingModelUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selected = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$_IngredientsSortingModelUnit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingModelUnit implements _IngredientsSortingModelUnit {
  const _$_IngredientsSortingModelUnit(
      {required this.id,
      required this.title,
      required this.selected,
      required final List<IngredientsSortingModelIngredientFamily>
          ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
  @override
  final String title;
  @override
  final bool selected;
  final List<IngredientsSortingModelIngredientFamily> _ingredientFamilies;
  @override
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'IngredientsSortingModelUnit(id: $id, title: $title, selected: $selected, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingModelUnit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, selected,
      const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingModelUnitCopyWith<_$_IngredientsSortingModelUnit>
      get copyWith => __$$_IngredientsSortingModelUnitCopyWithImpl<
          _$_IngredientsSortingModelUnit>(this, _$identity);
}

abstract class _IngredientsSortingModelUnit
    implements IngredientsSortingModelUnit {
  const factory _IngredientsSortingModelUnit(
      {required final String id,
      required final String title,
      required final bool selected,
      required final List<IngredientsSortingModelIngredientFamily>
          ingredientFamilies}) = _$_IngredientsSortingModelUnit;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get selected;
  @override
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingModelUnitCopyWith<_$_IngredientsSortingModelUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingModelIngredientFamily {
  String get type => throw _privateConstructorUsedError;
  Option<Uri> get iconUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<String> get familyIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingModelIngredientFamilyCopyWith<
          IngredientsSortingModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingModelIngredientFamilyCopyWith<$Res> {
  factory $IngredientsSortingModelIngredientFamilyCopyWith(
          IngredientsSortingModelIngredientFamily value,
          $Res Function(IngredientsSortingModelIngredientFamily) then) =
      _$IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res,
          IngredientsSortingModelIngredientFamily>;
  @useResult
  $Res call(
      {String type,
      Option<Uri> iconUrl,
      String name,
      String slug,
      List<String> familyIds});
}

/// @nodoc
class _$IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends IngredientsSortingModelIngredientFamily>
    implements $IngredientsSortingModelIngredientFamilyCopyWith<$Res> {
  _$IngredientsSortingModelIngredientFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconUrl = null,
    Object? name = null,
    Object? slug = null,
    Object? familyIds = null,
  }) {
    return _then(_value.copyWith(
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
      familyIds: null == familyIds
          ? _value.familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsSortingModelIngredientFamilyCopyWith<$Res>
    implements $IngredientsSortingModelIngredientFamilyCopyWith<$Res> {
  factory _$$_IngredientsSortingModelIngredientFamilyCopyWith(
          _$_IngredientsSortingModelIngredientFamily value,
          $Res Function(_$_IngredientsSortingModelIngredientFamily) then) =
      __$$_IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      Option<Uri> iconUrl,
      String name,
      String slug,
      List<String> familyIds});
}

/// @nodoc
class __$$_IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res>
    extends _$IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res,
        _$_IngredientsSortingModelIngredientFamily>
    implements _$$_IngredientsSortingModelIngredientFamilyCopyWith<$Res> {
  __$$_IngredientsSortingModelIngredientFamilyCopyWithImpl(
      _$_IngredientsSortingModelIngredientFamily _value,
      $Res Function(_$_IngredientsSortingModelIngredientFamily) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? iconUrl = null,
    Object? name = null,
    Object? slug = null,
    Object? familyIds = null,
  }) {
    return _then(_$_IngredientsSortingModelIngredientFamily(
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
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_IngredientsSortingModelIngredientFamily
    implements _IngredientsSortingModelIngredientFamily {
  const _$_IngredientsSortingModelIngredientFamily(
      {required this.type,
      required this.iconUrl,
      required this.name,
      required this.slug,
      required final List<String> familyIds})
      : _familyIds = familyIds;

  @override
  final String type;
  @override
  final Option<Uri> iconUrl;
  @override
  final String name;
  @override
  final String slug;
  final List<String> _familyIds;
  @override
  List<String> get familyIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  String toString() {
    return 'IngredientsSortingModelIngredientFamily(type: $type, iconUrl: $iconUrl, name: $name, slug: $slug, familyIds: $familyIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsSortingModelIngredientFamily &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, iconUrl, name, slug,
      const DeepCollectionEquality().hash(_familyIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsSortingModelIngredientFamilyCopyWith<
          _$_IngredientsSortingModelIngredientFamily>
      get copyWith => __$$_IngredientsSortingModelIngredientFamilyCopyWithImpl<
          _$_IngredientsSortingModelIngredientFamily>(this, _$identity);
}

abstract class _IngredientsSortingModelIngredientFamily
    implements IngredientsSortingModelIngredientFamily {
  const factory _IngredientsSortingModelIngredientFamily(
          {required final String type,
          required final Option<Uri> iconUrl,
          required final String name,
          required final String slug,
          required final List<String> familyIds}) =
      _$_IngredientsSortingModelIngredientFamily;

  @override
  String get type;
  @override
  Option<Uri> get iconUrl;
  @override
  String get name;
  @override
  String get slug;
  @override
  List<String> get familyIds;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsSortingModelIngredientFamilyCopyWith<
          _$_IngredientsSortingModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}
