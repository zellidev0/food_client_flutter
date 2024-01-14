// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hello_fresh_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelloFreshModelRecipeApiRecipeResponse
    _$HelloFreshModelRecipeApiRecipeResponseFromJson(
        Map<String, dynamic> json) {
  return _HelloFreshModelRecipeApiRecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipeApiRecipeResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<HelloFreshModelRecipe> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeApiRecipeResponseCopyWith<
          HelloFreshModelRecipeApiRecipeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory $HelloFreshModelRecipeApiRecipeResponseCopyWith(
          HelloFreshModelRecipeApiRecipeResponse value,
          $Res Function(HelloFreshModelRecipeApiRecipeResponse) then) =
      _$HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res,
          HelloFreshModelRecipeApiRecipeResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelRecipe> items});
}

/// @nodoc
class _$HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipeApiRecipeResponse>
    implements $HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res> {
  _$HelloFreshModelRecipeApiRecipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelRecipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeApiRecipeResponseImplCopyWith<$Res>
    implements $HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeApiRecipeResponseImplCopyWith(
          _$HelloFreshModelRecipeApiRecipeResponseImpl value,
          $Res Function(_$HelloFreshModelRecipeApiRecipeResponseImpl) then) =
      __$$HelloFreshModelRecipeApiRecipeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelRecipe> items});
}

/// @nodoc
class __$$HelloFreshModelRecipeApiRecipeResponseImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        _$HelloFreshModelRecipeApiRecipeResponseImpl>
    implements _$$HelloFreshModelRecipeApiRecipeResponseImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeApiRecipeResponseImplCopyWithImpl(
      _$HelloFreshModelRecipeApiRecipeResponseImpl _value,
      $Res Function(_$HelloFreshModelRecipeApiRecipeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_$HelloFreshModelRecipeApiRecipeResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelRecipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeApiRecipeResponseImpl
    implements _HelloFreshModelRecipeApiRecipeResponse {
  const _$HelloFreshModelRecipeApiRecipeResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelRecipe> items})
      : _items = items;

  factory _$HelloFreshModelRecipeApiRecipeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeApiRecipeResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<HelloFreshModelRecipe> _items;
  @override
  List<HelloFreshModelRecipe> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiRecipeResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeApiRecipeResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, take, count, skip,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeApiRecipeResponseImplCopyWith<
          _$HelloFreshModelRecipeApiRecipeResponseImpl>
      get copyWith =>
          __$$HelloFreshModelRecipeApiRecipeResponseImplCopyWithImpl<
              _$HelloFreshModelRecipeApiRecipeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeApiRecipeResponseImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipeApiRecipeResponse
    implements HelloFreshModelRecipeApiRecipeResponse {
  const factory _HelloFreshModelRecipeApiRecipeResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<HelloFreshModelRecipe> items}) =
      _$HelloFreshModelRecipeApiRecipeResponseImpl;

  factory _HelloFreshModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =
      _$HelloFreshModelRecipeApiRecipeResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<HelloFreshModelRecipe> get items;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeApiRecipeResponseImplCopyWith<
          _$HelloFreshModelRecipeApiRecipeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelRecipeApiTagResponse
    _$HelloFreshModelRecipeApiTagResponseFromJson(Map<String, dynamic> json) {
  return _HelloFreshModelRecipeApiTagResponse.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipeApiTagResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<HelloFreshModelTag> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeApiTagResponseCopyWith<
          HelloFreshModelRecipeApiTagResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeApiTagResponseCopyWith<$Res> {
  factory $HelloFreshModelRecipeApiTagResponseCopyWith(
          HelloFreshModelRecipeApiTagResponse value,
          $Res Function(HelloFreshModelRecipeApiTagResponse) then) =
      _$HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res,
          HelloFreshModelRecipeApiTagResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelTag> items});
}

/// @nodoc
class _$HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipeApiTagResponse>
    implements $HelloFreshModelRecipeApiTagResponseCopyWith<$Res> {
  _$HelloFreshModelRecipeApiTagResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeApiTagResponseImplCopyWith<$Res>
    implements $HelloFreshModelRecipeApiTagResponseCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeApiTagResponseImplCopyWith(
          _$HelloFreshModelRecipeApiTagResponseImpl value,
          $Res Function(_$HelloFreshModelRecipeApiTagResponseImpl) then) =
      __$$HelloFreshModelRecipeApiTagResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelTag> items});
}

/// @nodoc
class __$$HelloFreshModelRecipeApiTagResponseImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res,
        _$HelloFreshModelRecipeApiTagResponseImpl>
    implements _$$HelloFreshModelRecipeApiTagResponseImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeApiTagResponseImplCopyWithImpl(
      _$HelloFreshModelRecipeApiTagResponseImpl _value,
      $Res Function(_$HelloFreshModelRecipeApiTagResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_$HelloFreshModelRecipeApiTagResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeApiTagResponseImpl
    implements _HelloFreshModelRecipeApiTagResponse {
  const _$HelloFreshModelRecipeApiTagResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelTag> items})
      : _items = items;

  factory _$HelloFreshModelRecipeApiTagResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeApiTagResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<HelloFreshModelTag> _items;
  @override
  List<HelloFreshModelTag> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiTagResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeApiTagResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, take, count, skip,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeApiTagResponseImplCopyWith<
          _$HelloFreshModelRecipeApiTagResponseImpl>
      get copyWith => __$$HelloFreshModelRecipeApiTagResponseImplCopyWithImpl<
          _$HelloFreshModelRecipeApiTagResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeApiTagResponseImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipeApiTagResponse
    implements HelloFreshModelRecipeApiTagResponse {
  const factory _HelloFreshModelRecipeApiTagResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<HelloFreshModelTag> items}) =
      _$HelloFreshModelRecipeApiTagResponseImpl;

  factory _HelloFreshModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =
      _$HelloFreshModelRecipeApiTagResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<HelloFreshModelTag> get items;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeApiTagResponseImplCopyWith<
          _$HelloFreshModelRecipeApiTagResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelRecipeApiCuisineResponse
    _$HelloFreshModelRecipeApiCuisineResponseFromJson(
        Map<String, dynamic> json) {
  return _HelloFreshModelRecipeApiCuisineResponse.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipeApiCuisineResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<HelloFreshModelCuisine> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeApiCuisineResponseCopyWith<
          HelloFreshModelRecipeApiCuisineResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory $HelloFreshModelRecipeApiCuisineResponseCopyWith(
          HelloFreshModelRecipeApiCuisineResponse value,
          $Res Function(HelloFreshModelRecipeApiCuisineResponse) then) =
      _$HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res,
          HelloFreshModelRecipeApiCuisineResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelCuisine> items});
}

