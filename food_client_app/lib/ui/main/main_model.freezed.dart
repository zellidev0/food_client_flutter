// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainModel {
  List<MainBottomTab> get bottomTabs => throw _privateConstructorUsedError;
  int get bottomNavigationBarIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainModelCopyWith<MainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainModelCopyWith<$Res> {
  factory $MainModelCopyWith(MainModel value, $Res Function(MainModel) then) =
      _$MainModelCopyWithImpl<$Res, MainModel>;
  @useResult
  $Res call({List<MainBottomTab> bottomTabs, int bottomNavigationBarIndex});
}

/// @nodoc
class _$MainModelCopyWithImpl<$Res, $Val extends MainModel>
    implements $MainModelCopyWith<$Res> {
  _$MainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomTabs = null,
    Object? bottomNavigationBarIndex = null,
  }) {
    return _then(_value.copyWith(
      bottomTabs: null == bottomTabs
          ? _value.bottomTabs
          : bottomTabs // ignore: cast_nullable_to_non_nullable
              as List<MainBottomTab>,
      bottomNavigationBarIndex: null == bottomNavigationBarIndex
          ? _value.bottomNavigationBarIndex
          : bottomNavigationBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainModelImplCopyWith<$Res>
    implements $MainModelCopyWith<$Res> {
  factory _$$MainModelImplCopyWith(
          _$MainModelImpl value, $Res Function(_$MainModelImpl) then) =
      __$$MainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MainBottomTab> bottomTabs, int bottomNavigationBarIndex});
}

/// @nodoc
class __$$MainModelImplCopyWithImpl<$Res>
    extends _$MainModelCopyWithImpl<$Res, _$MainModelImpl>
    implements _$$MainModelImplCopyWith<$Res> {
  __$$MainModelImplCopyWithImpl(
      _$MainModelImpl _value, $Res Function(_$MainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomTabs = null,
    Object? bottomNavigationBarIndex = null,
  }) {
    return _then(_$MainModelImpl(
      bottomTabs: null == bottomTabs
          ? _value._bottomTabs
          : bottomTabs // ignore: cast_nullable_to_non_nullable
              as List<MainBottomTab>,
      bottomNavigationBarIndex: null == bottomNavigationBarIndex
          ? _value.bottomNavigationBarIndex
          : bottomNavigationBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainModelImpl implements _MainModel {
  const _$MainModelImpl(
      {required final List<MainBottomTab> bottomTabs,
      required this.bottomNavigationBarIndex})
      : _bottomTabs = bottomTabs;

  final List<MainBottomTab> _bottomTabs;
  @override
  List<MainBottomTab> get bottomTabs {
    if (_bottomTabs is EqualUnmodifiableListView) return _bottomTabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomTabs);
  }

  @override
  final int bottomNavigationBarIndex;

  @override
  String toString() {
    return 'MainModel(bottomTabs: $bottomTabs, bottomNavigationBarIndex: $bottomNavigationBarIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainModelImpl &&
            const DeepCollectionEquality()
                .equals(other._bottomTabs, _bottomTabs) &&
            (identical(
                    other.bottomNavigationBarIndex, bottomNavigationBarIndex) ||
                other.bottomNavigationBarIndex == bottomNavigationBarIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bottomTabs),
      bottomNavigationBarIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainModelImplCopyWith<_$MainModelImpl> get copyWith =>
      __$$MainModelImplCopyWithImpl<_$MainModelImpl>(this, _$identity);
}

abstract class _MainModel implements MainModel {
  const factory _MainModel(
      {required final List<MainBottomTab> bottomTabs,
      required final int bottomNavigationBarIndex}) = _$MainModelImpl;

  @override
  List<MainBottomTab> get bottomTabs;
  @override
  int get bottomNavigationBarIndex;
  @override
  @JsonKey(ignore: true)
  _$$MainModelImplCopyWith<_$MainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainBottomTab {
  String get label => throw _privateConstructorUsedError;
  Uri get route => throw _privateConstructorUsedError;
  Widget get selectedIcon => throw _privateConstructorUsedError;
  Widget get unselectedIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainBottomTabCopyWith<MainBottomTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainBottomTabCopyWith<$Res> {
  factory $MainBottomTabCopyWith(
          MainBottomTab value, $Res Function(MainBottomTab) then) =
      _$MainBottomTabCopyWithImpl<$Res, MainBottomTab>;
  @useResult
  $Res call(
      {String label, Uri route, Widget selectedIcon, Widget unselectedIcon});
}

/// @nodoc
class _$MainBottomTabCopyWithImpl<$Res, $Val extends MainBottomTab>
    implements $MainBottomTabCopyWith<$Res> {
  _$MainBottomTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? route = null,
    Object? selectedIcon = null,
    Object? unselectedIcon = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Uri,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
      unselectedIcon: null == unselectedIcon
          ? _value.unselectedIcon
          : unselectedIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainBottomTabImplCopyWith<$Res>
    implements $MainBottomTabCopyWith<$Res> {
  factory _$$MainBottomTabImplCopyWith(
          _$MainBottomTabImpl value, $Res Function(_$MainBottomTabImpl) then) =
      __$$MainBottomTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label, Uri route, Widget selectedIcon, Widget unselectedIcon});
}

/// @nodoc
class __$$MainBottomTabImplCopyWithImpl<$Res>
    extends _$MainBottomTabCopyWithImpl<$Res, _$MainBottomTabImpl>
    implements _$$MainBottomTabImplCopyWith<$Res> {
  __$$MainBottomTabImplCopyWithImpl(
      _$MainBottomTabImpl _value, $Res Function(_$MainBottomTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? route = null,
    Object? selectedIcon = null,
    Object? unselectedIcon = null,
  }) {
    return _then(_$MainBottomTabImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Uri,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
      unselectedIcon: null == unselectedIcon
          ? _value.unselectedIcon
          : unselectedIcon // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$MainBottomTabImpl implements _MainBottomTab {
  const _$MainBottomTabImpl(
      {required this.label,
      required this.route,
      required this.selectedIcon,
      required this.unselectedIcon});

  @override
  final String label;
  @override
  final Uri route;
  @override
  final Widget selectedIcon;
  @override
  final Widget unselectedIcon;

  @override
  String toString() {
    return 'MainBottomTab(label: $label, route: $route, selectedIcon: $selectedIcon, unselectedIcon: $unselectedIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainBottomTabImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.selectedIcon, selectedIcon) ||
                other.selectedIcon == selectedIcon) &&
            (identical(other.unselectedIcon, unselectedIcon) ||
                other.unselectedIcon == unselectedIcon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, route, selectedIcon, unselectedIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainBottomTabImplCopyWith<_$MainBottomTabImpl> get copyWith =>
      __$$MainBottomTabImplCopyWithImpl<_$MainBottomTabImpl>(this, _$identity);
}

abstract class _MainBottomTab implements MainBottomTab {
  const factory _MainBottomTab(
      {required final String label,
      required final Uri route,
      required final Widget selectedIcon,
      required final Widget unselectedIcon}) = _$MainBottomTabImpl;

  @override
  String get label;
  @override
  Uri get route;
  @override
  Widget get selectedIcon;
  @override
  Widget get unselectedIcon;
  @override
  @JsonKey(ignore: true)
  _$$MainBottomTabImplCopyWith<_$MainBottomTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
