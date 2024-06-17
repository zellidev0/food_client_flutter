// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients_sorting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IngredientsSortingState {
  ViewState<List<IngredientsSortingModelUnit>> get units =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingStateCopyWith<IngredientsSortingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingStateCopyWith<$Res> {
  factory $IngredientsSortingStateCopyWith(IngredientsSortingState value,
          $Res Function(IngredientsSortingState) then) =
      _$IngredientsSortingStateCopyWithImpl<$Res, IngredientsSortingState>;
  @useResult
  $Res call({ViewState<List<IngredientsSortingModelUnit>> units});

  $ViewStateCopyWith<List<IngredientsSortingModelUnit>, $Res> get units;
}

/// @nodoc
class _$IngredientsSortingStateCopyWithImpl<$Res,
        $Val extends IngredientsSortingState>
    implements $IngredientsSortingStateCopyWith<$Res> {
  _$IngredientsSortingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
  }) {
    return _then(_value.copyWith(
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as ViewState<List<IngredientsSortingModelUnit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<IngredientsSortingModelUnit>, $Res> get units {
    return $ViewStateCopyWith<List<IngredientsSortingModelUnit>, $Res>(
        _value.units, (value) {
      return _then(_value.copyWith(units: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientsSortingStateImplCopyWith<$Res>
    implements $IngredientsSortingStateCopyWith<$Res> {
  factory _$$IngredientsSortingStateImplCopyWith(
          _$IngredientsSortingStateImpl value,
          $Res Function(_$IngredientsSortingStateImpl) then) =
      __$$IngredientsSortingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<List<IngredientsSortingModelUnit>> units});

  @override
  $ViewStateCopyWith<List<IngredientsSortingModelUnit>, $Res> get units;
}

/// @nodoc
class __$$IngredientsSortingStateImplCopyWithImpl<$Res>
    extends _$IngredientsSortingStateCopyWithImpl<$Res,
        _$IngredientsSortingStateImpl>
    implements _$$IngredientsSortingStateImplCopyWith<$Res> {
  __$$IngredientsSortingStateImplCopyWithImpl(
      _$IngredientsSortingStateImpl _value,
      $Res Function(_$IngredientsSortingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
  }) {
    return _then(_$IngredientsSortingStateImpl(
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as ViewState<List<IngredientsSortingModelUnit>>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingStateImpl implements _IngredientsSortingState {
  const _$IngredientsSortingStateImpl({required this.units});

  @override
  final ViewState<List<IngredientsSortingModelUnit>> units;

  @override
  String toString() {
    return 'IngredientsSortingState(units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingStateImpl &&
            (identical(other.units, units) || other.units == units));
  }

  @override
  int get hashCode => Object.hash(runtimeType, units);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingStateImplCopyWith<_$IngredientsSortingStateImpl>
      get copyWith => __$$IngredientsSortingStateImplCopyWithImpl<
          _$IngredientsSortingStateImpl>(this, _$identity);
}

abstract class _IngredientsSortingState implements IngredientsSortingState {
  const factory _IngredientsSortingState(
          {required final ViewState<List<IngredientsSortingModelUnit>> units}) =
      _$IngredientsSortingStateImpl;

  @override
  ViewState<List<IngredientsSortingModelUnit>> get units;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingStateImplCopyWith<_$IngredientsSortingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingModelUnit {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  List<IngredientsSortingModelSorting> get sorting =>
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
      List<IngredientsSortingModelSorting> sorting});
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
    Object? sorting = null,
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
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelSorting>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsSortingModelUnitImplCopyWith<$Res>
    implements $IngredientsSortingModelUnitCopyWith<$Res> {
  factory _$$IngredientsSortingModelUnitImplCopyWith(
          _$IngredientsSortingModelUnitImpl value,
          $Res Function(_$IngredientsSortingModelUnitImpl) then) =
      __$$IngredientsSortingModelUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      bool selected,
      List<IngredientsSortingModelSorting> sorting});
}

/// @nodoc
class __$$IngredientsSortingModelUnitImplCopyWithImpl<$Res>
    extends _$IngredientsSortingModelUnitCopyWithImpl<$Res,
        _$IngredientsSortingModelUnitImpl>
    implements _$$IngredientsSortingModelUnitImplCopyWith<$Res> {
  __$$IngredientsSortingModelUnitImplCopyWithImpl(
      _$IngredientsSortingModelUnitImpl _value,
      $Res Function(_$IngredientsSortingModelUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selected = null,
    Object? sorting = null,
  }) {
    return _then(_$IngredientsSortingModelUnitImpl(
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
      sorting: null == sorting
          ? _value._sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as List<IngredientsSortingModelSorting>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingModelUnitImpl
    implements _IngredientsSortingModelUnit {
  const _$IngredientsSortingModelUnitImpl(
      {required this.id,
      required this.title,
      required this.selected,
      required final List<IngredientsSortingModelSorting> sorting})
      : _sorting = sorting;

  @override
  final String id;
  @override
  final String title;
  @override
  final bool selected;
  final List<IngredientsSortingModelSorting> _sorting;
  @override
  List<IngredientsSortingModelSorting> get sorting {
    if (_sorting is EqualUnmodifiableListView) return _sorting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sorting);
  }

  @override
  String toString() {
    return 'IngredientsSortingModelUnit(id: $id, title: $title, selected: $selected, sorting: $sorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingModelUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(other._sorting, _sorting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, selected,
      const DeepCollectionEquality().hash(_sorting));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingModelUnitImplCopyWith<_$IngredientsSortingModelUnitImpl>
      get copyWith => __$$IngredientsSortingModelUnitImplCopyWithImpl<
          _$IngredientsSortingModelUnitImpl>(this, _$identity);
}

abstract class _IngredientsSortingModelUnit
    implements IngredientsSortingModelUnit {
  const factory _IngredientsSortingModelUnit(
          {required final String id,
          required final String title,
          required final bool selected,
          required final List<IngredientsSortingModelSorting> sorting}) =
      _$IngredientsSortingModelUnitImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get selected;
  @override
  List<IngredientsSortingModelSorting> get sorting;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingModelUnitImplCopyWith<_$IngredientsSortingModelUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingModelSorting {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<Uri> get iconUrl => throw _privateConstructorUsedError;
  Option<Uri> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingModelSortingCopyWith<IngredientsSortingModelSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingModelSortingCopyWith<$Res> {
  factory $IngredientsSortingModelSortingCopyWith(
          IngredientsSortingModelSorting value,
          $Res Function(IngredientsSortingModelSorting) then) =
      _$IngredientsSortingModelSortingCopyWithImpl<$Res,
          IngredientsSortingModelSorting>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<Uri> iconUrl,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingModelIngredientFamily> ingredientFamilies});
}

/// @nodoc
class _$IngredientsSortingModelSortingCopyWithImpl<$Res,
        $Val extends IngredientsSortingModelSorting>
    implements $IngredientsSortingModelSortingCopyWith<$Res> {
  _$IngredientsSortingModelSortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconUrl = null,
    Object? iconPath = null,
    Object? name = null,
    Object? ingredientFamilies = null,
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
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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
              as List<IngredientsSortingModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsSortingModelSortingImplCopyWith<$Res>
    implements $IngredientsSortingModelSortingCopyWith<$Res> {
  factory _$$IngredientsSortingModelSortingImplCopyWith(
          _$IngredientsSortingModelSortingImpl value,
          $Res Function(_$IngredientsSortingModelSortingImpl) then) =
      __$$IngredientsSortingModelSortingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Option<Uri> iconUrl,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingModelIngredientFamily> ingredientFamilies});
}

/// @nodoc
class __$$IngredientsSortingModelSortingImplCopyWithImpl<$Res>
    extends _$IngredientsSortingModelSortingCopyWithImpl<$Res,
        _$IngredientsSortingModelSortingImpl>
    implements _$$IngredientsSortingModelSortingImplCopyWith<$Res> {
  __$$IngredientsSortingModelSortingImplCopyWithImpl(
      _$IngredientsSortingModelSortingImpl _value,
      $Res Function(_$IngredientsSortingModelSortingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconUrl = null,
    Object? iconPath = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$IngredientsSortingModelSortingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
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
              as List<IngredientsSortingModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingModelSortingImpl
    implements _IngredientsSortingModelSorting {
  const _$IngredientsSortingModelSortingImpl(
      {required this.id,
      required this.type,
      required this.iconUrl,
      required this.iconPath,
      required this.name,
      required final List<IngredientsSortingModelIngredientFamily>
          ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
  @override
  final String type;
  @override
  final Option<Uri> iconUrl;
  @override
  final Option<Uri> iconPath;
  @override
  final String name;
  final List<IngredientsSortingModelIngredientFamily> _ingredientFamilies;
  @override
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies {
    if (_ingredientFamilies is EqualUnmodifiableListView)
      return _ingredientFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'IngredientsSortingModelSorting(id: $id, type: $type, iconUrl: $iconUrl, iconPath: $iconPath, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingModelSortingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconUrl, iconPath,
      name, const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingModelSortingImplCopyWith<
          _$IngredientsSortingModelSortingImpl>
      get copyWith => __$$IngredientsSortingModelSortingImplCopyWithImpl<
          _$IngredientsSortingModelSortingImpl>(this, _$identity);
}

abstract class _IngredientsSortingModelSorting
    implements IngredientsSortingModelSorting {
  const factory _IngredientsSortingModelSorting(
      {required final String id,
      required final String type,
      required final Option<Uri> iconUrl,
      required final Option<Uri> iconPath,
      required final String name,
      required final List<IngredientsSortingModelIngredientFamily>
          ingredientFamilies}) = _$IngredientsSortingModelSortingImpl;

  @override
  String get id;
  @override
  String get type;
  @override
  Option<Uri> get iconUrl;
  @override
  Option<Uri> get iconPath;
  @override
  String get name;
  @override
  List<IngredientsSortingModelIngredientFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingModelSortingImplCopyWith<
          _$IngredientsSortingModelSortingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingModelIngredientFamily {
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
            IngredientsSortingModelIngredientFamilyHelloFresh value)
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IngredientsSortingModelIngredientFamilyHelloFresh value)?
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IngredientsSortingModelIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({String helloFreshFamilyId});
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
abstract class _$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWith<
    $Res> implements $IngredientsSortingModelIngredientFamilyCopyWith<$Res> {
  factory _$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWith(
          _$IngredientsSortingModelIngredientFamilyHelloFreshImpl value,
          $Res Function(_$IngredientsSortingModelIngredientFamilyHelloFreshImpl)
              then) =
      __$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String helloFreshFamilyId});
}

/// @nodoc
class __$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWithImpl<
        $Res>
    extends _$IngredientsSortingModelIngredientFamilyCopyWithImpl<$Res,
        _$IngredientsSortingModelIngredientFamilyHelloFreshImpl>
    implements
        _$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWith<$Res> {
  __$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWithImpl(
      _$IngredientsSortingModelIngredientFamilyHelloFreshImpl _value,
      $Res Function(_$IngredientsSortingModelIngredientFamilyHelloFreshImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helloFreshFamilyId = null,
  }) {
    return _then(_$IngredientsSortingModelIngredientFamilyHelloFreshImpl(
      helloFreshFamilyId: null == helloFreshFamilyId
          ? _value.helloFreshFamilyId
          : helloFreshFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingModelIngredientFamilyHelloFreshImpl
    implements IngredientsSortingModelIngredientFamilyHelloFresh {
  const _$IngredientsSortingModelIngredientFamilyHelloFreshImpl(
      {required this.helloFreshFamilyId});

  @override
  final String helloFreshFamilyId;

  @override
  String toString() {
    return 'IngredientsSortingModelIngredientFamily.helloFresh(helloFreshFamilyId: $helloFreshFamilyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingModelIngredientFamilyHelloFreshImpl &&
            (identical(other.helloFreshFamilyId, helloFreshFamilyId) ||
                other.helloFreshFamilyId == helloFreshFamilyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, helloFreshFamilyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWith<
          _$IngredientsSortingModelIngredientFamilyHelloFreshImpl>
      get copyWith =>
          __$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWithImpl<
                  _$IngredientsSortingModelIngredientFamilyHelloFreshImpl>(
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
            IngredientsSortingModelIngredientFamilyHelloFresh value)
        helloFresh,
  }) {
    return helloFresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IngredientsSortingModelIngredientFamilyHelloFresh value)?
        helloFresh,
  }) {
    return helloFresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IngredientsSortingModelIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) {
    if (helloFresh != null) {
      return helloFresh(this);
    }
    return orElse();
  }
}

abstract class IngredientsSortingModelIngredientFamilyHelloFresh
    implements IngredientsSortingModelIngredientFamily {
  const factory IngredientsSortingModelIngredientFamilyHelloFresh(
          {required final String helloFreshFamilyId}) =
      _$IngredientsSortingModelIngredientFamilyHelloFreshImpl;

  @override
  String get helloFreshFamilyId;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingModelIngredientFamilyHelloFreshImplCopyWith<
          _$IngredientsSortingModelIngredientFamilyHelloFreshImpl>
      get copyWith => throw _privateConstructorUsedError;
}