/// @nodoc
class _$HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipeApiCuisineResponse>
    implements $HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res> {
  _$HelloFreshModelRecipeApiCuisineResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelCuisine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeApiCuisineResponseImplCopyWith<$Res>
    implements $HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeApiCuisineResponseImplCopyWith(
          _$HelloFreshModelRecipeApiCuisineResponseImpl value,
          $Res Function(_$HelloFreshModelRecipeApiCuisineResponseImpl) then) =
      __$$HelloFreshModelRecipeApiCuisineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelCuisine> items});
}

/// @nodoc
class __$$HelloFreshModelRecipeApiCuisineResponseImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        _$HelloFreshModelRecipeApiCuisineResponseImpl>
    implements _$$HelloFreshModelRecipeApiCuisineResponseImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeApiCuisineResponseImplCopyWithImpl(
      _$HelloFreshModelRecipeApiCuisineResponseImpl _value,
      $Res Function(_$HelloFreshModelRecipeApiCuisineResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_$HelloFreshModelRecipeApiCuisineResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelCuisine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeApiCuisineResponseImpl
    implements _HelloFreshModelRecipeApiCuisineResponse {
  const _$HelloFreshModelRecipeApiCuisineResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelCuisine> items})
      : _items = items;

  factory _$HelloFreshModelRecipeApiCuisineResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeApiCuisineResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<HelloFreshModelCuisine> _items;
  @override
  List<HelloFreshModelCuisine> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiCuisineResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeApiCuisineResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, take, count, skip,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeApiCuisineResponseImplCopyWith<
          _$HelloFreshModelRecipeApiCuisineResponseImpl>
      get copyWith =>
          __$$HelloFreshModelRecipeApiCuisineResponseImplCopyWithImpl<
              _$HelloFreshModelRecipeApiCuisineResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeApiCuisineResponseImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipeApiCuisineResponse
    implements HelloFreshModelRecipeApiCuisineResponse {
  const factory _HelloFreshModelRecipeApiCuisineResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<HelloFreshModelCuisine> items}) =
      _$HelloFreshModelRecipeApiCuisineResponseImpl;

  factory _HelloFreshModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =
      _$HelloFreshModelRecipeApiCuisineResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<HelloFreshModelCuisine> get items;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeApiCuisineResponseImplCopyWith<
          _$HelloFreshModelRecipeApiCuisineResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelRecipeApiIngredientsResponse
    _$HelloFreshModelRecipeApiIngredientsResponseFromJson(
        Map<String, dynamic> json) {
  return _HelloFreshModelRecipeApiIngredientsResponse.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipeApiIngredientsResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<HelloFreshModelIngredient> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeApiIngredientsResponseCopyWith<
          HelloFreshModelRecipeApiIngredientsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory $HelloFreshModelRecipeApiIngredientsResponseCopyWith(
          HelloFreshModelRecipeApiIngredientsResponse value,
          $Res Function(HelloFreshModelRecipeApiIngredientsResponse) then) =
      _$HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
          HelloFreshModelRecipeApiIngredientsResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelIngredient> items});
}

/// @nodoc
class _$HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipeApiIngredientsResponse>
    implements $HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res> {
  _$HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWith<$Res>
    implements $HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWith(
          _$HelloFreshModelRecipeApiIngredientsResponseImpl value,
          $Res Function(_$HelloFreshModelRecipeApiIngredientsResponseImpl)
              then) =
      __$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelIngredient> items});
}

/// @nodoc
class __$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        _$HelloFreshModelRecipeApiIngredientsResponseImpl>
    implements
        _$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWithImpl(
      _$HelloFreshModelRecipeApiIngredientsResponseImpl _value,
      $Res Function(_$HelloFreshModelRecipeApiIngredientsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_$HelloFreshModelRecipeApiIngredientsResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelIngredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeApiIngredientsResponseImpl
    implements _HelloFreshModelRecipeApiIngredientsResponse {
  const _$HelloFreshModelRecipeApiIngredientsResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelIngredient> items})
      : _items = items;

  factory _$HelloFreshModelRecipeApiIngredientsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeApiIngredientsResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<HelloFreshModelIngredient> _items;
  @override
  List<HelloFreshModelIngredient> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiIngredientsResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeApiIngredientsResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, take, count, skip,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWith<
          _$HelloFreshModelRecipeApiIngredientsResponseImpl>
      get copyWith =>
          __$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWithImpl<
                  _$HelloFreshModelRecipeApiIngredientsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeApiIngredientsResponseImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipeApiIngredientsResponse
    implements HelloFreshModelRecipeApiIngredientsResponse {
  const factory _HelloFreshModelRecipeApiIngredientsResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<HelloFreshModelIngredient> items}) =
      _$HelloFreshModelRecipeApiIngredientsResponseImpl;

  factory _HelloFreshModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =
      _$HelloFreshModelRecipeApiIngredientsResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<HelloFreshModelIngredient> get items;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeApiIngredientsResponseImplCopyWith<
          _$HelloFreshModelRecipeApiIngredientsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelTagsApiResponse _$HelloFreshModelTagsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelTagsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelTagsApiResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<HelloFreshModelTag> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelTagsApiResponseCopyWith<HelloFreshModelTagsApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelTagsApiResponseCopyWith<$Res> {
  factory $HelloFreshModelTagsApiResponseCopyWith(
          HelloFreshModelTagsApiResponse value,
          $Res Function(HelloFreshModelTagsApiResponse) then) =
      _$HelloFreshModelTagsApiResponseCopyWithImpl<$Res,
          HelloFreshModelTagsApiResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelTag> items});
}

/// @nodoc
class _$HelloFreshModelTagsApiResponseCopyWithImpl<$Res,
        $Val extends HelloFreshModelTagsApiResponse>
    implements $HelloFreshModelTagsApiResponseCopyWith<$Res> {
  _$HelloFreshModelTagsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelTagsApiResponseImplCopyWith<$Res>
    implements $HelloFreshModelTagsApiResponseCopyWith<$Res> {
  factory _$$HelloFreshModelTagsApiResponseImplCopyWith(
          _$HelloFreshModelTagsApiResponseImpl value,
          $Res Function(_$HelloFreshModelTagsApiResponseImpl) then) =
      __$$HelloFreshModelTagsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<HelloFreshModelTag> items});
}

