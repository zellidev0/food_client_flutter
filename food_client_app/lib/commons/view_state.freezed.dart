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
mixin _$AsyncData<T> {
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
    required TResult Function(AsyncDataData<T> value) data,
    required TResult Function(AsyncDataError<T> value) error,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataData<T> value)? data,
    TResult? Function(AsyncDataError<T> value)? error,
    TResult? Function(AsyncDataLoading<T> value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataData<T> value)? data,
    TResult Function(AsyncDataError<T> value)? error,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncDataCopyWith<T, $Res> {
  factory $AsyncDataCopyWith(
          AsyncData<T> value, $Res Function(AsyncData<T>) then) =
      _$AsyncDataCopyWithImpl<T, $Res, AsyncData<T>>;
}

/// @nodoc
class _$AsyncDataCopyWithImpl<T, $Res, $Val extends AsyncData<T>>
    implements $AsyncDataCopyWith<T, $Res> {
  _$AsyncDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncDataDataCopyWith<T, $Res> {
  factory _$$AsyncDataDataCopyWith(
          _$AsyncDataData<T> value, $Res Function(_$AsyncDataData<T>) then) =
      __$$AsyncDataDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AsyncDataDataCopyWithImpl<T, $Res>
    extends _$AsyncDataCopyWithImpl<T, $Res, _$AsyncDataData<T>>
    implements _$$AsyncDataDataCopyWith<T, $Res> {
  __$$AsyncDataDataCopyWithImpl(
      _$AsyncDataData<T> _value, $Res Function(_$AsyncDataData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncDataData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncDataData<T> extends AsyncDataData<T> {
  const _$AsyncDataData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'AsyncData<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncDataData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncDataDataCopyWith<T, _$AsyncDataData<T>> get copyWith =>
      __$$AsyncDataDataCopyWithImpl<T, _$AsyncDataData<T>>(this, _$identity);

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
    required TResult Function(AsyncDataData<T> value) data,
    required TResult Function(AsyncDataError<T> value) error,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataData<T> value)? data,
    TResult? Function(AsyncDataError<T> value)? error,
    TResult? Function(AsyncDataLoading<T> value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataData<T> value)? data,
    TResult Function(AsyncDataError<T> value)? error,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AsyncDataData<T> extends AsyncData<T> {
  const factory AsyncDataData(final T data) = _$AsyncDataData<T>;
  const AsyncDataData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$AsyncDataDataCopyWith<T, _$AsyncDataData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncDataErrorCopyWith<T, $Res> {
  factory _$$AsyncDataErrorCopyWith(
          _$AsyncDataError<T> value, $Res Function(_$AsyncDataError<T>) then) =
      __$$AsyncDataErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$AsyncDataErrorCopyWithImpl<T, $Res>
    extends _$AsyncDataCopyWithImpl<T, $Res, _$AsyncDataError<T>>
    implements _$$AsyncDataErrorCopyWith<T, $Res> {
  __$$AsyncDataErrorCopyWithImpl(
      _$AsyncDataError<T> _value, $Res Function(_$AsyncDataError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AsyncDataError<T>(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AsyncDataError<T> extends AsyncDataError<T> {
  const _$AsyncDataError(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'AsyncData<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncDataError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncDataErrorCopyWith<T, _$AsyncDataError<T>> get copyWith =>
      __$$AsyncDataErrorCopyWithImpl<T, _$AsyncDataError<T>>(this, _$identity);

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
    required TResult Function(AsyncDataData<T> value) data,
    required TResult Function(AsyncDataError<T> value) error,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataData<T> value)? data,
    TResult? Function(AsyncDataError<T> value)? error,
    TResult? Function(AsyncDataLoading<T> value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataData<T> value)? data,
    TResult Function(AsyncDataError<T> value)? error,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncDataError<T> extends AsyncData<T> {
  const factory AsyncDataError(final Object error) = _$AsyncDataError<T>;
  const AsyncDataError._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$AsyncDataErrorCopyWith<T, _$AsyncDataError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncDataLoadingCopyWith<T, $Res> {
  factory _$$AsyncDataLoadingCopyWith(_$AsyncDataLoading<T> value,
          $Res Function(_$AsyncDataLoading<T>) then) =
      __$$AsyncDataLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncDataLoadingCopyWithImpl<T, $Res>
    extends _$AsyncDataCopyWithImpl<T, $Res, _$AsyncDataLoading<T>>
    implements _$$AsyncDataLoadingCopyWith<T, $Res> {
  __$$AsyncDataLoadingCopyWithImpl(
      _$AsyncDataLoading<T> _value, $Res Function(_$AsyncDataLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncDataLoading<T> extends AsyncDataLoading<T> {
  const _$AsyncDataLoading() : super._();

  @override
  String toString() {
    return 'AsyncData<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncDataLoading<T>);
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
    required TResult Function(AsyncDataData<T> value) data,
    required TResult Function(AsyncDataError<T> value) error,
    required TResult Function(AsyncDataLoading<T> value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataData<T> value)? data,
    TResult? Function(AsyncDataError<T> value)? error,
    TResult? Function(AsyncDataLoading<T> value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataData<T> value)? data,
    TResult Function(AsyncDataError<T> value)? error,
    TResult Function(AsyncDataLoading<T> value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncDataLoading<T> extends AsyncData<T> {
  const factory AsyncDataLoading() = _$AsyncDataLoading<T>;
  const AsyncDataLoading._() : super._();
}
