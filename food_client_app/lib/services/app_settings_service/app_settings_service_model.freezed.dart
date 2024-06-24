// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsServiceModel {
  List<Locale> get recipeLocales => throw _privateConstructorUsedError;
  bool get combineIngredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsServiceModelCopyWith<AppSettingsServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsServiceModelCopyWith<$Res> {
  factory $AppSettingsServiceModelCopyWith(AppSettingsServiceModel value,
          $Res Function(AppSettingsServiceModel) then) =
      _$AppSettingsServiceModelCopyWithImpl<$Res, AppSettingsServiceModel>;
  @useResult
  $Res call({List<Locale> recipeLocales, bool combineIngredients});
}

/// @nodoc
class _$AppSettingsServiceModelCopyWithImpl<$Res,
        $Val extends AppSettingsServiceModel>
    implements $AppSettingsServiceModelCopyWith<$Res> {
  _$AppSettingsServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeLocales = null,
    Object? combineIngredients = null,
  }) {
    return _then(_value.copyWith(
      recipeLocales: null == recipeLocales
          ? _value.recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsServiceModelImplCopyWith<$Res>
    implements $AppSettingsServiceModelCopyWith<$Res> {
  factory _$$AppSettingsServiceModelImplCopyWith(
          _$AppSettingsServiceModelImpl value,
          $Res Function(_$AppSettingsServiceModelImpl) then) =
      __$$AppSettingsServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Locale> recipeLocales, bool combineIngredients});
}

/// @nodoc
class __$$AppSettingsServiceModelImplCopyWithImpl<$Res>
    extends _$AppSettingsServiceModelCopyWithImpl<$Res,
        _$AppSettingsServiceModelImpl>
    implements _$$AppSettingsServiceModelImplCopyWith<$Res> {
  __$$AppSettingsServiceModelImplCopyWithImpl(
      _$AppSettingsServiceModelImpl _value,
      $Res Function(_$AppSettingsServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeLocales = null,
    Object? combineIngredients = null,
  }) {
    return _then(_$AppSettingsServiceModelImpl(
      recipeLocales: null == recipeLocales
          ? _value._recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppSettingsServiceModelImpl implements _AppSettingsServiceModel {
  const _$AppSettingsServiceModelImpl(
      {required final List<Locale> recipeLocales,
      required this.combineIngredients})
      : _recipeLocales = recipeLocales;

  final List<Locale> _recipeLocales;
  @override
  List<Locale> get recipeLocales {
    if (_recipeLocales is EqualUnmodifiableListView) return _recipeLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeLocales);
  }

  @override
  final bool combineIngredients;

  @override
  String toString() {
    return 'AppSettingsServiceModel(recipeLocales: $recipeLocales, combineIngredients: $combineIngredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsServiceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._recipeLocales, _recipeLocales) &&
            (identical(other.combineIngredients, combineIngredients) ||
                other.combineIngredients == combineIngredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recipeLocales), combineIngredients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsServiceModelImplCopyWith<_$AppSettingsServiceModelImpl>
      get copyWith => __$$AppSettingsServiceModelImplCopyWithImpl<
          _$AppSettingsServiceModelImpl>(this, _$identity);
}

abstract class _AppSettingsServiceModel implements AppSettingsServiceModel {
  const factory _AppSettingsServiceModel(
      {required final List<Locale> recipeLocales,
      required final bool combineIngredients}) = _$AppSettingsServiceModelImpl;

  @override
  List<Locale> get recipeLocales;
  @override
  bool get combineIngredients;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsServiceModelImplCopyWith<_$AppSettingsServiceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
