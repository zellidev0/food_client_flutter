// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
abstract class _$$_HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res>
    implements $HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeApiRecipeResponseCopyWith(
          _$_HelloFreshModelRecipeApiRecipeResponse value,
          $Res Function(_$_HelloFreshModelRecipeApiRecipeResponse) then) =
      __$$_HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        _$_HelloFreshModelRecipeApiRecipeResponse>
    implements _$$_HelloFreshModelRecipeApiRecipeResponseCopyWith<$Res> {
  __$$_HelloFreshModelRecipeApiRecipeResponseCopyWithImpl(
      _$_HelloFreshModelRecipeApiRecipeResponse _value,
      $Res Function(_$_HelloFreshModelRecipeApiRecipeResponse) _then)
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
    return _then(_$_HelloFreshModelRecipeApiRecipeResponse(
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
class _$_HelloFreshModelRecipeApiRecipeResponse
    implements _HelloFreshModelRecipeApiRecipeResponse {
  const _$_HelloFreshModelRecipeApiRecipeResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelRecipe> items})
      : _items = items;

  factory _$_HelloFreshModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeApiRecipeResponseFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiRecipeResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipeApiRecipeResponse &&
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
  _$$_HelloFreshModelRecipeApiRecipeResponseCopyWith<
          _$_HelloFreshModelRecipeApiRecipeResponse>
      get copyWith => __$$_HelloFreshModelRecipeApiRecipeResponseCopyWithImpl<
          _$_HelloFreshModelRecipeApiRecipeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeApiRecipeResponseToJson(
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
      _$_HelloFreshModelRecipeApiRecipeResponse;

  factory _HelloFreshModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =
      _$_HelloFreshModelRecipeApiRecipeResponse.fromJson;

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
  _$$_HelloFreshModelRecipeApiRecipeResponseCopyWith<
          _$_HelloFreshModelRecipeApiRecipeResponse>
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
abstract class _$$_HelloFreshModelRecipeApiTagResponseCopyWith<$Res>
    implements $HelloFreshModelRecipeApiTagResponseCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeApiTagResponseCopyWith(
          _$_HelloFreshModelRecipeApiTagResponse value,
          $Res Function(_$_HelloFreshModelRecipeApiTagResponse) then) =
      __$$_HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiTagResponseCopyWithImpl<$Res,
        _$_HelloFreshModelRecipeApiTagResponse>
    implements _$$_HelloFreshModelRecipeApiTagResponseCopyWith<$Res> {
  __$$_HelloFreshModelRecipeApiTagResponseCopyWithImpl(
      _$_HelloFreshModelRecipeApiTagResponse _value,
      $Res Function(_$_HelloFreshModelRecipeApiTagResponse) _then)
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
    return _then(_$_HelloFreshModelRecipeApiTagResponse(
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
class _$_HelloFreshModelRecipeApiTagResponse
    implements _HelloFreshModelRecipeApiTagResponse {
  const _$_HelloFreshModelRecipeApiTagResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelTag> items})
      : _items = items;

  factory _$_HelloFreshModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeApiTagResponseFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiTagResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipeApiTagResponse &&
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
  _$$_HelloFreshModelRecipeApiTagResponseCopyWith<
          _$_HelloFreshModelRecipeApiTagResponse>
      get copyWith => __$$_HelloFreshModelRecipeApiTagResponseCopyWithImpl<
          _$_HelloFreshModelRecipeApiTagResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeApiTagResponseToJson(
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
      _$_HelloFreshModelRecipeApiTagResponse;

  factory _HelloFreshModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =
      _$_HelloFreshModelRecipeApiTagResponse.fromJson;

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
  _$$_HelloFreshModelRecipeApiTagResponseCopyWith<
          _$_HelloFreshModelRecipeApiTagResponse>
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
abstract class _$$_HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res>
    implements $HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeApiCuisineResponseCopyWith(
          _$_HelloFreshModelRecipeApiCuisineResponse value,
          $Res Function(_$_HelloFreshModelRecipeApiCuisineResponse) then) =
      __$$_HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        _$_HelloFreshModelRecipeApiCuisineResponse>
    implements _$$_HelloFreshModelRecipeApiCuisineResponseCopyWith<$Res> {
  __$$_HelloFreshModelRecipeApiCuisineResponseCopyWithImpl(
      _$_HelloFreshModelRecipeApiCuisineResponse _value,
      $Res Function(_$_HelloFreshModelRecipeApiCuisineResponse) _then)
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
    return _then(_$_HelloFreshModelRecipeApiCuisineResponse(
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
class _$_HelloFreshModelRecipeApiCuisineResponse
    implements _HelloFreshModelRecipeApiCuisineResponse {
  const _$_HelloFreshModelRecipeApiCuisineResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelCuisine> items})
      : _items = items;

  factory _$_HelloFreshModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeApiCuisineResponseFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiCuisineResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipeApiCuisineResponse &&
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
  _$$_HelloFreshModelRecipeApiCuisineResponseCopyWith<
          _$_HelloFreshModelRecipeApiCuisineResponse>
      get copyWith => __$$_HelloFreshModelRecipeApiCuisineResponseCopyWithImpl<
          _$_HelloFreshModelRecipeApiCuisineResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeApiCuisineResponseToJson(
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
      _$_HelloFreshModelRecipeApiCuisineResponse;

  factory _HelloFreshModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =
      _$_HelloFreshModelRecipeApiCuisineResponse.fromJson;

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
  _$$_HelloFreshModelRecipeApiCuisineResponseCopyWith<
          _$_HelloFreshModelRecipeApiCuisineResponse>
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
abstract class _$$_HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res>
    implements $HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeApiIngredientsResponseCopyWith(
          _$_HelloFreshModelRecipeApiIngredientsResponse value,
          $Res Function(_$_HelloFreshModelRecipeApiIngredientsResponse) then) =
      __$$_HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        _$_HelloFreshModelRecipeApiIngredientsResponse>
    implements _$$_HelloFreshModelRecipeApiIngredientsResponseCopyWith<$Res> {
  __$$_HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl(
      _$_HelloFreshModelRecipeApiIngredientsResponse _value,
      $Res Function(_$_HelloFreshModelRecipeApiIngredientsResponse) _then)
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
    return _then(_$_HelloFreshModelRecipeApiIngredientsResponse(
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
class _$_HelloFreshModelRecipeApiIngredientsResponse
    implements _HelloFreshModelRecipeApiIngredientsResponse {
  const _$_HelloFreshModelRecipeApiIngredientsResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelIngredient> items})
      : _items = items;

  factory _$_HelloFreshModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeApiIngredientsResponseFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeApiIngredientsResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipeApiIngredientsResponse &&
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
  _$$_HelloFreshModelRecipeApiIngredientsResponseCopyWith<
          _$_HelloFreshModelRecipeApiIngredientsResponse>
      get copyWith =>
          __$$_HelloFreshModelRecipeApiIngredientsResponseCopyWithImpl<
              _$_HelloFreshModelRecipeApiIngredientsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeApiIngredientsResponseToJson(
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
      _$_HelloFreshModelRecipeApiIngredientsResponse;

  factory _HelloFreshModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_HelloFreshModelRecipeApiIngredientsResponse.fromJson;

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
  _$$_HelloFreshModelRecipeApiIngredientsResponseCopyWith<
          _$_HelloFreshModelRecipeApiIngredientsResponse>
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
abstract class _$$_HelloFreshModelTagsApiResponseCopyWith<$Res>
    implements $HelloFreshModelTagsApiResponseCopyWith<$Res> {
  factory _$$_HelloFreshModelTagsApiResponseCopyWith(
          _$_HelloFreshModelTagsApiResponse value,
          $Res Function(_$_HelloFreshModelTagsApiResponse) then) =
      __$$_HelloFreshModelTagsApiResponseCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelTagsApiResponseCopyWithImpl<$Res>
    extends _$HelloFreshModelTagsApiResponseCopyWithImpl<$Res,
        _$_HelloFreshModelTagsApiResponse>
    implements _$$_HelloFreshModelTagsApiResponseCopyWith<$Res> {
  __$$_HelloFreshModelTagsApiResponseCopyWithImpl(
      _$_HelloFreshModelTagsApiResponse _value,
      $Res Function(_$_HelloFreshModelTagsApiResponse) _then)
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
    return _then(_$_HelloFreshModelTagsApiResponse(
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
class _$_HelloFreshModelTagsApiResponse
    implements _HelloFreshModelTagsApiResponse {
  const _$_HelloFreshModelTagsApiResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<HelloFreshModelTag> items})
      : _items = items;

  factory _$_HelloFreshModelTagsApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelTagsApiResponseFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HelloFreshModelTagsApiResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelTagsApiResponse &&
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
  _$$_HelloFreshModelTagsApiResponseCopyWith<_$_HelloFreshModelTagsApiResponse>
      get copyWith => __$$_HelloFreshModelTagsApiResponseCopyWithImpl<
          _$_HelloFreshModelTagsApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelTagsApiResponseToJson(
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
      _$_HelloFreshModelTagsApiResponse;

  factory _HelloFreshModelTagsApiResponse.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelTagsApiResponse.fromJson;

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
  _$$_HelloFreshModelTagsApiResponseCopyWith<_$_HelloFreshModelTagsApiResponse>
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
abstract class _$$_HelloFreshModelRecipeCopyWith<$Res>
    implements $HelloFreshModelRecipeCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeCopyWith(_$_HelloFreshModelRecipe value,
          $Res Function(_$_HelloFreshModelRecipe) then) =
      __$$_HelloFreshModelRecipeCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelRecipeCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeCopyWithImpl<$Res, _$_HelloFreshModelRecipe>
    implements _$$_HelloFreshModelRecipeCopyWith<$Res> {
  __$$_HelloFreshModelRecipeCopyWithImpl(_$_HelloFreshModelRecipe _value,
      $Res Function(_$_HelloFreshModelRecipe) _then)
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
    return _then(_$_HelloFreshModelRecipe(
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
class _$_HelloFreshModelRecipe implements _HelloFreshModelRecipe {
  const _$_HelloFreshModelRecipe(
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

  factory _$_HelloFreshModelRecipe.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HelloFreshModelYield> _yields;
  @override
  List<HelloFreshModelYield> get yields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<HelloFreshModelRecipeTag> _tags;
  @override
  List<HelloFreshModelRecipeTag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<HelloFreshModelStep> _steps;
  @override
  List<HelloFreshModelStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<HelloFreshModelCuisine> _cuisines;
  @override
  List<HelloFreshModelCuisine> get cuisines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipe(id: $id, name: $name, slug: $slug, country: $country, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown, difficulty: $difficulty, prepTime: $prepTime, totalTime: $totalTime, imagePath: $imagePath, ingredients: $ingredients, yields: $yields, tags: $tags, steps: $steps, cuisines: $cuisines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipe &&
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
  _$$_HelloFreshModelRecipeCopyWith<_$_HelloFreshModelRecipe> get copyWith =>
      __$$_HelloFreshModelRecipeCopyWithImpl<_$_HelloFreshModelRecipe>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeToJson(
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
      _$_HelloFreshModelRecipe;

  factory _HelloFreshModelRecipe.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelRecipe.fromJson;

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
  _$$_HelloFreshModelRecipeCopyWith<_$_HelloFreshModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_HelloFreshModelIngredientCopyWith<$Res>
    implements $HelloFreshModelIngredientCopyWith<$Res> {
  factory _$$_HelloFreshModelIngredientCopyWith(
          _$_HelloFreshModelIngredient value,
          $Res Function(_$_HelloFreshModelIngredient) then) =
      __$$_HelloFreshModelIngredientCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelIngredientCopyWithImpl<$Res>
    extends _$HelloFreshModelIngredientCopyWithImpl<$Res,
        _$_HelloFreshModelIngredient>
    implements _$$_HelloFreshModelIngredientCopyWith<$Res> {
  __$$_HelloFreshModelIngredientCopyWithImpl(
      _$_HelloFreshModelIngredient _value,
      $Res Function(_$_HelloFreshModelIngredient) _then)
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
    return _then(_$_HelloFreshModelIngredient(
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
class _$_HelloFreshModelIngredient implements _HelloFreshModelIngredient {
  const _$_HelloFreshModelIngredient(
      {required this.id,
      required this.country,
      required this.slug,
      required this.name,
      required this.type,
      required this.imagePath,
      required this.family});

  factory _$_HelloFreshModelIngredient.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelIngredientFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelIngredient &&
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
  _$$_HelloFreshModelIngredientCopyWith<_$_HelloFreshModelIngredient>
      get copyWith => __$$_HelloFreshModelIngredientCopyWithImpl<
          _$_HelloFreshModelIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelIngredientToJson(
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
      _$_HelloFreshModelIngredient;

  factory _HelloFreshModelIngredient.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelIngredient.fromJson;

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
  _$$_HelloFreshModelIngredientCopyWith<_$_HelloFreshModelIngredient>
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
  Map<String, int> get numberOfRecipesByCountry =>
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
      Map<String, int> numberOfRecipesByCountry});
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
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelloFreshModelRecipeTagCopyWith<$Res>
    implements $HelloFreshModelRecipeTagCopyWith<$Res> {
  factory _$$_HelloFreshModelRecipeTagCopyWith(
          _$_HelloFreshModelRecipeTag value,
          $Res Function(_$_HelloFreshModelRecipeTag) then) =
      __$$_HelloFreshModelRecipeTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class __$$_HelloFreshModelRecipeTagCopyWithImpl<$Res>
    extends _$HelloFreshModelRecipeTagCopyWithImpl<$Res,
        _$_HelloFreshModelRecipeTag>
    implements _$$_HelloFreshModelRecipeTagCopyWith<$Res> {
  __$$_HelloFreshModelRecipeTagCopyWithImpl(_$_HelloFreshModelRecipeTag _value,
      $Res Function(_$_HelloFreshModelRecipeTag) _then)
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
    return _then(_$_HelloFreshModelRecipeTag(
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
          ? _value._numberOfRecipesByCountry
          : numberOfRecipesByCountry // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelloFreshModelRecipeTag implements _HelloFreshModelRecipeTag {
  const _$_HelloFreshModelRecipeTag(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$_HelloFreshModelRecipeTag.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelRecipeTagFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  final Map<String, int> _numberOfRecipesByCountry;
  @override
  Map<String, int> get numberOfRecipesByCountry {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_numberOfRecipesByCountry);
  }

  @override
  String toString() {
    return 'HelloFreshModelRecipeTag(id: $id, slug: $slug, type: $type, name: $name, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelRecipeTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
                other._numberOfRecipesByCountry, _numberOfRecipesByCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, type, name,
      const DeepCollectionEquality().hash(_numberOfRecipesByCountry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelloFreshModelRecipeTagCopyWith<_$_HelloFreshModelRecipeTag>
      get copyWith => __$$_HelloFreshModelRecipeTagCopyWithImpl<
          _$_HelloFreshModelRecipeTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelRecipeTagToJson(
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
          required final Map<String, int> numberOfRecipesByCountry}) =
      _$_HelloFreshModelRecipeTag;

  factory _HelloFreshModelRecipeTag.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelRecipeTag.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  Map<String, int> get numberOfRecipesByCountry;
  @override
  @JsonKey(ignore: true)
  _$$_HelloFreshModelRecipeTagCopyWith<_$_HelloFreshModelRecipeTag>
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
  int get usage => throw _privateConstructorUsedError;
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
      int usage,
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
              as int,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelloFreshModelCuisineCopyWith<$Res>
    implements $HelloFreshModelCuisineCopyWith<$Res> {
  factory _$$_HelloFreshModelCuisineCopyWith(_$_HelloFreshModelCuisine value,
          $Res Function(_$_HelloFreshModelCuisine) then) =
      __$$_HelloFreshModelCuisineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      int usage,
      Option<String> iconPath});
}

/// @nodoc
class __$$_HelloFreshModelCuisineCopyWithImpl<$Res>
    extends _$HelloFreshModelCuisineCopyWithImpl<$Res,
        _$_HelloFreshModelCuisine>
    implements _$$_HelloFreshModelCuisineCopyWith<$Res> {
  __$$_HelloFreshModelCuisineCopyWithImpl(_$_HelloFreshModelCuisine _value,
      $Res Function(_$_HelloFreshModelCuisine) _then)
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
    return _then(_$_HelloFreshModelCuisine(
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
              as int,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelloFreshModelCuisine implements _HelloFreshModelCuisine {
  const _$_HelloFreshModelCuisine(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required this.usage,
      required this.iconPath});

  factory _$_HelloFreshModelCuisine.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelCuisineFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  @override
  final int usage;
  @override
  final Option<String> iconPath;

  @override
  String toString() {
    return 'HelloFreshModelCuisine(id: $id, slug: $slug, type: $type, name: $name, usage: $usage, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelCuisine &&
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
  _$$_HelloFreshModelCuisineCopyWith<_$_HelloFreshModelCuisine> get copyWith =>
      __$$_HelloFreshModelCuisineCopyWithImpl<_$_HelloFreshModelCuisine>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelCuisineToJson(
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
      required final int usage,
      required final Option<String> iconPath}) = _$_HelloFreshModelCuisine;

  factory _HelloFreshModelCuisine.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelCuisine.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  int get usage;
  @override
  Option<String> get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_HelloFreshModelCuisineCopyWith<_$_HelloFreshModelCuisine> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_HelloFreshModelYieldCopyWith<$Res>
    implements $HelloFreshModelYieldCopyWith<$Res> {
  factory _$$_HelloFreshModelYieldCopyWith(_$_HelloFreshModelYield value,
          $Res Function(_$_HelloFreshModelYield) then) =
      __$$_HelloFreshModelYieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<int> yields, List<HelloFreshModelYieldIngredient> ingredients});
}

/// @nodoc
class __$$_HelloFreshModelYieldCopyWithImpl<$Res>
    extends _$HelloFreshModelYieldCopyWithImpl<$Res, _$_HelloFreshModelYield>
    implements _$$_HelloFreshModelYieldCopyWith<$Res> {
  __$$_HelloFreshModelYieldCopyWithImpl(_$_HelloFreshModelYield _value,
      $Res Function(_$_HelloFreshModelYield) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yields = null,
    Object? ingredients = null,
  }) {
    return _then(_$_HelloFreshModelYield(
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
class _$_HelloFreshModelYield implements _HelloFreshModelYield {
  const _$_HelloFreshModelYield(
      {required this.yields,
      required final List<HelloFreshModelYieldIngredient> ingredients})
      : _ingredients = ingredients;

  factory _$_HelloFreshModelYield.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelYieldFromJson(json);

  @override
  final Option<int> yields;
  final List<HelloFreshModelYieldIngredient> _ingredients;
  @override
  List<HelloFreshModelYieldIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'HelloFreshModelYield(yields: $yields, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelYield &&
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
  _$$_HelloFreshModelYieldCopyWith<_$_HelloFreshModelYield> get copyWith =>
      __$$_HelloFreshModelYieldCopyWithImpl<_$_HelloFreshModelYield>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelYieldToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelYield implements HelloFreshModelYield {
  const factory _HelloFreshModelYield(
          {required final Option<int> yields,
          required final List<HelloFreshModelYieldIngredient> ingredients}) =
      _$_HelloFreshModelYield;

  factory _HelloFreshModelYield.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelYield.fromJson;

  @override
  Option<int> get yields;
  @override
  List<HelloFreshModelYieldIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_HelloFreshModelYieldCopyWith<_$_HelloFreshModelYield> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_HelloFreshModelStepCopyWith<$Res>
    implements $HelloFreshModelStepCopyWith<$Res> {
  factory _$$_HelloFreshModelStepCopyWith(_$_HelloFreshModelStep value,
          $Res Function(_$_HelloFreshModelStep) then) =
      __$$_HelloFreshModelStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<HelloFreshModelStepImage> images});
}

/// @nodoc
class __$$_HelloFreshModelStepCopyWithImpl<$Res>
    extends _$HelloFreshModelStepCopyWithImpl<$Res, _$_HelloFreshModelStep>
    implements _$$_HelloFreshModelStepCopyWith<$Res> {
  __$$_HelloFreshModelStepCopyWithImpl(_$_HelloFreshModelStep _value,
      $Res Function(_$_HelloFreshModelStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? instructionsMarkdown = null,
    Object? ingredients = null,
    Object? images = null,
  }) {
    return _then(_$_HelloFreshModelStep(
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
class _$_HelloFreshModelStep implements _HelloFreshModelStep {
  const _$_HelloFreshModelStep(
      {required this.index,
      required this.instructionsMarkdown,
      required final List<String> ingredients,
      required final List<HelloFreshModelStepImage> images})
      : _ingredients = ingredients,
        _images = images;

  factory _$_HelloFreshModelStep.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelStepFromJson(json);

  @override
  final int index;
  @override
  final String instructionsMarkdown;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HelloFreshModelStepImage> _images;
  @override
  List<HelloFreshModelStepImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'HelloFreshModelStep(index: $index, instructionsMarkdown: $instructionsMarkdown, ingredients: $ingredients, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelStep &&
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
  _$$_HelloFreshModelStepCopyWith<_$_HelloFreshModelStep> get copyWith =>
      __$$_HelloFreshModelStepCopyWithImpl<_$_HelloFreshModelStep>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelStepToJson(
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
      _$_HelloFreshModelStep;

  factory _HelloFreshModelStep.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelStep.fromJson;

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
  _$$_HelloFreshModelStepCopyWith<_$_HelloFreshModelStep> get copyWith =>
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
abstract class _$$_HelloFreshModelStepImageCopyWith<$Res>
    implements $HelloFreshModelStepImageCopyWith<$Res> {
  factory _$$_HelloFreshModelStepImageCopyWith(
          _$_HelloFreshModelStepImage value,
          $Res Function(_$_HelloFreshModelStepImage) then) =
      __$$_HelloFreshModelStepImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class __$$_HelloFreshModelStepImageCopyWithImpl<$Res>
    extends _$HelloFreshModelStepImageCopyWithImpl<$Res,
        _$_HelloFreshModelStepImage>
    implements _$$_HelloFreshModelStepImageCopyWith<$Res> {
  __$$_HelloFreshModelStepImageCopyWithImpl(_$_HelloFreshModelStepImage _value,
      $Res Function(_$_HelloFreshModelStepImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? caption = null,
  }) {
    return _then(_$_HelloFreshModelStepImage(
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
class _$_HelloFreshModelStepImage implements _HelloFreshModelStepImage {
  const _$_HelloFreshModelStepImage(
      {required this.path, required this.caption});

  factory _$_HelloFreshModelStepImage.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelStepImageFromJson(json);

  @override
  final String path;
  @override
  final String caption;

  @override
  String toString() {
    return 'HelloFreshModelStepImage(path: $path, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelStepImage &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelloFreshModelStepImageCopyWith<_$_HelloFreshModelStepImage>
      get copyWith => __$$_HelloFreshModelStepImageCopyWithImpl<
          _$_HelloFreshModelStepImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelStepImageToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelStepImage implements HelloFreshModelStepImage {
  const factory _HelloFreshModelStepImage(
      {required final String path,
      required final String caption}) = _$_HelloFreshModelStepImage;

  factory _HelloFreshModelStepImage.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelStepImage.fromJson;

  @override
  String get path;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$_HelloFreshModelStepImageCopyWith<_$_HelloFreshModelStepImage>
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
abstract class _$$_HelloFreshModelYieldIngredientCopyWith<$Res>
    implements $HelloFreshModelYieldIngredientCopyWith<$Res> {
  factory _$$_HelloFreshModelYieldIngredientCopyWith(
          _$_HelloFreshModelYieldIngredient value,
          $Res Function(_$_HelloFreshModelYieldIngredient) then) =
      __$$_HelloFreshModelYieldIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class __$$_HelloFreshModelYieldIngredientCopyWithImpl<$Res>
    extends _$HelloFreshModelYieldIngredientCopyWithImpl<$Res,
        _$_HelloFreshModelYieldIngredient>
    implements _$$_HelloFreshModelYieldIngredientCopyWith<$Res> {
  __$$_HelloFreshModelYieldIngredientCopyWithImpl(
      _$_HelloFreshModelYieldIngredient _value,
      $Res Function(_$_HelloFreshModelYieldIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_HelloFreshModelYieldIngredient(
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
class _$_HelloFreshModelYieldIngredient
    implements _HelloFreshModelYieldIngredient {
  const _$_HelloFreshModelYieldIngredient(
      {required this.id, required this.amount, required this.unit});

  factory _$_HelloFreshModelYieldIngredient.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelYieldIngredientFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelYieldIngredient &&
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
  _$$_HelloFreshModelYieldIngredientCopyWith<_$_HelloFreshModelYieldIngredient>
      get copyWith => __$$_HelloFreshModelYieldIngredientCopyWithImpl<
          _$_HelloFreshModelYieldIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelYieldIngredientToJson(
      this,
    );
  }
}

abstract class _HelloFreshModelYieldIngredient
    implements HelloFreshModelYieldIngredient {
  const factory _HelloFreshModelYieldIngredient(
      {required final String id,
      required final Option<num> amount,
      required final Option<String> unit}) = _$_HelloFreshModelYieldIngredient;

  factory _HelloFreshModelYieldIngredient.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelYieldIngredient.fromJson;

  @override
  String get id;
  @override
  Option<num> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$_HelloFreshModelYieldIngredientCopyWith<_$_HelloFreshModelYieldIngredient>
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
abstract class _$$_HelloFreshModelTagCopyWith<$Res>
    implements $HelloFreshModelTagCopyWith<$Res> {
  factory _$$_HelloFreshModelTagCopyWith(_$_HelloFreshModelTag value,
          $Res Function(_$_HelloFreshModelTag) then) =
      __$$_HelloFreshModelTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class __$$_HelloFreshModelTagCopyWithImpl<$Res>
    extends _$HelloFreshModelTagCopyWithImpl<$Res, _$_HelloFreshModelTag>
    implements _$$_HelloFreshModelTagCopyWith<$Res> {
  __$$_HelloFreshModelTagCopyWithImpl(
      _$_HelloFreshModelTag _value, $Res Function(_$_HelloFreshModelTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_$_HelloFreshModelTag(
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
class _$_HelloFreshModelTag implements _HelloFreshModelTag {
  const _$_HelloFreshModelTag(
      {required this.id,
      required this.name,
      required this.type,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$_HelloFreshModelTag.fromJson(Map<String, dynamic> json) =>
      _$$_HelloFreshModelTagFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  final Map<String, int> _numberOfRecipesByCountry;
  @override
  Map<String, int> get numberOfRecipesByCountry {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_numberOfRecipesByCountry);
  }

  @override
  String toString() {
    return 'HelloFreshModelTag(id: $id, name: $name, type: $type, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelTag &&
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
  _$$_HelloFreshModelTagCopyWith<_$_HelloFreshModelTag> get copyWith =>
      __$$_HelloFreshModelTagCopyWithImpl<_$_HelloFreshModelTag>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelTagToJson(
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
      _$_HelloFreshModelTag;

  factory _HelloFreshModelTag.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelTag.fromJson;

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
  _$$_HelloFreshModelTagCopyWith<_$_HelloFreshModelTag> get copyWith =>
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
abstract class _$$_HelloFreshModelIngredientFamilyCopyWith<$Res>
    implements $HelloFreshModelIngredientFamilyCopyWith<$Res> {
  factory _$$_HelloFreshModelIngredientFamilyCopyWith(
          _$_HelloFreshModelIngredientFamily value,
          $Res Function(_$_HelloFreshModelIngredientFamily) then) =
      __$$_HelloFreshModelIngredientFamilyCopyWithImpl<$Res>;
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
class __$$_HelloFreshModelIngredientFamilyCopyWithImpl<$Res>
    extends _$HelloFreshModelIngredientFamilyCopyWithImpl<$Res,
        _$_HelloFreshModelIngredientFamily>
    implements _$$_HelloFreshModelIngredientFamilyCopyWith<$Res> {
  __$$_HelloFreshModelIngredientFamilyCopyWithImpl(
      _$_HelloFreshModelIngredientFamily _value,
      $Res Function(_$_HelloFreshModelIngredientFamily) _then)
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
    return _then(_$_HelloFreshModelIngredientFamily(
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
class _$_HelloFreshModelIngredientFamily
    implements _HelloFreshModelIngredientFamily {
  const _$_HelloFreshModelIngredientFamily(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  factory _$_HelloFreshModelIngredientFamily.fromJson(
          Map<String, dynamic> json) =>
      _$$_HelloFreshModelIngredientFamilyFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloFreshModelIngredientFamily &&
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
  _$$_HelloFreshModelIngredientFamilyCopyWith<
          _$_HelloFreshModelIngredientFamily>
      get copyWith => __$$_HelloFreshModelIngredientFamilyCopyWithImpl<
          _$_HelloFreshModelIngredientFamily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloFreshModelIngredientFamilyToJson(
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
      required final String slug}) = _$_HelloFreshModelIngredientFamily;

  factory _HelloFreshModelIngredientFamily.fromJson(Map<String, dynamic> json) =
      _$_HelloFreshModelIngredientFamily.fromJson;

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
  _$$_HelloFreshModelIngredientFamilyCopyWith<
          _$_HelloFreshModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}
