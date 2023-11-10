// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryModel {
  ViewState<List<HistoryModelRecipe>> get recipes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call({ViewState<List<HistoryModelRecipe>> recipes});

  $ViewStateCopyWith<List<HistoryModelRecipe>, $Res> get recipes;
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

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
              as ViewState<List<HistoryModelRecipe>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<HistoryModelRecipe>, $Res> get recipes {
    return $ViewStateCopyWith<List<HistoryModelRecipe>, $Res>(_value.recipes,
        (value) {
      return _then(_value.copyWith(recipes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryModelCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$_HistoryModelCopyWith(
          _$_HistoryModel value, $Res Function(_$_HistoryModel) then) =
      __$$_HistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<List<HistoryModelRecipe>> recipes});

  @override
  $ViewStateCopyWith<List<HistoryModelRecipe>, $Res> get recipes;
}

/// @nodoc
class __$$_HistoryModelCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$_HistoryModel>
    implements _$$_HistoryModelCopyWith<$Res> {
  __$$_HistoryModelCopyWithImpl(
      _$_HistoryModel _value, $Res Function(_$_HistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_HistoryModel(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HistoryModelRecipe>>,
    ));
  }
}

/// @nodoc

class _$_HistoryModel implements _HistoryModel {
  const _$_HistoryModel({required this.recipes});

  @override
  final ViewState<List<HistoryModelRecipe>> recipes;

  @override
  String toString() {
    return 'HistoryModel(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryModel &&
            (identical(other.recipes, recipes) || other.recipes == recipes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryModelCopyWith<_$_HistoryModel> get copyWith =>
      __$$_HistoryModelCopyWithImpl<_$_HistoryModel>(this, _$identity);
}

abstract class _HistoryModel implements HistoryModel {
  const factory _HistoryModel(
          {required final ViewState<List<HistoryModelRecipe>> recipes}) =
      _$_HistoryModel;

  @override
  ViewState<List<HistoryModelRecipe>> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryModelCopyWith<_$_HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryModelRecipe {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Option<Uri> get imageUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryModelRecipeCopyWith<HistoryModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelRecipeCopyWith<$Res> {
  factory $HistoryModelRecipeCopyWith(
          HistoryModelRecipe value, $Res Function(HistoryModelRecipe) then) =
      _$HistoryModelRecipeCopyWithImpl<$Res, HistoryModelRecipe>;
  @useResult
  $Res call({String id, String title, Option<Uri> imageUri});
}

/// @nodoc
class _$HistoryModelRecipeCopyWithImpl<$Res, $Val extends HistoryModelRecipe>
    implements $HistoryModelRecipeCopyWith<$Res> {
  _$HistoryModelRecipeCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryModelRecipeCopyWith<$Res>
    implements $HistoryModelRecipeCopyWith<$Res> {
  factory _$$_HistoryModelRecipeCopyWith(_$_HistoryModelRecipe value,
          $Res Function(_$_HistoryModelRecipe) then) =
      __$$_HistoryModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, Option<Uri> imageUri});
}

/// @nodoc
class __$$_HistoryModelRecipeCopyWithImpl<$Res>
    extends _$HistoryModelRecipeCopyWithImpl<$Res, _$_HistoryModelRecipe>
    implements _$$_HistoryModelRecipeCopyWith<$Res> {
  __$$_HistoryModelRecipeCopyWithImpl(
      _$_HistoryModelRecipe _value, $Res Function(_$_HistoryModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUri = null,
  }) {
    return _then(_$_HistoryModelRecipe(
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
    ));
  }
}

/// @nodoc

class _$_HistoryModelRecipe implements _HistoryModelRecipe {
  const _$_HistoryModelRecipe(
      {required this.id, required this.title, required this.imageUri});

  @override
  final String id;
  @override
  final String title;
  @override
  final Option<Uri> imageUri;

  @override
  String toString() {
    return 'HistoryModelRecipe(id: $id, title: $title, imageUri: $imageUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryModelRecipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryModelRecipeCopyWith<_$_HistoryModelRecipe> get copyWith =>
      __$$_HistoryModelRecipeCopyWithImpl<_$_HistoryModelRecipe>(
          this, _$identity);
}

abstract class _HistoryModelRecipe implements HistoryModelRecipe {
  const factory _HistoryModelRecipe(
      {required final String id,
      required final String title,
      required final Option<Uri> imageUri}) = _$_HistoryModelRecipe;

  @override
  String get id;
  @override
  String get title;
  @override
  Option<Uri> get imageUri;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryModelRecipeCopyWith<_$_HistoryModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}
