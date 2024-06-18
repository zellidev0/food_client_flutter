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
  ViewState<List<IngredientsSortingStateUnit>> get units =>
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
  $Res call({ViewState<List<IngredientsSortingStateUnit>> units});

  $ViewStateCopyWith<List<IngredientsSortingStateUnit>, $Res> get units;
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
              as ViewState<List<IngredientsSortingStateUnit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<IngredientsSortingStateUnit>, $Res> get units {
    return $ViewStateCopyWith<List<IngredientsSortingStateUnit>, $Res>(
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
  $Res call({ViewState<List<IngredientsSortingStateUnit>> units});

  @override
  $ViewStateCopyWith<List<IngredientsSortingStateUnit>, $Res> get units;
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
              as ViewState<List<IngredientsSortingStateUnit>>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingStateImpl implements _IngredientsSortingState {
  const _$IngredientsSortingStateImpl({required this.units});

  @override
  final ViewState<List<IngredientsSortingStateUnit>> units;

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
          {required final ViewState<List<IngredientsSortingStateUnit>> units}) =
      _$IngredientsSortingStateImpl;

  @override
  ViewState<List<IngredientsSortingStateUnit>> get units;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingStateImplCopyWith<_$IngredientsSortingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingStateUnit {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  List<IngredientsSortingStateSorting> get sorting =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingStateUnitCopyWith<IngredientsSortingStateUnit>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingStateUnitCopyWith<$Res> {
  factory $IngredientsSortingStateUnitCopyWith(
          IngredientsSortingStateUnit value,
          $Res Function(IngredientsSortingStateUnit) then) =
      _$IngredientsSortingStateUnitCopyWithImpl<$Res,
          IngredientsSortingStateUnit>;
  @useResult
  $Res call(
      {String id,
      String title,
      bool selected,
      List<IngredientsSortingStateSorting> sorting});
}

/// @nodoc
class _$IngredientsSortingStateUnitCopyWithImpl<$Res,
        $Val extends IngredientsSortingStateUnit>
    implements $IngredientsSortingStateUnitCopyWith<$Res> {
  _$IngredientsSortingStateUnitCopyWithImpl(this._value, this._then);

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
              as List<IngredientsSortingStateSorting>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsSortingStateUnitImplCopyWith<$Res>
    implements $IngredientsSortingStateUnitCopyWith<$Res> {
  factory _$$IngredientsSortingStateUnitImplCopyWith(
          _$IngredientsSortingStateUnitImpl value,
          $Res Function(_$IngredientsSortingStateUnitImpl) then) =
      __$$IngredientsSortingStateUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      bool selected,
      List<IngredientsSortingStateSorting> sorting});
}

/// @nodoc
class __$$IngredientsSortingStateUnitImplCopyWithImpl<$Res>
    extends _$IngredientsSortingStateUnitCopyWithImpl<$Res,
        _$IngredientsSortingStateUnitImpl>
    implements _$$IngredientsSortingStateUnitImplCopyWith<$Res> {
  __$$IngredientsSortingStateUnitImplCopyWithImpl(
      _$IngredientsSortingStateUnitImpl _value,
      $Res Function(_$IngredientsSortingStateUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? selected = null,
    Object? sorting = null,
  }) {
    return _then(_$IngredientsSortingStateUnitImpl(
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
              as List<IngredientsSortingStateSorting>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingStateUnitImpl
    implements _IngredientsSortingStateUnit {
  const _$IngredientsSortingStateUnitImpl(
      {required this.id,
      required this.title,
      required this.selected,
      required final List<IngredientsSortingStateSorting> sorting})
      : _sorting = sorting;

  @override
  final String id;
  @override
  final String title;
  @override
  final bool selected;
  final List<IngredientsSortingStateSorting> _sorting;
  @override
  List<IngredientsSortingStateSorting> get sorting {
    if (_sorting is EqualUnmodifiableListView) return _sorting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sorting);
  }

  @override
  String toString() {
    return 'IngredientsSortingStateUnit(id: $id, title: $title, selected: $selected, sorting: $sorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingStateUnitImpl &&
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
  _$$IngredientsSortingStateUnitImplCopyWith<_$IngredientsSortingStateUnitImpl>
      get copyWith => __$$IngredientsSortingStateUnitImplCopyWithImpl<
          _$IngredientsSortingStateUnitImpl>(this, _$identity);
}

abstract class _IngredientsSortingStateUnit
    implements IngredientsSortingStateUnit {
  const factory _IngredientsSortingStateUnit(
          {required final String id,
          required final String title,
          required final bool selected,
          required final List<IngredientsSortingStateSorting> sorting}) =
      _$IngredientsSortingStateUnitImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get selected;
  @override
  List<IngredientsSortingStateSorting> get sorting;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingStateUnitImplCopyWith<_$IngredientsSortingStateUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingStateSorting {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<Uri> get iconUrl => throw _privateConstructorUsedError;
  Option<Uri> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientsSortingStateIngredientFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingStateSortingCopyWith<IngredientsSortingStateSorting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingStateSortingCopyWith<$Res> {
  factory $IngredientsSortingStateSortingCopyWith(
          IngredientsSortingStateSorting value,
          $Res Function(IngredientsSortingStateSorting) then) =
      _$IngredientsSortingStateSortingCopyWithImpl<$Res,
          IngredientsSortingStateSorting>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<Uri> iconUrl,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingStateIngredientFamily> ingredientFamilies});
}

/// @nodoc
class _$IngredientsSortingStateSortingCopyWithImpl<$Res,
        $Val extends IngredientsSortingStateSorting>
    implements $IngredientsSortingStateSortingCopyWith<$Res> {
  _$IngredientsSortingStateSortingCopyWithImpl(this._value, this._then);

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
              as List<IngredientsSortingStateIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsSortingStateSortingImplCopyWith<$Res>
    implements $IngredientsSortingStateSortingCopyWith<$Res> {
  factory _$$IngredientsSortingStateSortingImplCopyWith(
          _$IngredientsSortingStateSortingImpl value,
          $Res Function(_$IngredientsSortingStateSortingImpl) then) =
      __$$IngredientsSortingStateSortingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Option<Uri> iconUrl,
      Option<Uri> iconPath,
      String name,
      List<IngredientsSortingStateIngredientFamily> ingredientFamilies});
}

/// @nodoc
class __$$IngredientsSortingStateSortingImplCopyWithImpl<$Res>
    extends _$IngredientsSortingStateSortingCopyWithImpl<$Res,
        _$IngredientsSortingStateSortingImpl>
    implements _$$IngredientsSortingStateSortingImplCopyWith<$Res> {
  __$$IngredientsSortingStateSortingImplCopyWithImpl(
      _$IngredientsSortingStateSortingImpl _value,
      $Res Function(_$IngredientsSortingStateSortingImpl) _then)
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
    return _then(_$IngredientsSortingStateSortingImpl(
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
              as List<IngredientsSortingStateIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingStateSortingImpl
    implements _IngredientsSortingStateSorting {
  const _$IngredientsSortingStateSortingImpl(
      {required this.id,
      required this.type,
      required this.iconUrl,
      required this.iconPath,
      required this.name,
      required final List<IngredientsSortingStateIngredientFamily>
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
  final List<IngredientsSortingStateIngredientFamily> _ingredientFamilies;
  @override
  List<IngredientsSortingStateIngredientFamily> get ingredientFamilies {
    if (_ingredientFamilies is EqualUnmodifiableListView)
      return _ingredientFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'IngredientsSortingStateSorting(id: $id, type: $type, iconUrl: $iconUrl, iconPath: $iconPath, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingStateSortingImpl &&
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
  _$$IngredientsSortingStateSortingImplCopyWith<
          _$IngredientsSortingStateSortingImpl>
      get copyWith => __$$IngredientsSortingStateSortingImplCopyWithImpl<
          _$IngredientsSortingStateSortingImpl>(this, _$identity);
}

abstract class _IngredientsSortingStateSorting
    implements IngredientsSortingStateSorting {
  const factory _IngredientsSortingStateSorting(
      {required final String id,
      required final String type,
      required final Option<Uri> iconUrl,
      required final Option<Uri> iconPath,
      required final String name,
      required final List<IngredientsSortingStateIngredientFamily>
          ingredientFamilies}) = _$IngredientsSortingStateSortingImpl;

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
  List<IngredientsSortingStateIngredientFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingStateSortingImplCopyWith<
          _$IngredientsSortingStateSortingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IngredientsSortingStateIngredientFamily {
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
            IngredientsSortingStateIngredientFamilyHelloFresh value)
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IngredientsSortingStateIngredientFamilyHelloFresh value)?
        helloFresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IngredientsSortingStateIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientsSortingStateIngredientFamilyCopyWith<
          IngredientsSortingStateIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsSortingStateIngredientFamilyCopyWith<$Res> {
  factory $IngredientsSortingStateIngredientFamilyCopyWith(
          IngredientsSortingStateIngredientFamily value,
          $Res Function(IngredientsSortingStateIngredientFamily) then) =
      _$IngredientsSortingStateIngredientFamilyCopyWithImpl<$Res,
          IngredientsSortingStateIngredientFamily>;
  @useResult
  $Res call({String helloFreshFamilyId});
}

/// @nodoc
class _$IngredientsSortingStateIngredientFamilyCopyWithImpl<$Res,
        $Val extends IngredientsSortingStateIngredientFamily>
    implements $IngredientsSortingStateIngredientFamilyCopyWith<$Res> {
  _$IngredientsSortingStateIngredientFamilyCopyWithImpl(
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
abstract class _$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWith<
    $Res> implements $IngredientsSortingStateIngredientFamilyCopyWith<$Res> {
  factory _$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWith(
          _$IngredientsSortingStateIngredientFamilyHelloFreshImpl value,
          $Res Function(_$IngredientsSortingStateIngredientFamilyHelloFreshImpl)
              then) =
      __$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String helloFreshFamilyId});
}

/// @nodoc
class __$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWithImpl<
        $Res>
    extends _$IngredientsSortingStateIngredientFamilyCopyWithImpl<$Res,
        _$IngredientsSortingStateIngredientFamilyHelloFreshImpl>
    implements
        _$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWith<$Res> {
  __$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWithImpl(
      _$IngredientsSortingStateIngredientFamilyHelloFreshImpl _value,
      $Res Function(_$IngredientsSortingStateIngredientFamilyHelloFreshImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? helloFreshFamilyId = null,
  }) {
    return _then(_$IngredientsSortingStateIngredientFamilyHelloFreshImpl(
      helloFreshFamilyId: null == helloFreshFamilyId
          ? _value.helloFreshFamilyId
          : helloFreshFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IngredientsSortingStateIngredientFamilyHelloFreshImpl
    implements IngredientsSortingStateIngredientFamilyHelloFresh {
  const _$IngredientsSortingStateIngredientFamilyHelloFreshImpl(
      {required this.helloFreshFamilyId});

  @override
  final String helloFreshFamilyId;

  @override
  String toString() {
    return 'IngredientsSortingStateIngredientFamily.helloFresh(helloFreshFamilyId: $helloFreshFamilyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsSortingStateIngredientFamilyHelloFreshImpl &&
            (identical(other.helloFreshFamilyId, helloFreshFamilyId) ||
                other.helloFreshFamilyId == helloFreshFamilyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, helloFreshFamilyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWith<
          _$IngredientsSortingStateIngredientFamilyHelloFreshImpl>
      get copyWith =>
          __$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWithImpl<
                  _$IngredientsSortingStateIngredientFamilyHelloFreshImpl>(
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
            IngredientsSortingStateIngredientFamilyHelloFresh value)
        helloFresh,
  }) {
    return helloFresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IngredientsSortingStateIngredientFamilyHelloFresh value)?
        helloFresh,
  }) {
    return helloFresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IngredientsSortingStateIngredientFamilyHelloFresh value)?
        helloFresh,
    required TResult orElse(),
  }) {
    if (helloFresh != null) {
      return helloFresh(this);
    }
    return orElse();
  }
}

abstract class IngredientsSortingStateIngredientFamilyHelloFresh
    implements IngredientsSortingStateIngredientFamily {
  const factory IngredientsSortingStateIngredientFamilyHelloFresh(
          {required final String helloFreshFamilyId}) =
      _$IngredientsSortingStateIngredientFamilyHelloFreshImpl;

  @override
  String get helloFreshFamilyId;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsSortingStateIngredientFamilyHelloFreshImplCopyWith<
          _$IngredientsSortingStateIngredientFamilyHelloFreshImpl>
      get copyWith => throw _privateConstructorUsedError;
}
