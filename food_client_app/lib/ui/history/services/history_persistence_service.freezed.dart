// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryPersistenceServiceModelRecipe {
  String get recipeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;
  HistoryPersistenceServiceModelOrigin get origin =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryPersistenceServiceModelRecipeCopyWith<
          HistoryPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPersistenceServiceModelRecipeCopyWith<$Res> {
  factory $HistoryPersistenceServiceModelRecipeCopyWith(
          HistoryPersistenceServiceModelRecipe value,
          $Res Function(HistoryPersistenceServiceModelRecipe) then) =
      _$HistoryPersistenceServiceModelRecipeCopyWithImpl<$Res,
          HistoryPersistenceServiceModelRecipe>;
  @useResult
  $Res call(
      {String recipeId,
      String title,
      Option<Uri> imagePath,
      HistoryPersistenceServiceModelOrigin origin,
      DateTime createdAt});

  $HistoryPersistenceServiceModelOriginCopyWith<$Res> get origin;
}

/// @nodoc
class _$HistoryPersistenceServiceModelRecipeCopyWithImpl<$Res,
        $Val extends HistoryPersistenceServiceModelRecipe>
    implements $HistoryPersistenceServiceModelRecipeCopyWith<$Res> {
  _$HistoryPersistenceServiceModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
    Object? imagePath = null,
    Object? origin = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as HistoryPersistenceServiceModelOrigin,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryPersistenceServiceModelOriginCopyWith<$Res> get origin {
    return $HistoryPersistenceServiceModelOriginCopyWith<$Res>(_value.origin,
        (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryPersistenceServiceModelRecipeCopyWith<$Res>
    implements $HistoryPersistenceServiceModelRecipeCopyWith<$Res> {
  factory _$$_HistoryPersistenceServiceModelRecipeCopyWith(
          _$_HistoryPersistenceServiceModelRecipe value,
          $Res Function(_$_HistoryPersistenceServiceModelRecipe) then) =
      __$$_HistoryPersistenceServiceModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      String title,
      Option<Uri> imagePath,
      HistoryPersistenceServiceModelOrigin origin,
      DateTime createdAt});

  @override
  $HistoryPersistenceServiceModelOriginCopyWith<$Res> get origin;
}

/// @nodoc
class __$$_HistoryPersistenceServiceModelRecipeCopyWithImpl<$Res>
    extends _$HistoryPersistenceServiceModelRecipeCopyWithImpl<$Res,
        _$_HistoryPersistenceServiceModelRecipe>
    implements _$$_HistoryPersistenceServiceModelRecipeCopyWith<$Res> {
  __$$_HistoryPersistenceServiceModelRecipeCopyWithImpl(
      _$_HistoryPersistenceServiceModelRecipe _value,
      $Res Function(_$_HistoryPersistenceServiceModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
    Object? imagePath = null,
    Object? origin = null,
    Object? createdAt = null,
  }) {
    return _then(_$_HistoryPersistenceServiceModelRecipe(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as HistoryPersistenceServiceModelOrigin,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HistoryPersistenceServiceModelRecipe
    implements _HistoryPersistenceServiceModelRecipe {
  const _$_HistoryPersistenceServiceModelRecipe(
      {required this.recipeId,
      required this.title,
      required this.imagePath,
      required this.origin,
      required this.createdAt});

  @override
  final String recipeId;
  @override
  final String title;
  @override
  final Option<Uri> imagePath;
  @override
  final HistoryPersistenceServiceModelOrigin origin;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'HistoryPersistenceServiceModelRecipe(recipeId: $recipeId, title: $title, imagePath: $imagePath, origin: $origin, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryPersistenceServiceModelRecipe &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, recipeId, title, imagePath, origin, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryPersistenceServiceModelRecipeCopyWith<
          _$_HistoryPersistenceServiceModelRecipe>
      get copyWith => __$$_HistoryPersistenceServiceModelRecipeCopyWithImpl<
          _$_HistoryPersistenceServiceModelRecipe>(this, _$identity);
}

abstract class _HistoryPersistenceServiceModelRecipe
    implements HistoryPersistenceServiceModelRecipe {
  const factory _HistoryPersistenceServiceModelRecipe(
          {required final String recipeId,
          required final String title,
          required final Option<Uri> imagePath,
          required final HistoryPersistenceServiceModelOrigin origin,
          required final DateTime createdAt}) =
      _$_HistoryPersistenceServiceModelRecipe;

  @override
  String get recipeId;
  @override
  String get title;
  @override
  Option<Uri> get imagePath;
  @override
  HistoryPersistenceServiceModelOrigin get origin;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryPersistenceServiceModelRecipeCopyWith<
          _$_HistoryPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryPersistenceServiceModelOrigin {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryPersistenceServiceModelOriginClicked value)
        clicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryPersistenceServiceModelOriginClicked value)?
        clicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryPersistenceServiceModelOriginClicked value)?
        clicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPersistenceServiceModelOriginCopyWith<$Res> {
  factory $HistoryPersistenceServiceModelOriginCopyWith(
          HistoryPersistenceServiceModelOrigin value,
          $Res Function(HistoryPersistenceServiceModelOrigin) then) =
      _$HistoryPersistenceServiceModelOriginCopyWithImpl<$Res,
          HistoryPersistenceServiceModelOrigin>;
}

/// @nodoc
class _$HistoryPersistenceServiceModelOriginCopyWithImpl<$Res,
        $Val extends HistoryPersistenceServiceModelOrigin>
    implements $HistoryPersistenceServiceModelOriginCopyWith<$Res> {
  _$HistoryPersistenceServiceModelOriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryPersistenceServiceModelOriginClickedCopyWith<$Res> {
  factory _$$HistoryPersistenceServiceModelOriginClickedCopyWith(
          _$HistoryPersistenceServiceModelOriginClicked value,
          $Res Function(_$HistoryPersistenceServiceModelOriginClicked) then) =
      __$$HistoryPersistenceServiceModelOriginClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryPersistenceServiceModelOriginClickedCopyWithImpl<$Res>
    extends _$HistoryPersistenceServiceModelOriginCopyWithImpl<$Res,
        _$HistoryPersistenceServiceModelOriginClicked>
    implements _$$HistoryPersistenceServiceModelOriginClickedCopyWith<$Res> {
  __$$HistoryPersistenceServiceModelOriginClickedCopyWithImpl(
      _$HistoryPersistenceServiceModelOriginClicked _value,
      $Res Function(_$HistoryPersistenceServiceModelOriginClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryPersistenceServiceModelOriginClicked
    implements HistoryPersistenceServiceModelOriginClicked {
  const _$HistoryPersistenceServiceModelOriginClicked();

  @override
  String toString() {
    return 'HistoryPersistenceServiceModelOrigin.clicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryPersistenceServiceModelOriginClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clicked,
  }) {
    return clicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clicked,
  }) {
    return clicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clicked,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryPersistenceServiceModelOriginClicked value)
        clicked,
  }) {
    return clicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryPersistenceServiceModelOriginClicked value)?
        clicked,
  }) {
    return clicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryPersistenceServiceModelOriginClicked value)?
        clicked,
    required TResult orElse(),
  }) {
    if (clicked != null) {
      return clicked(this);
    }
    return orElse();
  }
}

abstract class HistoryPersistenceServiceModelOriginClicked
    implements HistoryPersistenceServiceModelOrigin {
  const factory HistoryPersistenceServiceModelOriginClicked() =
      _$HistoryPersistenceServiceModelOriginClicked;
}
