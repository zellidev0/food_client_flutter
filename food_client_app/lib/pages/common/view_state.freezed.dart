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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ViewStateDataImplCopyWith<T, $Res> {
  factory _$$ViewStateDataImplCopyWith(_$ViewStateDataImpl<T> value,
          $Res Function(_$ViewStateDataImpl<T>) then) =
      __$$ViewStateDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ViewStateDataImplCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateDataImpl<T>>
    implements _$$ViewStateDataImplCopyWith<T, $Res> {
  __$$ViewStateDataImplCopyWithImpl(_$ViewStateDataImpl<T> _value,
      $Res Function(_$ViewStateDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ViewStateDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewStateDataImpl<T> extends ViewStateData<T> {
  const _$ViewStateDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ViewState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateDataImplCopyWith<T, _$ViewStateDataImpl<T>> get copyWith =>
      __$$ViewStateDataImplCopyWithImpl<T, _$ViewStateDataImpl<T>>(
          this, _$identity);

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

abstract class ViewStateData<T> extends ViewState<T> {
  const factory ViewStateData(final T data) = _$ViewStateDataImpl<T>;
  const ViewStateData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ViewStateDataImplCopyWith<T, _$ViewStateDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateErrorImplCopyWith<T, $Res> {
  factory _$$ViewStateErrorImplCopyWith(_$ViewStateErrorImpl<T> value,
          $Res Function(_$ViewStateErrorImpl<T>) then) =
      __$$ViewStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ViewStateErrorImplCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateErrorImpl<T>>
    implements _$$ViewStateErrorImplCopyWith<T, $Res> {
  __$$ViewStateErrorImplCopyWithImpl(_$ViewStateErrorImpl<T> _value,
      $Res Function(_$ViewStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ViewStateErrorImpl<T>(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ViewStateErrorImpl<T> extends ViewStateError<T> {
  const _$ViewStateErrorImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'ViewState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateErrorImplCopyWith<T, _$ViewStateErrorImpl<T>> get copyWith =>
      __$$ViewStateErrorImplCopyWithImpl<T, _$ViewStateErrorImpl<T>>(
          this, _$identity);

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

abstract class ViewStateError<T> extends ViewState<T> {
  const factory ViewStateError(final Object error) = _$ViewStateErrorImpl<T>;
  const ViewStateError._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$ViewStateErrorImplCopyWith<T, _$ViewStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateLoadingImplCopyWith<T, $Res> {
  factory _$$ViewStateLoadingImplCopyWith(_$ViewStateLoadingImpl<T> value,
          $Res Function(_$ViewStateLoadingImpl<T>) then) =
      __$$ViewStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateLoadingImplCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateLoadingImpl<T>>
    implements _$$ViewStateLoadingImplCopyWith<T, $Res> {
  __$$ViewStateLoadingImplCopyWithImpl(_$ViewStateLoadingImpl<T> _value,
      $Res Function(_$ViewStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoadingImpl<T> extends ViewStateLoading<T> {
  const _$ViewStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateLoadingImpl<T>);
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

abstract class ViewStateLoading<T> extends ViewState<T> {
  const factory ViewStateLoading() = _$ViewStateLoadingImpl<T>;
  const ViewStateLoading._() : super._();
}