/// @nodoc
class __$$HelloFreshModelTagsApiResponseImplCopyWithImpl<$Res>
    extends _$HelloFreshModelTagsApiResponseCopyWithImpl<$Res,
        _$HelloFreshModelTagsApiResponseImpl>
    implements _$$HelloFreshModelTagsApiResponseImplCopyWith<$Res> {
  __$$HelloFreshModelTagsApiResponseImplCopyWithImpl(
      _$HelloFreshModelTagsApiResponseImpl _value,
      $Res Function(_$HelloFreshModelTagsApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? take = null,
    Object? count = null,
    Object? skip = null,
    Object? items = null,
  }) {
    return _then(_$HelloFreshModelTagsApiResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelTagsApiResponseImpl
    implements _HelloFreshModelTagsApiResponse {
  const _$HelloFreshModelTagsApiResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelTag> items})
      : _items = items;

  factory _$HelloFreshModelTagsApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelTagsApiResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<HelloFreshModelTag> _items;
  @override
  List<HelloFreshModelTag> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelTagsApiResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelTagsApiResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, take, count, skip,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelTagsApiResponseImplCopyWith<
          _$HelloFreshModelTagsApiResponseImpl>
      get copyWith => __$$HelloFreshModelTagsApiResponseImplCopyWithImpl<
          _$HelloFreshModelTagsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelTagsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelTagsApiResponse
    implements HelloFreshModelTagsApiResponse {
  const factory _HelloFreshModelTagsApiResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<HelloFreshModelTag> items}) =
      _$HelloFreshModelTagsApiResponseImpl;

  factory _HelloFreshModelTagsApiResponse.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelTagsApiResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<HelloFreshModelTag> get items;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelTagsApiResponseImplCopyWith<
          _$HelloFreshModelTagsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelRecipe _$HelloFreshModelRecipeFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelRecipe.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipe {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  Option<String> get prepTime => throw _privateConstructorUsedError;
  Option<String> get totalTime => throw _privateConstructorUsedError;
  Option<String> get imagePath => throw _privateConstructorUsedError;
  List<HelloFreshModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  List<HelloFreshModelYield> get yields => throw _privateConstructorUsedError;
  List<HelloFreshModelRecipeTag> get tags => throw _privateConstructorUsedError;
  List<HelloFreshModelStep> get steps => throw _privateConstructorUsedError;
  List<HelloFreshModelCuisine> get cuisines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeCopyWith<HelloFreshModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeCopyWith<$Res> {
  factory $HelloFreshModelRecipeCopyWith(HelloFreshModelRecipe value,
          $Res Function(HelloFreshModelRecipe) then) =
      _$HelloFreshModelRecipeCopyWithImpl<$Res, HelloFreshModelRecipe>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String country,
      String headline,
      String description,
      Option<String> descriptionMarkdown,
      int difficulty,
      Option<String> prepTime,
      Option<String> totalTime,
      Option<String> imagePath,
      List<HelloFreshModelIngredient> ingredients,
      List<HelloFreshModelYield> yields,
      List<HelloFreshModelRecipeTag> tags,
      List<HelloFreshModelStep> steps,
      List<HelloFreshModelCuisine> cuisines});
}

/// @nodoc
class _$HelloFreshModelRecipeCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipe>
    implements $HelloFreshModelRecipeCopyWith<$Res> {
  _$HelloFreshModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? country = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
    Object? difficulty = null,
    Object? prepTime = null,
    Object? totalTime = null,
    Object? imagePath = null,
    Object? ingredients = null,
    Object? yields = null,
    Object? tags = null,
    Object? steps = null,
    Object? cuisines = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionMarkdown: null == descriptionMarkdown
          ? _value.descriptionMarkdown
          : descriptionMarkdown // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      prepTime: null == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelIngredient>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelYield>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelRecipeTag>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelStep>,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelCuisine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeImplCopyWith<$Res>
    implements $HelloFreshModelRecipeCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeImplCopyWith(
          _$HelloFreshModelRecipeImpl value,
          $Res Function(_$HelloFreshModelRecipeImpl) then) =
      __$$HelloFreshModelRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String country,
      String headline,
      String description,
      Option<String> descriptionMarkdown,
      int difficulty,
      Option<String> prepTime,
      Option<String> totalTime,
      Option<String> imagePath,
      List<HelloFreshModelIngredient> ingredients,
      List<HelloFreshModelYield> yields,
      List<HelloFreshModelRecipeTag> tags,
      List<HelloFreshModelStep> steps,
      List<HelloFreshModelCuisine> cuisines});
}

