// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_recipe_parser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeRecipeParserModel {
  bool get temp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeRecipeParserModelCopyWith<HomeRecipeParserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRecipeParserModelCopyWith<$Res> {
  factory $HomeRecipeParserModelCopyWith(HomeRecipeParserModel value,
          $Res Function(HomeRecipeParserModel) then) =
      _$HomeRecipeParserModelCopyWithImpl<$Res, HomeRecipeParserModel>;
  @useResult
  $Res call({bool temp});
}

/// @nodoc
class _$HomeRecipeParserModelCopyWithImpl<$Res,
        $Val extends HomeRecipeParserModel>
    implements $HomeRecipeParserModelCopyWith<$Res> {
  _$HomeRecipeParserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeRecipeParserModelCopyWith<$Res>
    implements $HomeRecipeParserModelCopyWith<$Res> {
  factory _$$_HomeRecipeParserModelCopyWith(_$_HomeRecipeParserModel value,
          $Res Function(_$_HomeRecipeParserModel) then) =
      __$$_HomeRecipeParserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool temp});
}

/// @nodoc
class __$$_HomeRecipeParserModelCopyWithImpl<$Res>
    extends _$HomeRecipeParserModelCopyWithImpl<$Res, _$_HomeRecipeParserModel>
    implements _$$_HomeRecipeParserModelCopyWith<$Res> {
  __$$_HomeRecipeParserModelCopyWithImpl(_$_HomeRecipeParserModel _value,
      $Res Function(_$_HomeRecipeParserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_$_HomeRecipeParserModel(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeRecipeParserModel implements _HomeRecipeParserModel {
  const _$_HomeRecipeParserModel({required this.temp});

  @override
  final bool temp;

  @override
  String toString() {
    return 'HomeRecipeParserModel(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeRecipeParserModel &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeRecipeParserModelCopyWith<_$_HomeRecipeParserModel> get copyWith =>
      __$$_HomeRecipeParserModelCopyWithImpl<_$_HomeRecipeParserModel>(
          this, _$identity);
}

abstract class _HomeRecipeParserModel implements HomeRecipeParserModel {
  const factory _HomeRecipeParserModel({required final bool temp}) =
      _$_HomeRecipeParserModel;

  @override
  bool get temp;
  @override
  @JsonKey(ignore: true)
  _$$_HomeRecipeParserModelCopyWith<_$_HomeRecipeParserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
