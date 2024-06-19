// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryState {
  ViewState<List<HistoryStateRecipe>> get recipes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call({ViewState<List<HistoryStateRecipe>> recipes});

  $ViewStateCopyWith<List<HistoryStateRecipe>, $Res> get recipes;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HistoryStateRecipe>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<HistoryStateRecipe>, $Res> get recipes {
    return $ViewStateCopyWith<List<HistoryStateRecipe>, $Res>(_value.recipes,
        (value) {
      return _then(_value.copyWith(recipes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryStateImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateImplCopyWith(
          _$HistoryStateImpl value, $Res Function(_$HistoryStateImpl) then) =
      __$$HistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<List<HistoryStateRecipe>> recipes});

  @override
  $ViewStateCopyWith<List<HistoryStateRecipe>, $Res> get recipes;
}

/// @nodoc
class __$$HistoryStateImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateImpl>
    implements _$$HistoryStateImplCopyWith<$Res> {
  __$$HistoryStateImplCopyWithImpl(
      _$HistoryStateImpl _value, $Res Function(_$HistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$HistoryStateImpl(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HistoryStateRecipe>>,
    ));
  }
}

/// @nodoc

class _$HistoryStateImpl implements _HistoryState {
  const _$HistoryStateImpl({required this.recipes});

  @override
  final ViewState<List<HistoryStateRecipe>> recipes;

  @override
  String toString() {
    return 'HistoryState(recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateImpl &&
            (identical(other.recipes, recipes) || other.recipes == recipes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      __$$HistoryStateImplCopyWithImpl<_$HistoryStateImpl>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
          {required final ViewState<List<HistoryStateRecipe>> recipes}) =
      _$HistoryStateImpl;

  @override
  ViewState<List<HistoryStateRecipe>> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryStateRecipe {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Option<Uri> get imageUri => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateRecipeCopyWith<HistoryStateRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateRecipeCopyWith<$Res> {
  factory $HistoryStateRecipeCopyWith(
          HistoryStateRecipe value, $Res Function(HistoryStateRecipe) then) =
      _$HistoryStateRecipeCopyWithImpl<$Res, HistoryStateRecipe>;
  @useResult
  $Res call({String id, String title, Option<Uri> imageUri, String createdAt});
}

/// @nodoc
class _$HistoryStateRecipeCopyWithImpl<$Res, $Val extends HistoryStateRecipe>
    implements $HistoryStateRecipeCopyWith<$Res> {
  _$HistoryStateRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUri = null,
    Object? createdAt = null,
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
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryStateRecipeImplCopyWith<$Res>
    implements $HistoryStateRecipeCopyWith<$Res> {
  factory _$$HistoryStateRecipeImplCopyWith(_$HistoryStateRecipeImpl value,
          $Res Function(_$HistoryStateRecipeImpl) then) =
      __$$HistoryStateRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, Option<Uri> imageUri, String createdAt});
}

/// @nodoc
class __$$HistoryStateRecipeImplCopyWithImpl<$Res>
    extends _$HistoryStateRecipeCopyWithImpl<$Res, _$HistoryStateRecipeImpl>
    implements _$$HistoryStateRecipeImplCopyWith<$Res> {
  __$$HistoryStateRecipeImplCopyWithImpl(_$HistoryStateRecipeImpl _value,
      $Res Function(_$HistoryStateRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUri = null,
    Object? createdAt = null,
  }) {
    return _then(_$HistoryStateRecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistoryStateRecipeImpl implements _HistoryStateRecipe {
  const _$HistoryStateRecipeImpl(
      {required this.id,
      required this.title,
      required this.imageUri,
      required this.createdAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final Option<Uri> imageUri;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'HistoryStateRecipe(id: $id, title: $title, imageUri: $imageUri, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateRecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUri, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateRecipeImplCopyWith<_$HistoryStateRecipeImpl> get copyWith =>
      __$$HistoryStateRecipeImplCopyWithImpl<_$HistoryStateRecipeImpl>(
          this, _$identity);
}

abstract class _HistoryStateRecipe implements HistoryStateRecipe {
  const factory _HistoryStateRecipe(
      {required final String id,
      required final String title,
      required final Option<Uri> imageUri,
      required final String createdAt}) = _$HistoryStateRecipeImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  Option<Uri> get imageUri;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateRecipeImplCopyWith<_$HistoryStateRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