/// @nodoc
class __$$HelloFreshModelRecipeImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeCopyWithImpl<$Res,
        _$HelloFreshModelRecipeImpl>
    implements _$$HelloFreshModelRecipeImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeImplCopyWithImpl(_$HelloFreshModelRecipeImpl _value,
      $Res Function(_$HelloFreshModelRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? country = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
    Object? difficulty = null,
    Object? prepTime = null,
    Object? totalTime = null,
    Object? imagePath = null,
    Object? ingredients = null,
    Object? yields = null,
    Object? tags = null,
    Object? steps = null,
    Object? cuisines = null,
  }) {
    return _then(_$HelloFreshModelRecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionMarkdown: null == descriptionMarkdown
          ? _value.descriptionMarkdown
          : descriptionMarkdown // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      prepTime: null == prepTime
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelIngredient>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelYield>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelRecipeTag>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelStep>,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelCuisine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeImpl implements _HelloFreshModelRecipe {
  const _$HelloFreshModelRecipeImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.country,
      required this.headline,
      required this.description,
      required this.descriptionMarkdown,
      required this.difficulty,
      required this.prepTime,
      required this.totalTime,
      required this.imagePath,
      required final List<HelloFreshModelIngredient> ingredients,
      required final List<HelloFreshModelYield> yields,
      required final List<HelloFreshModelRecipeTag> tags,
      required final List<HelloFreshModelStep> steps,
      required final List<HelloFreshModelCuisine> cuisines})
      : _ingredients = ingredients,
        _yields = yields,
        _tags = tags,
        _steps = steps,
        _cuisines = cuisines;

  factory _$HelloFreshModelRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String country;
  @override
  final String headline;
  @override
  final String description;
  @override
  final Option<String> descriptionMarkdown;
  @override
  final int difficulty;
  @override
  final Option<String> prepTime;
  @override
  final Option<String> totalTime;
  @override
  final Option<String> imagePath;
  final List<HelloFreshModelIngredient> _ingredients;
  @override
  List<HelloFreshModelIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HelloFreshModelYield> _yields;
  @override
  List<HelloFreshModelYield> get yields {
    if (_yields is EqualUnmodifiableListView) return _yields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<HelloFreshModelRecipeTag> _tags;
  @override
  List<HelloFreshModelRecipeTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<HelloFreshModelStep> _steps;
  @override
  List<HelloFreshModelStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<HelloFreshModelCuisine> _cuisines;
  @override
  List<HelloFreshModelCuisine> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipe(id: $id, name: $name, slug: $slug, country: $country, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown, difficulty: $difficulty, prepTime: $prepTime, totalTime: $totalTime, imagePath: $imagePath, ingredients: $ingredients, yields: $yields, tags: $tags, steps: $steps, cuisines: $cuisines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionMarkdown, descriptionMarkdown) ||
                other.descriptionMarkdown == descriptionMarkdown) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._yields, _yields) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      country,
      headline,
      description,
      descriptionMarkdown,
      difficulty,
      prepTime,
      totalTime,
      imagePath,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_yields),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(_cuisines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeImplCopyWith<_$HelloFreshModelRecipeImpl>
      get copyWith => __$$HelloFreshModelRecipeImplCopyWithImpl<
          _$HelloFreshModelRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipe implements HelloFreshModelRecipe {
  const factory _HelloFreshModelRecipe(
          {required final String id,
          required final String name,
          required final String slug,
          required final String country,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown,
          required final int difficulty,
          required final Option<String> prepTime,
          required final Option<String> totalTime,
          required final Option<String> imagePath,
          required final List<HelloFreshModelIngredient> ingredients,
          required final List<HelloFreshModelYield> yields,
          required final List<HelloFreshModelRecipeTag> tags,
          required final List<HelloFreshModelStep> steps,
          required final List<HelloFreshModelCuisine> cuisines}) =
      _$HelloFreshModelRecipeImpl;

  factory _HelloFreshModelRecipe.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelRecipeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get country;
  @override
  String get headline;
  @override
  String get description;
  @override
  Option<String> get descriptionMarkdown;
  @override
  int get difficulty;
  @override
  Option<String> get prepTime;
  @override
  Option<String> get totalTime;
  @override
  Option<String> get imagePath;
  @override
  List<HelloFreshModelIngredient> get ingredients;
  @override
  List<HelloFreshModelYield> get yields;
  @override
  List<HelloFreshModelRecipeTag> get tags;
  @override
  List<HelloFreshModelStep> get steps;
  @override
  List<HelloFreshModelCuisine> get cuisines;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeImplCopyWith<_$HelloFreshModelRecipeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelIngredient _$HelloFreshModelIngredientFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelIngredient.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelIngredient {
  String get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get imagePath => throw _privateConstructorUsedError;
  HelloFreshModelIngredientFamily? get family =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelIngredientCopyWith<HelloFreshModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelIngredientCopyWith<$Res> {
  factory $HelloFreshModelIngredientCopyWith(HelloFreshModelIngredient value,
          $Res Function(HelloFreshModelIngredient) then) =
      _$HelloFreshModelIngredientCopyWithImpl<$Res, HelloFreshModelIngredient>;
  @useResult
  $Res call(
      {String id,
      String country,
      String slug,
      String name,
      String type,
      Option<String> imagePath,
      HelloFreshModelIngredientFamily? family});

  $HelloFreshModelIngredientFamilyCopyWith<$Res>? get family;
}

/// @nodoc
class _$HelloFreshModelIngredientCopyWithImpl<$Res,
        $Val extends HelloFreshModelIngredient>
    implements $HelloFreshModelIngredientCopyWith<$Res> {
  _$HelloFreshModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = null,
    Object? slug = null,
    Object? name = null,
    Object? type = null,
    Object? imagePath = null,
    Object? family = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as HelloFreshModelIngredientFamily?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HelloFreshModelIngredientFamilyCopyWith<$Res>? get family {
    if (_value.family == null) {
      return null;
    }

    return $HelloFreshModelIngredientFamilyCopyWith<$Res>(_value.family!,
        (value) {
      return _then(_value.copyWith(family: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HelloFreshModelIngredientImplCopyWith<$Res>
    implements $HelloFreshModelIngredientCopyWith<$Res> {
  factory _$$HelloFreshModelIngredientImplCopyWith(
          _$HelloFreshModelIngredientImpl value,
          $Res Function(_$HelloFreshModelIngredientImpl) then) =
      __$$HelloFreshModelIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String country,
      String slug,
      String name,
      String type,
      Option<String> imagePath,
      HelloFreshModelIngredientFamily? family});

  @override
  $HelloFreshModelIngredientFamilyCopyWith<$Res>? get family;
}

/// @nodoc
class __$$HelloFreshModelIngredientImplCopyWithImpl<$Res>
    extends _$HelloFreshModelIngredientCopyWithImpl<$Res,
        _$HelloFreshModelIngredientImpl>
    implements _$$HelloFreshModelIngredientImplCopyWith<$Res> {
  __$$HelloFreshModelIngredientImplCopyWithImpl(
      _$HelloFreshModelIngredientImpl _value,
      $Res Function(_$HelloFreshModelIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = null,
    Object? slug = null,
    Object? name = null,
    Object? type = null,
    Object? imagePath = null,
    Object? family = freezed,
  }) {
    return _then(_$HelloFreshModelIngredientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as HelloFreshModelIngredientFamily?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelIngredientImpl implements _HelloFreshModelIngredient {
  const _$HelloFreshModelIngredientImpl(
      {required this.id,
      required this.country,
      required this.slug,
      required this.name,
      required this.type,
      required this.imagePath,
      required this.family});

  factory _$HelloFreshModelIngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelIngredientImplFromJson(json);

  @override
  final String id;
  @override
  final String country;
  @override
  final String slug;
  @override
  final String name;
  @override
  final String type;
  @override
  final Option<String> imagePath;
  @override
  final HelloFreshModelIngredientFamily? family;

  @override
  String toString() {
    return 'HelloFreshModelIngredient(id: $id, country: $country, slug: $slug, name: $name, type: $type, imagePath: $imagePath, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, country, slug, name, type, imagePath, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelIngredientImplCopyWith<_$HelloFreshModelIngredientImpl>
      get copyWith => __$$HelloFreshModelIngredientImplCopyWithImpl<
          _$HelloFreshModelIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelIngredientImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelIngredient implements HelloFreshModelIngredient {
  const factory _HelloFreshModelIngredient(
          {required final String id,
          required final String country,
          required final String slug,
          required final String name,
          required final String type,
          required final Option<String> imagePath,
          required final HelloFreshModelIngredientFamily? family}) =
      _$HelloFreshModelIngredientImpl;

  factory _HelloFreshModelIngredient.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelIngredientImpl.fromJson;

  @override
  String get id;
  @override
  String get country;
  @override
  String get slug;
  @override
  String get name;
  @override
  String get type;
  @override
  Option<String> get imagePath;
  @override
  HelloFreshModelIngredientFamily? get family;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelIngredientImplCopyWith<_$HelloFreshModelIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelRecipeTag _$HelloFreshModelRecipeTagFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelRecipeTag.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelRecipeTag {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Option<Map<String, int>> get numberOfRecipesByCountry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelRecipeTagCopyWith<HelloFreshModelRecipeTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelRecipeTagCopyWith<$Res> {
  factory $HelloFreshModelRecipeTagCopyWith(HelloFreshModelRecipeTag value,
          $Res Function(HelloFreshModelRecipeTag) then) =
      _$HelloFreshModelRecipeTagCopyWithImpl<$Res, HelloFreshModelRecipeTag>;
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Option<Map<String, int>> numberOfRecipesByCountry});
}

/// @nodoc
class _$HelloFreshModelRecipeTagCopyWithImpl<$Res,
        $Val extends HelloFreshModelRecipeTag>
    implements $HelloFreshModelRecipeTagCopyWith<$Res> {
  _$HelloFreshModelRecipeTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipesByCountry: null == numberOfRecipesByCountry
          ? _value.numberOfRecipesByCountry
          : numberOfRecipesByCountry // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelRecipeTagImplCopyWith<$Res>
    implements $HelloFreshModelRecipeTagCopyWith<$Res> {
  factory _$$HelloFreshModelRecipeTagImplCopyWith(
          _$HelloFreshModelRecipeTagImpl value,
          $Res Function(_$HelloFreshModelRecipeTagImpl) then) =
      __$$HelloFreshModelRecipeTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Option<Map<String, int>> numberOfRecipesByCountry});
}

/// @nodoc
class __$$HelloFreshModelRecipeTagImplCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeTagCopyWithImpl<$Res,
        _$HelloFreshModelRecipeTagImpl>
    implements _$$HelloFreshModelRecipeTagImplCopyWith<$Res> {
  __$$HelloFreshModelRecipeTagImplCopyWithImpl(
      _$HelloFreshModelRecipeTagImpl _value,
      $Res Function(_$HelloFreshModelRecipeTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_$HelloFreshModelRecipeTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipesByCountry: null == numberOfRecipesByCountry
          ? _value.numberOfRecipesByCountry
          : numberOfRecipesByCountry // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, int>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelRecipeTagImpl implements _HelloFreshModelRecipeTag {
  const _$HelloFreshModelRecipeTagImpl(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required this.numberOfRecipesByCountry});

  factory _$HelloFreshModelRecipeTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelRecipeTagImplFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  @override
  final Option<Map<String, int>> numberOfRecipesByCountry;

  @override
  String toString() {
    return 'HelloFreshModelRecipeTag(id: $id, slug: $slug, type: $type, name: $name, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelRecipeTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(
                    other.numberOfRecipesByCountry, numberOfRecipesByCountry) ||
                other.numberOfRecipesByCountry == numberOfRecipesByCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, slug, type, name, numberOfRecipesByCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelRecipeTagImplCopyWith<_$HelloFreshModelRecipeTagImpl>
      get copyWith => __$$HelloFreshModelRecipeTagImplCopyWithImpl<
          _$HelloFreshModelRecipeTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelRecipeTagImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelRecipeTag implements HelloFreshModelRecipeTag {
  const factory _HelloFreshModelRecipeTag(
          {required final String id,
          required final String slug,
          required final String type,
          required final String name,
          required final Option<Map<String, int>> numberOfRecipesByCountry}) =
      _$HelloFreshModelRecipeTagImpl;

  factory _HelloFreshModelRecipeTag.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelRecipeTagImpl.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  Option<Map<String, int>> get numberOfRecipesByCountry;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelRecipeTagImplCopyWith<_$HelloFreshModelRecipeTagImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelCuisine _$HelloFreshModelCuisineFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelCuisine.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelCuisine {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Option<int> get usage => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelCuisineCopyWith<HelloFreshModelCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelCuisineCopyWith<$Res> {
  factory $HelloFreshModelCuisineCopyWith(HelloFreshModelCuisine value,
          $Res Function(HelloFreshModelCuisine) then) =
      _$HelloFreshModelCuisineCopyWithImpl<$Res, HelloFreshModelCuisine>;
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Option<int> usage,
      Option<String> iconPath});
}

/// @nodoc
class _$HelloFreshModelCuisineCopyWithImpl<$Res,
        $Val extends HelloFreshModelCuisine>
    implements $HelloFreshModelCuisineCopyWith<$Res> {
  _$HelloFreshModelCuisineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? usage = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelCuisineImplCopyWith<$Res>
    implements $HelloFreshModelCuisineCopyWith<$Res> {
  factory _$$HelloFreshModelCuisineImplCopyWith(
          _$HelloFreshModelCuisineImpl value,
          $Res Function(_$HelloFreshModelCuisineImpl) then) =
      __$$HelloFreshModelCuisineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Option<int> usage,
      Option<String> iconPath});
}

/// @nodoc
class __$$HelloFreshModelCuisineImplCopyWithImpl<$Res>
    extends _$HelloFreshModelCuisineCopyWithImpl<$Res,
        _$HelloFreshModelCuisineImpl>
    implements _$$HelloFreshModelCuisineImplCopyWith<$Res> {
  __$$HelloFreshModelCuisineImplCopyWithImpl(
      _$HelloFreshModelCuisineImpl _value,
      $Res Function(_$HelloFreshModelCuisineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? usage = null,
    Object? iconPath = null,
  }) {
    return _then(_$HelloFreshModelCuisineImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelCuisineImpl implements _HelloFreshModelCuisine {
  const _$HelloFreshModelCuisineImpl(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required this.usage,
      required this.iconPath});

  factory _$HelloFreshModelCuisineImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelCuisineImplFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  @override
  final Option<int> usage;
  @override
  final Option<String> iconPath;

  @override
  String toString() {
    return 'HelloFreshModelCuisine(id: $id, slug: $slug, type: $type, name: $name, usage: $usage, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelCuisineImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, slug, type, name, usage, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelCuisineImplCopyWith<_$HelloFreshModelCuisineImpl>
      get copyWith => __$$HelloFreshModelCuisineImplCopyWithImpl<
          _$HelloFreshModelCuisineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelCuisineImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelCuisine implements HelloFreshModelCuisine {
  const factory _HelloFreshModelCuisine(
      {required final String id,
      required final String slug,
      required final String type,
      required final String name,
      required final Option<int> usage,
      required final Option<String> iconPath}) = _$HelloFreshModelCuisineImpl;

  factory _HelloFreshModelCuisine.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelCuisineImpl.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  Option<int> get usage;
  @override
  Option<String> get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelCuisineImplCopyWith<_$HelloFreshModelCuisineImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelYield _$HelloFreshModelYieldFromJson(Map<String, dynamic> json) {
  return _HelloFreshModelYield.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelYield {
  Option<int> get yields => throw _privateConstructorUsedError;
  List<HelloFreshModelYieldIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelYieldCopyWith<HelloFreshModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelYieldCopyWith<$Res> {
  factory $HelloFreshModelYieldCopyWith(HelloFreshModelYield value,
          $Res Function(HelloFreshModelYield) then) =
      _$HelloFreshModelYieldCopyWithImpl<$Res, HelloFreshModelYield>;
  @useResult
  $Res call(
      {Option<int> yields, List<HelloFreshModelYieldIngredient> ingredients});
}

/// @nodoc
class _$HelloFreshModelYieldCopyWithImpl<$Res,
        $Val extends HelloFreshModelYield>
    implements $HelloFreshModelYieldCopyWith<$Res> {
  _$HelloFreshModelYieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yields = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelYieldIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelYieldImplCopyWith<$Res>
    implements $HelloFreshModelYieldCopyWith<$Res> {
  factory _$$HelloFreshModelYieldImplCopyWith(_$HelloFreshModelYieldImpl value,
          $Res Function(_$HelloFreshModelYieldImpl) then) =
      __$$HelloFreshModelYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<int> yields, List<HelloFreshModelYieldIngredient> ingredients});
}

/// @nodoc
class __$$HelloFreshModelYieldImplCopyWithImpl<$Res>
    extends _$HelloFreshModelYieldCopyWithImpl<$Res, _$HelloFreshModelYieldImpl>
    implements _$$HelloFreshModelYieldImplCopyWith<$Res> {
  __$$HelloFreshModelYieldImplCopyWithImpl(_$HelloFreshModelYieldImpl _value,
      $Res Function(_$HelloFreshModelYieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yields = null,
    Object? ingredients = null,
  }) {
    return _then(_$HelloFreshModelYieldImpl(
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelYieldIngredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelYieldImpl implements _HelloFreshModelYield {
  const _$HelloFreshModelYieldImpl(
      {required this.yields,
      required final List<HelloFreshModelYieldIngredient> ingredients})
      : _ingredients = ingredients;

  factory _$HelloFreshModelYieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelYieldImplFromJson(json);

  @override
  final Option<int> yields;
  final List<HelloFreshModelYieldIngredient> _ingredients;
  @override
  List<HelloFreshModelYieldIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'HelloFreshModelYield(yields: $yields, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelYieldImpl &&
            (identical(other.yields, yields) || other.yields == yields) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, yields, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelYieldImplCopyWith<_$HelloFreshModelYieldImpl>
      get copyWith =>
          __$$HelloFreshModelYieldImplCopyWithImpl<_$HelloFreshModelYieldImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelYieldImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelYield implements HelloFreshModelYield {
  const factory _HelloFreshModelYield(
          {required final Option<int> yields,
          required final List<HelloFreshModelYieldIngredient> ingredients}) =
      _$HelloFreshModelYieldImpl;

  factory _HelloFreshModelYield.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelYieldImpl.fromJson;

  @override
  Option<int> get yields;
  @override
  List<HelloFreshModelYieldIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelYieldImplCopyWith<_$HelloFreshModelYieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelStep _$HelloFreshModelStepFromJson(Map<String, dynamic> json) {
  return _HelloFreshModelStep.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelStep {
  int get index => throw _privateConstructorUsedError;
  String get instructionsMarkdown => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<HelloFreshModelStepImage> get images =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelStepCopyWith<HelloFreshModelStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelStepCopyWith<$Res> {
  factory $HelloFreshModelStepCopyWith(
          HelloFreshModelStep value, $Res Function(HelloFreshModelStep) then) =
      _$HelloFreshModelStepCopyWithImpl<$Res, HelloFreshModelStep>;
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<HelloFreshModelStepImage> images});
}

/// @nodoc
class _$HelloFreshModelStepCopyWithImpl<$Res, $Val extends HelloFreshModelStep>
    implements $HelloFreshModelStepCopyWith<$Res> {
  _$HelloFreshModelStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? instructionsMarkdown = null,
    Object? ingredients = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      instructionsMarkdown: null == instructionsMarkdown
          ? _value.instructionsMarkdown
          : instructionsMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelStepImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelStepImplCopyWith<$Res>
    implements $HelloFreshModelStepCopyWith<$Res> {
  factory _$$HelloFreshModelStepImplCopyWith(_$HelloFreshModelStepImpl value,
          $Res Function(_$HelloFreshModelStepImpl) then) =
      __$$HelloFreshModelStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<HelloFreshModelStepImage> images});
}

/// @nodoc
class __$$HelloFreshModelStepImplCopyWithImpl<$Res>
    extends _$HelloFreshModelStepCopyWithImpl<$Res, _$HelloFreshModelStepImpl>
    implements _$$HelloFreshModelStepImplCopyWith<$Res> {
  __$$HelloFreshModelStepImplCopyWithImpl(_$HelloFreshModelStepImpl _value,
      $Res Function(_$HelloFreshModelStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? instructionsMarkdown = null,
    Object? ingredients = null,
    Object? images = null,
  }) {
    return _then(_$HelloFreshModelStepImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      instructionsMarkdown: null == instructionsMarkdown
          ? _value.instructionsMarkdown
          : instructionsMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HelloFreshModelStepImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelStepImpl implements _HelloFreshModelStep {
  const _$HelloFreshModelStepImpl(
      {required this.index,
      required this.instructionsMarkdown,
      required final List<String> ingredients,
      required final List<HelloFreshModelStepImage> images})
      : _ingredients = ingredients,
        _images = images;

  factory _$HelloFreshModelStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelStepImplFromJson(json);

  @override
  final int index;
  @override
  final String instructionsMarkdown;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HelloFreshModelStepImage> _images;
  @override
  List<HelloFreshModelStepImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'HelloFreshModelStep(index: $index, instructionsMarkdown: $instructionsMarkdown, ingredients: $ingredients, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelStepImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.instructionsMarkdown, instructionsMarkdown) ||
                other.instructionsMarkdown == instructionsMarkdown) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      instructionsMarkdown,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelStepImplCopyWith<_$HelloFreshModelStepImpl> get copyWith =>
      __$$HelloFreshModelStepImplCopyWithImpl<_$HelloFreshModelStepImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelStepImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelStep implements HelloFreshModelStep {
  const factory _HelloFreshModelStep(
          {required final int index,
          required final String instructionsMarkdown,
          required final List<String> ingredients,
          required final List<HelloFreshModelStepImage> images}) =
      _$HelloFreshModelStepImpl;

  factory _HelloFreshModelStep.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelStepImpl.fromJson;

  @override
  int get index;
  @override
  String get instructionsMarkdown;
  @override
  List<String> get ingredients;
  @override
  List<HelloFreshModelStepImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelStepImplCopyWith<_$HelloFreshModelStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HelloFreshModelStepImage _$HelloFreshModelStepImageFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelStepImage.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelStepImage {
  String get path => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelStepImageCopyWith<HelloFreshModelStepImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelStepImageCopyWith<$Res> {
  factory $HelloFreshModelStepImageCopyWith(HelloFreshModelStepImage value,
          $Res Function(HelloFreshModelStepImage) then) =
      _$HelloFreshModelStepImageCopyWithImpl<$Res, HelloFreshModelStepImage>;
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class _$HelloFreshModelStepImageCopyWithImpl<$Res,
        $Val extends HelloFreshModelStepImage>
    implements $HelloFreshModelStepImageCopyWith<$Res> {
  _$HelloFreshModelStepImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? caption = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelStepImageImplCopyWith<$Res>
    implements $HelloFreshModelStepImageCopyWith<$Res> {
  factory _$$HelloFreshModelStepImageImplCopyWith(
          _$HelloFreshModelStepImageImpl value,
          $Res Function(_$HelloFreshModelStepImageImpl) then) =
      __$$HelloFreshModelStepImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class __$$HelloFreshModelStepImageImplCopyWithImpl<$Res>
    extends _$HelloFreshModelStepImageCopyWithImpl<$Res,
        _$HelloFreshModelStepImageImpl>
    implements _$$HelloFreshModelStepImageImplCopyWith<$Res> {
  __$$HelloFreshModelStepImageImplCopyWithImpl(
      _$HelloFreshModelStepImageImpl _value,
      $Res Function(_$HelloFreshModelStepImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? caption = null,
  }) {
    return _then(_$HelloFreshModelStepImageImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelStepImageImpl implements _HelloFreshModelStepImage {
  const _$HelloFreshModelStepImageImpl(
      {required this.path, required this.caption});

  factory _$HelloFreshModelStepImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelStepImageImplFromJson(json);

  @override
  final String path;
  @override
  final String caption;

  @override
  String toString() {
    return 'HelloFreshModelStepImage(path: $path, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelStepImageImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelStepImageImplCopyWith<_$HelloFreshModelStepImageImpl>
      get copyWith => __$$HelloFreshModelStepImageImplCopyWithImpl<
          _$HelloFreshModelStepImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelStepImageImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelStepImage implements HelloFreshModelStepImage {
  const factory _HelloFreshModelStepImage(
      {required final String path,
      required final String caption}) = _$HelloFreshModelStepImageImpl;

  factory _HelloFreshModelStepImage.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelStepImageImpl.fromJson;

  @override
  String get path;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelStepImageImplCopyWith<_$HelloFreshModelStepImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelYieldIngredient _$HelloFreshModelYieldIngredientFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelYieldIngredient.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelYieldIngredient {
  String get id => throw _privateConstructorUsedError;
  Option<num> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelYieldIngredientCopyWith<HelloFreshModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelYieldIngredientCopyWith<$Res> {
  factory $HelloFreshModelYieldIngredientCopyWith(
          HelloFreshModelYieldIngredient value,
          $Res Function(HelloFreshModelYieldIngredient) then) =
      _$HelloFreshModelYieldIngredientCopyWithImpl<$Res,
          HelloFreshModelYieldIngredient>;
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class _$HelloFreshModelYieldIngredientCopyWithImpl<$Res,
        $Val extends HelloFreshModelYieldIngredient>
    implements $HelloFreshModelYieldIngredientCopyWith<$Res> {
  _$HelloFreshModelYieldIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<num>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelYieldIngredientImplCopyWith<$Res>
    implements $HelloFreshModelYieldIngredientCopyWith<$Res> {
  factory _$$HelloFreshModelYieldIngredientImplCopyWith(
          _$HelloFreshModelYieldIngredientImpl value,
          $Res Function(_$HelloFreshModelYieldIngredientImpl) then) =
      __$$HelloFreshModelYieldIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class __$$HelloFreshModelYieldIngredientImplCopyWithImpl<$Res>
    extends _$HelloFreshModelYieldIngredientCopyWithImpl<$Res,
        _$HelloFreshModelYieldIngredientImpl>
    implements _$$HelloFreshModelYieldIngredientImplCopyWith<$Res> {
  __$$HelloFreshModelYieldIngredientImplCopyWithImpl(
      _$HelloFreshModelYieldIngredientImpl _value,
      $Res Function(_$HelloFreshModelYieldIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$HelloFreshModelYieldIngredientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<num>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelYieldIngredientImpl
    implements _HelloFreshModelYieldIngredient {
  const _$HelloFreshModelYieldIngredientImpl(
      {required this.id, required this.amount, required this.unit});

  factory _$HelloFreshModelYieldIngredientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelYieldIngredientImplFromJson(json);

  @override
  final String id;
  @override
  final Option<num> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'HelloFreshModelYieldIngredient(id: $id, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelYieldIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelYieldIngredientImplCopyWith<
          _$HelloFreshModelYieldIngredientImpl>
      get copyWith => __$$HelloFreshModelYieldIngredientImplCopyWithImpl<
          _$HelloFreshModelYieldIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelYieldIngredientImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelYieldIngredient
    implements HelloFreshModelYieldIngredient {
  const factory _HelloFreshModelYieldIngredient(
          {required final String id,
          required final Option<num> amount,
          required final Option<String> unit}) =
      _$HelloFreshModelYieldIngredientImpl;

  factory _HelloFreshModelYieldIngredient.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelYieldIngredientImpl.fromJson;

  @override
  String get id;
  @override
  Option<num> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelYieldIngredientImplCopyWith<
          _$HelloFreshModelYieldIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelloFreshModelTag _$HelloFreshModelTagFromJson(Map<String, dynamic> json) {
  return _HelloFreshModelTag.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelTag {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, int> get numberOfRecipesByCountry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelTagCopyWith<HelloFreshModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelTagCopyWith<$Res> {
  factory $HelloFreshModelTagCopyWith(
          HelloFreshModelTag value, $Res Function(HelloFreshModelTag) then) =
      _$HelloFreshModelTagCopyWithImpl<$Res, HelloFreshModelTag>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class _$HelloFreshModelTagCopyWithImpl<$Res, $Val extends HelloFreshModelTag>
    implements $HelloFreshModelTagCopyWith<$Res> {
  _$HelloFreshModelTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipesByCountry: null == numberOfRecipesByCountry
          ? _value.numberOfRecipesByCountry
          : numberOfRecipesByCountry // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelTagImplCopyWith<$Res>
    implements $HelloFreshModelTagCopyWith<$Res> {
  factory _$$HelloFreshModelTagImplCopyWith(_$HelloFreshModelTagImpl value,
          $Res Function(_$HelloFreshModelTagImpl) then) =
      __$$HelloFreshModelTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class __$$HelloFreshModelTagImplCopyWithImpl<$Res>
    extends _$HelloFreshModelTagCopyWithImpl<$Res, _$HelloFreshModelTagImpl>
    implements _$$HelloFreshModelTagImplCopyWith<$Res> {
  __$$HelloFreshModelTagImplCopyWithImpl(_$HelloFreshModelTagImpl _value,
      $Res Function(_$HelloFreshModelTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_$HelloFreshModelTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipesByCountry: null == numberOfRecipesByCountry
          ? _value._numberOfRecipesByCountry
          : numberOfRecipesByCountry // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelTagImpl implements _HelloFreshModelTag {
  const _$HelloFreshModelTagImpl(
      {required this.id,
      required this.name,
      required this.type,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$HelloFreshModelTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelloFreshModelTagImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  final Map<String, int> _numberOfRecipesByCountry;
  @override
  Map<String, int> get numberOfRecipesByCountry {
    if (_numberOfRecipesByCountry is EqualUnmodifiableMapView)
      return _numberOfRecipesByCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_numberOfRecipesByCountry);
  }

  @override
  String toString() {
    return 'HelloFreshModelTag(id: $id, name: $name, type: $type, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(
                other._numberOfRecipesByCountry, _numberOfRecipesByCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type,
      const DeepCollectionEquality().hash(_numberOfRecipesByCountry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelTagImplCopyWith<_$HelloFreshModelTagImpl> get copyWith =>
      __$$HelloFreshModelTagImplCopyWithImpl<_$HelloFreshModelTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelTagImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelTag implements HelloFreshModelTag {
  const factory _HelloFreshModelTag(
          {required final String id,
          required final String name,
          required final String type,
          required final Map<String, int> numberOfRecipesByCountry}) =
      _$HelloFreshModelTagImpl;

  factory _HelloFreshModelTag.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelTagImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  Map<String, int> get numberOfRecipesByCountry;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelTagImplCopyWith<_$HelloFreshModelTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HelloFreshModelIngredientFamily _$HelloFreshModelIngredientFamilyFromJson(
    Map<String, dynamic> json) {
  return _HelloFreshModelIngredientFamily.fromJson(json);
}

/// @nodoc
mixin _$HelloFreshModelIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloFreshModelIngredientFamilyCopyWith<HelloFreshModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloFreshModelIngredientFamilyCopyWith<$Res> {
  factory $HelloFreshModelIngredientFamilyCopyWith(
          HelloFreshModelIngredientFamily value,
          $Res Function(HelloFreshModelIngredientFamily) then) =
      _$HelloFreshModelIngredientFamilyCopyWithImpl<$Res,
          HelloFreshModelIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$HelloFreshModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends HelloFreshModelIngredientFamily>
    implements $HelloFreshModelIngredientFamilyCopyWith<$Res> {
  _$HelloFreshModelIngredientFamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelloFreshModelIngredientFamilyImplCopyWith<$Res>
    implements $HelloFreshModelIngredientFamilyCopyWith<$Res> {
  factory _$$HelloFreshModelIngredientFamilyImplCopyWith(
          _$HelloFreshModelIngredientFamilyImpl value,
          $Res Function(_$HelloFreshModelIngredientFamilyImpl) then) =
      __$$HelloFreshModelIngredientFamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class __$$HelloFreshModelIngredientFamilyImplCopyWithImpl<$Res>
    extends _$HelloFreshModelIngredientFamilyCopyWithImpl<$Res,
        _$HelloFreshModelIngredientFamilyImpl>
    implements _$$HelloFreshModelIngredientFamilyImplCopyWith<$Res> {
  __$$HelloFreshModelIngredientFamilyImplCopyWithImpl(
      _$HelloFreshModelIngredientFamilyImpl _value,
      $Res Function(_$HelloFreshModelIngredientFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$HelloFreshModelIngredientFamilyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelloFreshModelIngredientFamilyImpl
    implements _HelloFreshModelIngredientFamily {
  const _$HelloFreshModelIngredientFamilyImpl(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  factory _$HelloFreshModelIngredientFamilyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HelloFreshModelIngredientFamilyImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final Option<String> iconPath;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'HelloFreshModelIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelloFreshModelIngredientFamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconPath, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelloFreshModelIngredientFamilyImplCopyWith<
          _$HelloFreshModelIngredientFamilyImpl>
      get copyWith => __$$HelloFreshModelIngredientFamilyImplCopyWithImpl<
          _$HelloFreshModelIngredientFamilyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelloFreshModelIngredientFamilyImplToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelIngredientFamily
    implements HelloFreshModelIngredientFamily {
  const factory _HelloFreshModelIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$HelloFreshModelIngredientFamilyImpl;

  factory _HelloFreshModelIngredientFamily.fromJson(Map<String, dynamic> json) =
      _$HelloFreshModelIngredientFamilyImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Option<String> get iconPath;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$HelloFreshModelIngredientFamilyImplCopyWith<
          _$HelloFreshModelIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
