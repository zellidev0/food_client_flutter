// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_controller_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialFetchVariant {
  List<HomeWebClientModelCuisine> get cuisines =>
      throw _privateConstructorUsedError;
  List<HomeWebClientModelTag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialFetchVariantCopyWith<InitialFetchVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialFetchVariantCopyWith<$Res> {
  factory $InitialFetchVariantCopyWith(
          InitialFetchVariant value, $Res Function(InitialFetchVariant) then) =
      _$InitialFetchVariantCopyWithImpl<$Res, InitialFetchVariant>;
  @useResult
  $Res call(
      {List<HomeWebClientModelCuisine> cuisines,
      List<HomeWebClientModelTag> tags});
}

/// @nodoc
class _$InitialFetchVariantCopyWithImpl<$Res, $Val extends InitialFetchVariant>
    implements $InitialFetchVariantCopyWith<$Res> {
  _$InitialFetchVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisines = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelCuisine>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialFetchVariantCopyWith<$Res>
    implements $InitialFetchVariantCopyWith<$Res> {
  factory _$$_InitialFetchVariantCopyWith(_$_InitialFetchVariant value,
          $Res Function(_$_InitialFetchVariant) then) =
      __$$_InitialFetchVariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeWebClientModelCuisine> cuisines,
      List<HomeWebClientModelTag> tags});
}

/// @nodoc
class __$$_InitialFetchVariantCopyWithImpl<$Res>
    extends _$InitialFetchVariantCopyWithImpl<$Res, _$_InitialFetchVariant>
    implements _$$_InitialFetchVariantCopyWith<$Res> {
  __$$_InitialFetchVariantCopyWithImpl(_$_InitialFetchVariant _value,
      $Res Function(_$_InitialFetchVariant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisines = null,
    Object? tags = null,
  }) {
    return _then(_$_InitialFetchVariant(
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelCuisine>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelTag>,
    ));
  }
}

/// @nodoc

class _$_InitialFetchVariant implements _InitialFetchVariant {
  const _$_InitialFetchVariant(
      {required final List<HomeWebClientModelCuisine> cuisines,
      required final List<HomeWebClientModelTag> tags})
      : _cuisines = cuisines,
        _tags = tags;

  final List<HomeWebClientModelCuisine> _cuisines;
  @override
  List<HomeWebClientModelCuisine> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<HomeWebClientModelTag> _tags;
  @override
  List<HomeWebClientModelTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'InitialFetchVariant(cuisines: $cuisines, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialFetchVariant &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialFetchVariantCopyWith<_$_InitialFetchVariant> get copyWith =>
      __$$_InitialFetchVariantCopyWithImpl<_$_InitialFetchVariant>(
          this, _$identity);
}

abstract class _InitialFetchVariant implements InitialFetchVariant {
  const factory _InitialFetchVariant(
          {required final List<HomeWebClientModelCuisine> cuisines,
          required final List<HomeWebClientModelTag> tags}) =
      _$_InitialFetchVariant;

  @override
  List<HomeWebClientModelCuisine> get cuisines;
  @override
  List<HomeWebClientModelTag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_InitialFetchVariantCopyWith<_$_InitialFetchVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
