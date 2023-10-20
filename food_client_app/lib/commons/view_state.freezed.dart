// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object error)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateData<T> value) data,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateData<T> value)? data,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateData<T> value)? data,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T> value, $Res Function(ViewState<T>) then) =
      _$ViewStateCopyWithImpl<T, $Res, ViewState<T>>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, $Res, $Val extends ViewState<T>>
    implements $ViewStateCopyWith<T, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewStateDataCopyWith<T, $Res> {
  factory _$$ViewStateDataCopyWith(
          _$ViewStateData<T> value, $Res Function(_$ViewStateData<T>) then) =
      __$$ViewStateDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ViewStateDataCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateData<T>>
    implements _$$ViewStateDataCopyWith<T, $Res> {
  __$$ViewStateDataCopyWithImpl(
      _$ViewStateData<T> _value, $Res Function(_$ViewStateData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ViewStateData<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewStateData<T> implements ViewStateData<T> {
  const _$ViewStateData({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ViewState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateDataCopyWith<T, _$ViewStateData<T>> get copyWith =>
      __$$ViewStateDataCopyWithImpl<T, _$ViewStateData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object error) error,
    required TResult Function() loading,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object error)? error,
    TResult? Function()? loading,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateData<T> value) data,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateLoading<T> value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateData<T> value)? data,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateLoading<T> value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateData<T> value)? data,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ViewStateData<T> implements ViewState<T> {
  const factory ViewStateData({required final T data}) = _$ViewStateData<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ViewStateDataCopyWith<T, _$ViewStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateErrorCopyWith<T, $Res> {
  factory _$$ViewStateErrorCopyWith(
          _$ViewStateError<T> value, $Res Function(_$ViewStateError<T>) then) =
      __$$ViewStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ViewStateErrorCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateError<T>>
    implements _$$ViewStateErrorCopyWith<T, $Res> {
  __$$ViewStateErrorCopyWithImpl(
      _$ViewStateError<T> _value, $Res Function(_$ViewStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ViewStateError<T>(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ViewStateError<T> implements ViewStateError<T> {
  const _$ViewStateError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ViewState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateErrorCopyWith<T, _$ViewStateError<T>> get copyWith =>
      __$$ViewStateErrorCopyWithImpl<T, _$ViewStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object error)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateData<T> value) data,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateLoading<T> value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateData<T> value)? data,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateLoading<T> value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateData<T> value)? data,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError<T> implements ViewState<T> {
  const factory ViewStateError({required final Object error}) =
      _$ViewStateError<T>;

  Object get error;
  @JsonKey(ignore: true)
  _$$ViewStateErrorCopyWith<T, _$ViewStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateLoadingCopyWith<T, $Res> {
  factory _$$ViewStateLoadingCopyWith(_$ViewStateLoading<T> value,
          $Res Function(_$ViewStateLoading<T>) then) =
      __$$ViewStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateLoadingCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateLoading<T>>
    implements _$$ViewStateLoadingCopyWith<T, $Res> {
  __$$ViewStateLoadingCopyWithImpl(
      _$ViewStateLoading<T> _value, $Res Function(_$ViewStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoading<T> implements ViewStateLoading<T> {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Object error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(Object error)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Object error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateData<T> value) data,
    required TResult Function(ViewStateError<T> value) error,
    required TResult Function(ViewStateLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateData<T> value)? data,
    TResult? Function(ViewStateError<T> value)? error,
    TResult? Function(ViewStateLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateData<T> value)? data,
    TResult Function(ViewStateError<T> value)? error,
    TResult Function(ViewStateLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading<T> implements ViewState<T> {
  const factory ViewStateLoading() = _$ViewStateLoading<T>;
}
