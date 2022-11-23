// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationServiceDialogAction {
  String get text => throw _privateConstructorUsedError;
  void Function() get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationServiceDialogActionCopyWith<NavigationServiceDialogAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationServiceDialogActionCopyWith<$Res> {
  factory $NavigationServiceDialogActionCopyWith(
          NavigationServiceDialogAction value,
          $Res Function(NavigationServiceDialogAction) then) =
      _$NavigationServiceDialogActionCopyWithImpl<$Res,
          NavigationServiceDialogAction>;
  @useResult
  $Res call({String text, void Function() onPressed});
}

/// @nodoc
class _$NavigationServiceDialogActionCopyWithImpl<$Res,
        $Val extends NavigationServiceDialogAction>
    implements $NavigationServiceDialogActionCopyWith<$Res> {
  _$NavigationServiceDialogActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? onPressed = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationServiceDialogActionCopyWith<$Res>
    implements $NavigationServiceDialogActionCopyWith<$Res> {
  factory _$$_NavigationServiceDialogActionCopyWith(
          _$_NavigationServiceDialogAction value,
          $Res Function(_$_NavigationServiceDialogAction) then) =
      __$$_NavigationServiceDialogActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, void Function() onPressed});
}

/// @nodoc
class __$$_NavigationServiceDialogActionCopyWithImpl<$Res>
    extends _$NavigationServiceDialogActionCopyWithImpl<$Res,
        _$_NavigationServiceDialogAction>
    implements _$$_NavigationServiceDialogActionCopyWith<$Res> {
  __$$_NavigationServiceDialogActionCopyWithImpl(
      _$_NavigationServiceDialogAction _value,
      $Res Function(_$_NavigationServiceDialogAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? onPressed = null,
  }) {
    return _then(_$_NavigationServiceDialogAction(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: null == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$_NavigationServiceDialogAction
    implements _NavigationServiceDialogAction {
  const _$_NavigationServiceDialogAction(
      {required this.text, required this.onPressed});

  @override
  final String text;
  @override
  final void Function() onPressed;

  @override
  String toString() {
    return 'NavigationServiceDialogAction(text: $text, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationServiceDialogAction &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, onPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationServiceDialogActionCopyWith<_$_NavigationServiceDialogAction>
      get copyWith => __$$_NavigationServiceDialogActionCopyWithImpl<
          _$_NavigationServiceDialogAction>(this, _$identity);
}

abstract class _NavigationServiceDialogAction
    implements NavigationServiceDialogAction {
  const factory _NavigationServiceDialogAction(
          {required final String text,
          required final void Function() onPressed}) =
      _$_NavigationServiceDialogAction;

  @override
  String get text;
  @override
  void Function() get onPressed;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationServiceDialogActionCopyWith<_$_NavigationServiceDialogAction>
      get copyWith => throw _privateConstructorUsedError;
}
