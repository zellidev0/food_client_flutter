// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'web_client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebClientModelRecipeApiRecipeResponse
    _$WebClientModelRecipeApiRecipeResponseFromJson(Map<String, dynamic> json) {
  return _WebClientModelRecipeApiRecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipeApiRecipeResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelRecipe> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeApiRecipeResponseCopyWith<
          WebClientModelRecipeApiRecipeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory $WebClientModelRecipeApiRecipeResponseCopyWith(
          WebClientModelRecipeApiRecipeResponse value,
          $Res Function(WebClientModelRecipeApiRecipeResponse) then) =
      _$WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res,
          WebClientModelRecipeApiRecipeResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelRecipe> items});
}

/// @nodoc
class _$WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        $Val extends WebClientModelRecipeApiRecipeResponse>
    implements $WebClientModelRecipeApiRecipeResponseCopyWith<$Res> {
  _$WebClientModelRecipeApiRecipeResponseCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelRecipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelRecipeApiRecipeResponseCopyWith<$Res>
    implements $WebClientModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory _$$_WebClientModelRecipeApiRecipeResponseCopyWith(
          _$_WebClientModelRecipeApiRecipeResponse value,
          $Res Function(_$_WebClientModelRecipeApiRecipeResponse) then) =
      __$$_WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelRecipe> items});
}

/// @nodoc
class __$$_WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        _$_WebClientModelRecipeApiRecipeResponse>
    implements _$$_WebClientModelRecipeApiRecipeResponseCopyWith<$Res> {
  __$$_WebClientModelRecipeApiRecipeResponseCopyWithImpl(
      _$_WebClientModelRecipeApiRecipeResponse _value,
      $Res Function(_$_WebClientModelRecipeApiRecipeResponse) _then)
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
    return _then(_$_WebClientModelRecipeApiRecipeResponse(
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
              as List<WebClientModelRecipe>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelRecipeApiRecipeResponse
    implements _WebClientModelRecipeApiRecipeResponse {
  const _$_WebClientModelRecipeApiRecipeResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelRecipe> items})
      : _items = items;

  factory _$_WebClientModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeApiRecipeResponseFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<WebClientModelRecipe> _items;
  @override
  List<WebClientModelRecipe> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiRecipeResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipeApiRecipeResponse &&
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
  _$$_WebClientModelRecipeApiRecipeResponseCopyWith<
          _$_WebClientModelRecipeApiRecipeResponse>
      get copyWith => __$$_WebClientModelRecipeApiRecipeResponseCopyWithImpl<
          _$_WebClientModelRecipeApiRecipeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeApiRecipeResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipeApiRecipeResponse
    implements WebClientModelRecipeApiRecipeResponse {
  const factory _WebClientModelRecipeApiRecipeResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelRecipe> items}) =
      _$_WebClientModelRecipeApiRecipeResponse;

  factory _WebClientModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =
      _$_WebClientModelRecipeApiRecipeResponse.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<WebClientModelRecipe> get items;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelRecipeApiRecipeResponseCopyWith<
          _$_WebClientModelRecipeApiRecipeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelRecipeApiTagResponse _$WebClientModelRecipeApiTagResponseFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelRecipeApiTagResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipeApiTagResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelTag> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeApiTagResponseCopyWith<
          WebClientModelRecipeApiTagResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeApiTagResponseCopyWith<$Res> {
  factory $WebClientModelRecipeApiTagResponseCopyWith(
          WebClientModelRecipeApiTagResponse value,
          $Res Function(WebClientModelRecipeApiTagResponse) then) =
      _$WebClientModelRecipeApiTagResponseCopyWithImpl<$Res,
          WebClientModelRecipeApiTagResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelTag> items});
}

/// @nodoc
class _$WebClientModelRecipeApiTagResponseCopyWithImpl<$Res,
        $Val extends WebClientModelRecipeApiTagResponse>
    implements $WebClientModelRecipeApiTagResponseCopyWith<$Res> {
  _$WebClientModelRecipeApiTagResponseCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelRecipeApiTagResponseCopyWith<$Res>
    implements $WebClientModelRecipeApiTagResponseCopyWith<$Res> {
  factory _$$_WebClientModelRecipeApiTagResponseCopyWith(
          _$_WebClientModelRecipeApiTagResponse value,
          $Res Function(_$_WebClientModelRecipeApiTagResponse) then) =
      __$$_WebClientModelRecipeApiTagResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelTag> items});
}

/// @nodoc
class __$$_WebClientModelRecipeApiTagResponseCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiTagResponseCopyWithImpl<$Res,
        _$_WebClientModelRecipeApiTagResponse>
    implements _$$_WebClientModelRecipeApiTagResponseCopyWith<$Res> {
  __$$_WebClientModelRecipeApiTagResponseCopyWithImpl(
      _$_WebClientModelRecipeApiTagResponse _value,
      $Res Function(_$_WebClientModelRecipeApiTagResponse) _then)
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
    return _then(_$_WebClientModelRecipeApiTagResponse(
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
              as List<WebClientModelTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelRecipeApiTagResponse
    implements _WebClientModelRecipeApiTagResponse {
  const _$_WebClientModelRecipeApiTagResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelTag> items})
      : _items = items;

  factory _$_WebClientModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeApiTagResponseFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<WebClientModelTag> _items;
  @override
  List<WebClientModelTag> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiTagResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipeApiTagResponse &&
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
  _$$_WebClientModelRecipeApiTagResponseCopyWith<
          _$_WebClientModelRecipeApiTagResponse>
      get copyWith => __$$_WebClientModelRecipeApiTagResponseCopyWithImpl<
          _$_WebClientModelRecipeApiTagResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeApiTagResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipeApiTagResponse
    implements WebClientModelRecipeApiTagResponse {
  const factory _WebClientModelRecipeApiTagResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelTag> items}) =
      _$_WebClientModelRecipeApiTagResponse;

  factory _WebClientModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =
      _$_WebClientModelRecipeApiTagResponse.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<WebClientModelTag> get items;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelRecipeApiTagResponseCopyWith<
          _$_WebClientModelRecipeApiTagResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelRecipeApiCuisineResponse
    _$WebClientModelRecipeApiCuisineResponseFromJson(
        Map<String, dynamic> json) {
  return _WebClientModelRecipeApiCuisineResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipeApiCuisineResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelCuisine> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeApiCuisineResponseCopyWith<
          WebClientModelRecipeApiCuisineResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory $WebClientModelRecipeApiCuisineResponseCopyWith(
          WebClientModelRecipeApiCuisineResponse value,
          $Res Function(WebClientModelRecipeApiCuisineResponse) then) =
      _$WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res,
          WebClientModelRecipeApiCuisineResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelCuisine> items});
}

/// @nodoc
class _$WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        $Val extends WebClientModelRecipeApiCuisineResponse>
    implements $WebClientModelRecipeApiCuisineResponseCopyWith<$Res> {
  _$WebClientModelRecipeApiCuisineResponseCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelCuisine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelRecipeApiCuisineResponseCopyWith<$Res>
    implements $WebClientModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory _$$_WebClientModelRecipeApiCuisineResponseCopyWith(
          _$_WebClientModelRecipeApiCuisineResponse value,
          $Res Function(_$_WebClientModelRecipeApiCuisineResponse) then) =
      __$$_WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelCuisine> items});
}

/// @nodoc
class __$$_WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        _$_WebClientModelRecipeApiCuisineResponse>
    implements _$$_WebClientModelRecipeApiCuisineResponseCopyWith<$Res> {
  __$$_WebClientModelRecipeApiCuisineResponseCopyWithImpl(
      _$_WebClientModelRecipeApiCuisineResponse _value,
      $Res Function(_$_WebClientModelRecipeApiCuisineResponse) _then)
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
    return _then(_$_WebClientModelRecipeApiCuisineResponse(
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
              as List<WebClientModelCuisine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelRecipeApiCuisineResponse
    implements _WebClientModelRecipeApiCuisineResponse {
  const _$_WebClientModelRecipeApiCuisineResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelCuisine> items})
      : _items = items;

  factory _$_WebClientModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeApiCuisineResponseFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<WebClientModelCuisine> _items;
  @override
  List<WebClientModelCuisine> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiCuisineResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipeApiCuisineResponse &&
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
  _$$_WebClientModelRecipeApiCuisineResponseCopyWith<
          _$_WebClientModelRecipeApiCuisineResponse>
      get copyWith => __$$_WebClientModelRecipeApiCuisineResponseCopyWithImpl<
          _$_WebClientModelRecipeApiCuisineResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeApiCuisineResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipeApiCuisineResponse
    implements WebClientModelRecipeApiCuisineResponse {
  const factory _WebClientModelRecipeApiCuisineResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelCuisine> items}) =
      _$_WebClientModelRecipeApiCuisineResponse;

  factory _WebClientModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =
      _$_WebClientModelRecipeApiCuisineResponse.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<WebClientModelCuisine> get items;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelRecipeApiCuisineResponseCopyWith<
          _$_WebClientModelRecipeApiCuisineResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelRecipeApiIngredientsResponse
    _$WebClientModelRecipeApiIngredientsResponseFromJson(
        Map<String, dynamic> json) {
  return _WebClientModelRecipeApiIngredientsResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipeApiIngredientsResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelIngredient> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeApiIngredientsResponseCopyWith<
          WebClientModelRecipeApiIngredientsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory $WebClientModelRecipeApiIngredientsResponseCopyWith(
          WebClientModelRecipeApiIngredientsResponse value,
          $Res Function(WebClientModelRecipeApiIngredientsResponse) then) =
      _$WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
          WebClientModelRecipeApiIngredientsResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelIngredient> items});
}

/// @nodoc
class _$WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        $Val extends WebClientModelRecipeApiIngredientsResponse>
    implements $WebClientModelRecipeApiIngredientsResponseCopyWith<$Res> {
  _$WebClientModelRecipeApiIngredientsResponseCopyWithImpl(
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
              as List<WebClientModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelRecipeApiIngredientsResponseCopyWith<$Res>
    implements $WebClientModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory _$$_WebClientModelRecipeApiIngredientsResponseCopyWith(
          _$_WebClientModelRecipeApiIngredientsResponse value,
          $Res Function(_$_WebClientModelRecipeApiIngredientsResponse) then) =
      __$$_WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelIngredient> items});
}

/// @nodoc
class __$$_WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        _$_WebClientModelRecipeApiIngredientsResponse>
    implements _$$_WebClientModelRecipeApiIngredientsResponseCopyWith<$Res> {
  __$$_WebClientModelRecipeApiIngredientsResponseCopyWithImpl(
      _$_WebClientModelRecipeApiIngredientsResponse _value,
      $Res Function(_$_WebClientModelRecipeApiIngredientsResponse) _then)
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
    return _then(_$_WebClientModelRecipeApiIngredientsResponse(
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
              as List<WebClientModelIngredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelRecipeApiIngredientsResponse
    implements _WebClientModelRecipeApiIngredientsResponse {
  const _$_WebClientModelRecipeApiIngredientsResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelIngredient> items})
      : _items = items;

  factory _$_WebClientModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeApiIngredientsResponseFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<WebClientModelIngredient> _items;
  @override
  List<WebClientModelIngredient> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiIngredientsResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipeApiIngredientsResponse &&
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
  _$$_WebClientModelRecipeApiIngredientsResponseCopyWith<
          _$_WebClientModelRecipeApiIngredientsResponse>
      get copyWith =>
          __$$_WebClientModelRecipeApiIngredientsResponseCopyWithImpl<
              _$_WebClientModelRecipeApiIngredientsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeApiIngredientsResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipeApiIngredientsResponse
    implements WebClientModelRecipeApiIngredientsResponse {
  const factory _WebClientModelRecipeApiIngredientsResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelIngredient> items}) =
      _$_WebClientModelRecipeApiIngredientsResponse;

  factory _WebClientModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_WebClientModelRecipeApiIngredientsResponse.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<WebClientModelIngredient> get items;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelRecipeApiIngredientsResponseCopyWith<
          _$_WebClientModelRecipeApiIngredientsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelTagsApiResponse _$WebClientModelTagsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelTagsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelTagsApiResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelTag> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelTagsApiResponseCopyWith<WebClientModelTagsApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelTagsApiResponseCopyWith<$Res> {
  factory $WebClientModelTagsApiResponseCopyWith(
          WebClientModelTagsApiResponse value,
          $Res Function(WebClientModelTagsApiResponse) then) =
      _$WebClientModelTagsApiResponseCopyWithImpl<$Res,
          WebClientModelTagsApiResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelTag> items});
}

/// @nodoc
class _$WebClientModelTagsApiResponseCopyWithImpl<$Res,
        $Val extends WebClientModelTagsApiResponse>
    implements $WebClientModelTagsApiResponseCopyWith<$Res> {
  _$WebClientModelTagsApiResponseCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelTag>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelTagsApiResponseCopyWith<$Res>
    implements $WebClientModelTagsApiResponseCopyWith<$Res> {
  factory _$$_WebClientModelTagsApiResponseCopyWith(
          _$_WebClientModelTagsApiResponse value,
          $Res Function(_$_WebClientModelTagsApiResponse) then) =
      __$$_WebClientModelTagsApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelTag> items});
}

/// @nodoc
class __$$_WebClientModelTagsApiResponseCopyWithImpl<$Res>
    extends _$WebClientModelTagsApiResponseCopyWithImpl<$Res,
        _$_WebClientModelTagsApiResponse>
    implements _$$_WebClientModelTagsApiResponseCopyWith<$Res> {
  __$$_WebClientModelTagsApiResponseCopyWithImpl(
      _$_WebClientModelTagsApiResponse _value,
      $Res Function(_$_WebClientModelTagsApiResponse) _then)
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
    return _then(_$_WebClientModelTagsApiResponse(
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
              as List<WebClientModelTag>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelTagsApiResponse
    implements _WebClientModelTagsApiResponse {
  const _$_WebClientModelTagsApiResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelTag> items})
      : _items = items;

  factory _$_WebClientModelTagsApiResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelTagsApiResponseFromJson(json);

  @override
  final int total;
  @override
  final int take;
  @override
  final int count;
  @override
  final int skip;
  final List<WebClientModelTag> _items;
  @override
  List<WebClientModelTag> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelTagsApiResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelTagsApiResponse &&
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
  _$$_WebClientModelTagsApiResponseCopyWith<_$_WebClientModelTagsApiResponse>
      get copyWith => __$$_WebClientModelTagsApiResponseCopyWithImpl<
          _$_WebClientModelTagsApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelTagsApiResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelTagsApiResponse
    implements WebClientModelTagsApiResponse {
  const factory _WebClientModelTagsApiResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelTag> items}) =
      _$_WebClientModelTagsApiResponse;

  factory _WebClientModelTagsApiResponse.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelTagsApiResponse.fromJson;

  @override
  int get total;
  @override
  int get take;
  @override
  int get count;
  @override
  int get skip;
  @override
  List<WebClientModelTag> get items;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelTagsApiResponseCopyWith<_$_WebClientModelTagsApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelRecipe _$WebClientModelRecipeFromJson(Map<String, dynamic> json) {
  return _WebClientModelRecipe.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipe {
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
  List<WebClientModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  List<WebClientModelYield> get yields => throw _privateConstructorUsedError;
  List<WebClientModelRecipeTag> get tags => throw _privateConstructorUsedError;
  List<WebClientModelStep> get steps => throw _privateConstructorUsedError;
  List<WebClientModelCuisine> get cuisines =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeCopyWith<WebClientModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeCopyWith<$Res> {
  factory $WebClientModelRecipeCopyWith(WebClientModelRecipe value,
          $Res Function(WebClientModelRecipe) then) =
      _$WebClientModelRecipeCopyWithImpl<$Res, WebClientModelRecipe>;
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
      List<WebClientModelIngredient> ingredients,
      List<WebClientModelYield> yields,
      List<WebClientModelRecipeTag> tags,
      List<WebClientModelStep> steps,
      List<WebClientModelCuisine> cuisines});
}

/// @nodoc
class _$WebClientModelRecipeCopyWithImpl<$Res,
        $Val extends WebClientModelRecipe>
    implements $WebClientModelRecipeCopyWith<$Res> {
  _$WebClientModelRecipeCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelIngredient>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelYield>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelRecipeTag>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelStep>,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelCuisine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelRecipeCopyWith<$Res>
    implements $WebClientModelRecipeCopyWith<$Res> {
  factory _$$_WebClientModelRecipeCopyWith(_$_WebClientModelRecipe value,
          $Res Function(_$_WebClientModelRecipe) then) =
      __$$_WebClientModelRecipeCopyWithImpl<$Res>;
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
      List<WebClientModelIngredient> ingredients,
      List<WebClientModelYield> yields,
      List<WebClientModelRecipeTag> tags,
      List<WebClientModelStep> steps,
      List<WebClientModelCuisine> cuisines});
}

/// @nodoc
class __$$_WebClientModelRecipeCopyWithImpl<$Res>
    extends _$WebClientModelRecipeCopyWithImpl<$Res, _$_WebClientModelRecipe>
    implements _$$_WebClientModelRecipeCopyWith<$Res> {
  __$$_WebClientModelRecipeCopyWithImpl(_$_WebClientModelRecipe _value,
      $Res Function(_$_WebClientModelRecipe) _then)
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
    return _then(_$_WebClientModelRecipe(
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
              as List<WebClientModelIngredient>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelYield>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelRecipeTag>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelStep>,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelCuisine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelRecipe implements _WebClientModelRecipe {
  const _$_WebClientModelRecipe(
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
      required final List<WebClientModelIngredient> ingredients,
      required final List<WebClientModelYield> yields,
      required final List<WebClientModelRecipeTag> tags,
      required final List<WebClientModelStep> steps,
      required final List<WebClientModelCuisine> cuisines})
      : _ingredients = ingredients,
        _yields = yields,
        _tags = tags,
        _steps = steps,
        _cuisines = cuisines;

  factory _$_WebClientModelRecipe.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeFromJson(json);

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
  final List<WebClientModelIngredient> _ingredients;
  @override
  List<WebClientModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<WebClientModelYield> _yields;
  @override
  List<WebClientModelYield> get yields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<WebClientModelRecipeTag> _tags;
  @override
  List<WebClientModelRecipeTag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<WebClientModelStep> _steps;
  @override
  List<WebClientModelStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<WebClientModelCuisine> _cuisines;
  @override
  List<WebClientModelCuisine> get cuisines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  String toString() {
    return 'WebClientModelRecipe(id: $id, name: $name, slug: $slug, country: $country, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown, difficulty: $difficulty, prepTime: $prepTime, totalTime: $totalTime, imagePath: $imagePath, ingredients: $ingredients, yields: $yields, tags: $tags, steps: $steps, cuisines: $cuisines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipe &&
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
  _$$_WebClientModelRecipeCopyWith<_$_WebClientModelRecipe> get copyWith =>
      __$$_WebClientModelRecipeCopyWithImpl<_$_WebClientModelRecipe>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipe implements WebClientModelRecipe {
  const factory _WebClientModelRecipe(
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
          required final List<WebClientModelIngredient> ingredients,
          required final List<WebClientModelYield> yields,
          required final List<WebClientModelRecipeTag> tags,
          required final List<WebClientModelStep> steps,
          required final List<WebClientModelCuisine> cuisines}) =
      _$_WebClientModelRecipe;

  factory _WebClientModelRecipe.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelRecipe.fromJson;

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
  List<WebClientModelIngredient> get ingredients;
  @override
  List<WebClientModelYield> get yields;
  @override
  List<WebClientModelRecipeTag> get tags;
  @override
  List<WebClientModelStep> get steps;
  @override
  List<WebClientModelCuisine> get cuisines;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelRecipeCopyWith<_$_WebClientModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

WebClientModelIngredient _$WebClientModelIngredientFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelIngredient.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelIngredient {
  String get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get imagePath => throw _privateConstructorUsedError;
  Option<WebClientModelIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelIngredientCopyWith<WebClientModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelIngredientCopyWith<$Res> {
  factory $WebClientModelIngredientCopyWith(WebClientModelIngredient value,
          $Res Function(WebClientModelIngredient) then) =
      _$WebClientModelIngredientCopyWithImpl<$Res, WebClientModelIngredient>;
  @useResult
  $Res call(
      {String id,
      String country,
      String slug,
      String name,
      String type,
      Option<String> imagePath,
      Option<WebClientModelIngredientFamily> family});
}

/// @nodoc
class _$WebClientModelIngredientCopyWithImpl<$Res,
        $Val extends WebClientModelIngredient>
    implements $WebClientModelIngredientCopyWith<$Res> {
  _$WebClientModelIngredientCopyWithImpl(this._value, this._then);

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
    Object? family = null,
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
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<WebClientModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelIngredientCopyWith<$Res>
    implements $WebClientModelIngredientCopyWith<$Res> {
  factory _$$_WebClientModelIngredientCopyWith(
          _$_WebClientModelIngredient value,
          $Res Function(_$_WebClientModelIngredient) then) =
      __$$_WebClientModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String country,
      String slug,
      String name,
      String type,
      Option<String> imagePath,
      Option<WebClientModelIngredientFamily> family});
}

/// @nodoc
class __$$_WebClientModelIngredientCopyWithImpl<$Res>
    extends _$WebClientModelIngredientCopyWithImpl<$Res,
        _$_WebClientModelIngredient>
    implements _$$_WebClientModelIngredientCopyWith<$Res> {
  __$$_WebClientModelIngredientCopyWithImpl(_$_WebClientModelIngredient _value,
      $Res Function(_$_WebClientModelIngredient) _then)
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
    Object? family = null,
  }) {
    return _then(_$_WebClientModelIngredient(
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
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<WebClientModelIngredientFamily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelIngredient implements _WebClientModelIngredient {
  const _$_WebClientModelIngredient(
      {required this.id,
      required this.country,
      required this.slug,
      required this.name,
      required this.type,
      required this.imagePath,
      required this.family});

  factory _$_WebClientModelIngredient.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelIngredientFromJson(json);

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
  final Option<WebClientModelIngredientFamily> family;

  @override
  String toString() {
    return 'WebClientModelIngredient(id: $id, country: $country, slug: $slug, name: $name, type: $type, imagePath: $imagePath, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelIngredient &&
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
  _$$_WebClientModelIngredientCopyWith<_$_WebClientModelIngredient>
      get copyWith => __$$_WebClientModelIngredientCopyWithImpl<
          _$_WebClientModelIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelIngredientToJson(
      this,
    );
  }
}

abstract class _WebClientModelIngredient implements WebClientModelIngredient {
  const factory _WebClientModelIngredient(
          {required final String id,
          required final String country,
          required final String slug,
          required final String name,
          required final String type,
          required final Option<String> imagePath,
          required final Option<WebClientModelIngredientFamily> family}) =
      _$_WebClientModelIngredient;

  factory _WebClientModelIngredient.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelIngredient.fromJson;

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
  Option<WebClientModelIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelIngredientCopyWith<_$_WebClientModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelRecipeTag _$WebClientModelRecipeTagFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelRecipeTag.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelRecipeTag {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, int> get numberOfRecipesByCountry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelRecipeTagCopyWith<WebClientModelRecipeTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelRecipeTagCopyWith<$Res> {
  factory $WebClientModelRecipeTagCopyWith(WebClientModelRecipeTag value,
          $Res Function(WebClientModelRecipeTag) then) =
      _$WebClientModelRecipeTagCopyWithImpl<$Res, WebClientModelRecipeTag>;
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class _$WebClientModelRecipeTagCopyWithImpl<$Res,
        $Val extends WebClientModelRecipeTag>
    implements $WebClientModelRecipeTagCopyWith<$Res> {
  _$WebClientModelRecipeTagCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelRecipeTagCopyWith<$Res>
    implements $WebClientModelRecipeTagCopyWith<$Res> {
  factory _$$_WebClientModelRecipeTagCopyWith(_$_WebClientModelRecipeTag value,
          $Res Function(_$_WebClientModelRecipeTag) then) =
      __$$_WebClientModelRecipeTagCopyWithImpl<$Res>;
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
class __$$_WebClientModelRecipeTagCopyWithImpl<$Res>
    extends _$WebClientModelRecipeTagCopyWithImpl<$Res,
        _$_WebClientModelRecipeTag>
    implements _$$_WebClientModelRecipeTagCopyWith<$Res> {
  __$$_WebClientModelRecipeTagCopyWithImpl(_$_WebClientModelRecipeTag _value,
      $Res Function(_$_WebClientModelRecipeTag) _then)
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
    return _then(_$_WebClientModelRecipeTag(
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
class _$_WebClientModelRecipeTag implements _WebClientModelRecipeTag {
  const _$_WebClientModelRecipeTag(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$_WebClientModelRecipeTag.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelRecipeTagFromJson(json);

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
    return 'WebClientModelRecipeTag(id: $id, slug: $slug, type: $type, name: $name, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelRecipeTag &&
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
  _$$_WebClientModelRecipeTagCopyWith<_$_WebClientModelRecipeTag>
      get copyWith =>
          __$$_WebClientModelRecipeTagCopyWithImpl<_$_WebClientModelRecipeTag>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelRecipeTagToJson(
      this,
    );
  }
}

abstract class _WebClientModelRecipeTag implements WebClientModelRecipeTag {
  const factory _WebClientModelRecipeTag(
          {required final String id,
          required final String slug,
          required final String type,
          required final String name,
          required final Map<String, int> numberOfRecipesByCountry}) =
      _$_WebClientModelRecipeTag;

  factory _WebClientModelRecipeTag.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelRecipeTag.fromJson;

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
  _$$_WebClientModelRecipeTagCopyWith<_$_WebClientModelRecipeTag>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelCuisine _$WebClientModelCuisineFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelCuisine.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelCuisine {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  int get usage => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelCuisineCopyWith<WebClientModelCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelCuisineCopyWith<$Res> {
  factory $WebClientModelCuisineCopyWith(WebClientModelCuisine value,
          $Res Function(WebClientModelCuisine) then) =
      _$WebClientModelCuisineCopyWithImpl<$Res, WebClientModelCuisine>;
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      String countryCode,
      int usage,
      Option<String> iconPath});
}

/// @nodoc
class _$WebClientModelCuisineCopyWithImpl<$Res,
        $Val extends WebClientModelCuisine>
    implements $WebClientModelCuisineCopyWith<$Res> {
  _$WebClientModelCuisineCopyWithImpl(this._value, this._then);

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
    Object? countryCode = null,
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
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_WebClientModelCuisineCopyWith<$Res>
    implements $WebClientModelCuisineCopyWith<$Res> {
  factory _$$_WebClientModelCuisineCopyWith(_$_WebClientModelCuisine value,
          $Res Function(_$_WebClientModelCuisine) then) =
      __$$_WebClientModelCuisineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      String type,
      String name,
      String countryCode,
      int usage,
      Option<String> iconPath});
}

/// @nodoc
class __$$_WebClientModelCuisineCopyWithImpl<$Res>
    extends _$WebClientModelCuisineCopyWithImpl<$Res, _$_WebClientModelCuisine>
    implements _$$_WebClientModelCuisineCopyWith<$Res> {
  __$$_WebClientModelCuisineCopyWithImpl(_$_WebClientModelCuisine _value,
      $Res Function(_$_WebClientModelCuisine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? countryCode = null,
    Object? usage = null,
    Object? iconPath = null,
  }) {
    return _then(_$_WebClientModelCuisine(
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
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
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
class _$_WebClientModelCuisine implements _WebClientModelCuisine {
  const _$_WebClientModelCuisine(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required this.countryCode,
      required this.usage,
      required this.iconPath});

  factory _$_WebClientModelCuisine.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelCuisineFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  @override
  final String countryCode;
  @override
  final int usage;
  @override
  final Option<String> iconPath;

  @override
  String toString() {
    return 'WebClientModelCuisine(id: $id, slug: $slug, type: $type, name: $name, countryCode: $countryCode, usage: $usage, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelCuisine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, type, name, countryCode, usage, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebClientModelCuisineCopyWith<_$_WebClientModelCuisine> get copyWith =>
      __$$_WebClientModelCuisineCopyWithImpl<_$_WebClientModelCuisine>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelCuisineToJson(
      this,
    );
  }
}

abstract class _WebClientModelCuisine implements WebClientModelCuisine {
  const factory _WebClientModelCuisine(
      {required final String id,
      required final String slug,
      required final String type,
      required final String name,
      required final String countryCode,
      required final int usage,
      required final Option<String> iconPath}) = _$_WebClientModelCuisine;

  factory _WebClientModelCuisine.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelCuisine.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  String get countryCode;
  @override
  int get usage;
  @override
  Option<String> get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelCuisineCopyWith<_$_WebClientModelCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

WebClientModelYield _$WebClientModelYieldFromJson(Map<String, dynamic> json) {
  return _WebClientModelYield.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelYield {
  Option<int> get yields => throw _privateConstructorUsedError;
  List<WebClientModelYieldIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelYieldCopyWith<WebClientModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelYieldCopyWith<$Res> {
  factory $WebClientModelYieldCopyWith(
          WebClientModelYield value, $Res Function(WebClientModelYield) then) =
      _$WebClientModelYieldCopyWithImpl<$Res, WebClientModelYield>;
  @useResult
  $Res call(
      {Option<int> yields, List<WebClientModelYieldIngredient> ingredients});
}

/// @nodoc
class _$WebClientModelYieldCopyWithImpl<$Res, $Val extends WebClientModelYield>
    implements $WebClientModelYieldCopyWith<$Res> {
  _$WebClientModelYieldCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelYieldIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelYieldCopyWith<$Res>
    implements $WebClientModelYieldCopyWith<$Res> {
  factory _$$_WebClientModelYieldCopyWith(_$_WebClientModelYield value,
          $Res Function(_$_WebClientModelYield) then) =
      __$$_WebClientModelYieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<int> yields, List<WebClientModelYieldIngredient> ingredients});
}

/// @nodoc
class __$$_WebClientModelYieldCopyWithImpl<$Res>
    extends _$WebClientModelYieldCopyWithImpl<$Res, _$_WebClientModelYield>
    implements _$$_WebClientModelYieldCopyWith<$Res> {
  __$$_WebClientModelYieldCopyWithImpl(_$_WebClientModelYield _value,
      $Res Function(_$_WebClientModelYield) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yields = null,
    Object? ingredients = null,
  }) {
    return _then(_$_WebClientModelYield(
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<WebClientModelYieldIngredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelYield implements _WebClientModelYield {
  const _$_WebClientModelYield(
      {required this.yields,
      required final List<WebClientModelYieldIngredient> ingredients})
      : _ingredients = ingredients;

  factory _$_WebClientModelYield.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelYieldFromJson(json);

  @override
  final Option<int> yields;
  final List<WebClientModelYieldIngredient> _ingredients;
  @override
  List<WebClientModelYieldIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'WebClientModelYield(yields: $yields, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelYield &&
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
  _$$_WebClientModelYieldCopyWith<_$_WebClientModelYield> get copyWith =>
      __$$_WebClientModelYieldCopyWithImpl<_$_WebClientModelYield>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelYieldToJson(
      this,
    );
  }
}

abstract class _WebClientModelYield implements WebClientModelYield {
  const factory _WebClientModelYield(
          {required final Option<int> yields,
          required final List<WebClientModelYieldIngredient> ingredients}) =
      _$_WebClientModelYield;

  factory _WebClientModelYield.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelYield.fromJson;

  @override
  Option<int> get yields;
  @override
  List<WebClientModelYieldIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelYieldCopyWith<_$_WebClientModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

WebClientModelStep _$WebClientModelStepFromJson(Map<String, dynamic> json) {
  return _WebClientModelStep.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelStep {
  int get index => throw _privateConstructorUsedError;
  String get instructionsMarkdown => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<WebClientModelStepImage> get images =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelStepCopyWith<WebClientModelStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelStepCopyWith<$Res> {
  factory $WebClientModelStepCopyWith(
          WebClientModelStep value, $Res Function(WebClientModelStep) then) =
      _$WebClientModelStepCopyWithImpl<$Res, WebClientModelStep>;
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<WebClientModelStepImage> images});
}

/// @nodoc
class _$WebClientModelStepCopyWithImpl<$Res, $Val extends WebClientModelStep>
    implements $WebClientModelStepCopyWith<$Res> {
  _$WebClientModelStepCopyWithImpl(this._value, this._then);

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
              as List<WebClientModelStepImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebClientModelStepCopyWith<$Res>
    implements $WebClientModelStepCopyWith<$Res> {
  factory _$$_WebClientModelStepCopyWith(_$_WebClientModelStep value,
          $Res Function(_$_WebClientModelStep) then) =
      __$$_WebClientModelStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<WebClientModelStepImage> images});
}

/// @nodoc
class __$$_WebClientModelStepCopyWithImpl<$Res>
    extends _$WebClientModelStepCopyWithImpl<$Res, _$_WebClientModelStep>
    implements _$$_WebClientModelStepCopyWith<$Res> {
  __$$_WebClientModelStepCopyWithImpl(
      _$_WebClientModelStep _value, $Res Function(_$_WebClientModelStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? instructionsMarkdown = null,
    Object? ingredients = null,
    Object? images = null,
  }) {
    return _then(_$_WebClientModelStep(
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
              as List<WebClientModelStepImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelStep implements _WebClientModelStep {
  const _$_WebClientModelStep(
      {required this.index,
      required this.instructionsMarkdown,
      required final List<String> ingredients,
      required final List<WebClientModelStepImage> images})
      : _ingredients = ingredients,
        _images = images;

  factory _$_WebClientModelStep.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelStepFromJson(json);

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

  final List<WebClientModelStepImage> _images;
  @override
  List<WebClientModelStepImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'WebClientModelStep(index: $index, instructionsMarkdown: $instructionsMarkdown, ingredients: $ingredients, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelStep &&
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
  _$$_WebClientModelStepCopyWith<_$_WebClientModelStep> get copyWith =>
      __$$_WebClientModelStepCopyWithImpl<_$_WebClientModelStep>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelStepToJson(
      this,
    );
  }
}

abstract class _WebClientModelStep implements WebClientModelStep {
  const factory _WebClientModelStep(
          {required final int index,
          required final String instructionsMarkdown,
          required final List<String> ingredients,
          required final List<WebClientModelStepImage> images}) =
      _$_WebClientModelStep;

  factory _WebClientModelStep.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelStep.fromJson;

  @override
  int get index;
  @override
  String get instructionsMarkdown;
  @override
  List<String> get ingredients;
  @override
  List<WebClientModelStepImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelStepCopyWith<_$_WebClientModelStep> get copyWith =>
      throw _privateConstructorUsedError;
}

WebClientModelStepImage _$WebClientModelStepImageFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelStepImage.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelStepImage {
  String get path => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelStepImageCopyWith<WebClientModelStepImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelStepImageCopyWith<$Res> {
  factory $WebClientModelStepImageCopyWith(WebClientModelStepImage value,
          $Res Function(WebClientModelStepImage) then) =
      _$WebClientModelStepImageCopyWithImpl<$Res, WebClientModelStepImage>;
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class _$WebClientModelStepImageCopyWithImpl<$Res,
        $Val extends WebClientModelStepImage>
    implements $WebClientModelStepImageCopyWith<$Res> {
  _$WebClientModelStepImageCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelStepImageCopyWith<$Res>
    implements $WebClientModelStepImageCopyWith<$Res> {
  factory _$$_WebClientModelStepImageCopyWith(_$_WebClientModelStepImage value,
          $Res Function(_$_WebClientModelStepImage) then) =
      __$$_WebClientModelStepImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class __$$_WebClientModelStepImageCopyWithImpl<$Res>
    extends _$WebClientModelStepImageCopyWithImpl<$Res,
        _$_WebClientModelStepImage>
    implements _$$_WebClientModelStepImageCopyWith<$Res> {
  __$$_WebClientModelStepImageCopyWithImpl(_$_WebClientModelStepImage _value,
      $Res Function(_$_WebClientModelStepImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? caption = null,
  }) {
    return _then(_$_WebClientModelStepImage(
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
class _$_WebClientModelStepImage implements _WebClientModelStepImage {
  const _$_WebClientModelStepImage({required this.path, required this.caption});

  factory _$_WebClientModelStepImage.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelStepImageFromJson(json);

  @override
  final String path;
  @override
  final String caption;

  @override
  String toString() {
    return 'WebClientModelStepImage(path: $path, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelStepImage &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebClientModelStepImageCopyWith<_$_WebClientModelStepImage>
      get copyWith =>
          __$$_WebClientModelStepImageCopyWithImpl<_$_WebClientModelStepImage>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelStepImageToJson(
      this,
    );
  }
}

abstract class _WebClientModelStepImage implements WebClientModelStepImage {
  const factory _WebClientModelStepImage(
      {required final String path,
      required final String caption}) = _$_WebClientModelStepImage;

  factory _WebClientModelStepImage.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelStepImage.fromJson;

  @override
  String get path;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelStepImageCopyWith<_$_WebClientModelStepImage>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelYieldIngredient _$WebClientModelYieldIngredientFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelYieldIngredient.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelYieldIngredient {
  String get id => throw _privateConstructorUsedError;
  Option<num> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelYieldIngredientCopyWith<WebClientModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelYieldIngredientCopyWith<$Res> {
  factory $WebClientModelYieldIngredientCopyWith(
          WebClientModelYieldIngredient value,
          $Res Function(WebClientModelYieldIngredient) then) =
      _$WebClientModelYieldIngredientCopyWithImpl<$Res,
          WebClientModelYieldIngredient>;
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class _$WebClientModelYieldIngredientCopyWithImpl<$Res,
        $Val extends WebClientModelYieldIngredient>
    implements $WebClientModelYieldIngredientCopyWith<$Res> {
  _$WebClientModelYieldIngredientCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelYieldIngredientCopyWith<$Res>
    implements $WebClientModelYieldIngredientCopyWith<$Res> {
  factory _$$_WebClientModelYieldIngredientCopyWith(
          _$_WebClientModelYieldIngredient value,
          $Res Function(_$_WebClientModelYieldIngredient) then) =
      __$$_WebClientModelYieldIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class __$$_WebClientModelYieldIngredientCopyWithImpl<$Res>
    extends _$WebClientModelYieldIngredientCopyWithImpl<$Res,
        _$_WebClientModelYieldIngredient>
    implements _$$_WebClientModelYieldIngredientCopyWith<$Res> {
  __$$_WebClientModelYieldIngredientCopyWithImpl(
      _$_WebClientModelYieldIngredient _value,
      $Res Function(_$_WebClientModelYieldIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_WebClientModelYieldIngredient(
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
class _$_WebClientModelYieldIngredient
    implements _WebClientModelYieldIngredient {
  const _$_WebClientModelYieldIngredient(
      {required this.id, required this.amount, required this.unit});

  factory _$_WebClientModelYieldIngredient.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelYieldIngredientFromJson(json);

  @override
  final String id;
  @override
  final Option<num> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'WebClientModelYieldIngredient(id: $id, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelYieldIngredient &&
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
  _$$_WebClientModelYieldIngredientCopyWith<_$_WebClientModelYieldIngredient>
      get copyWith => __$$_WebClientModelYieldIngredientCopyWithImpl<
          _$_WebClientModelYieldIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelYieldIngredientToJson(
      this,
    );
  }
}

abstract class _WebClientModelYieldIngredient
    implements WebClientModelYieldIngredient {
  const factory _WebClientModelYieldIngredient(
      {required final String id,
      required final Option<num> amount,
      required final Option<String> unit}) = _$_WebClientModelYieldIngredient;

  factory _WebClientModelYieldIngredient.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelYieldIngredient.fromJson;

  @override
  String get id;
  @override
  Option<num> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelYieldIngredientCopyWith<_$_WebClientModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelTag _$WebClientModelTagFromJson(Map<String, dynamic> json) {
  return _WebClientModelTag.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelTag {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, int> get numberOfRecipesByCountry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelTagCopyWith<WebClientModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelTagCopyWith<$Res> {
  factory $WebClientModelTagCopyWith(
          WebClientModelTag value, $Res Function(WebClientModelTag) then) =
      _$WebClientModelTagCopyWithImpl<$Res, WebClientModelTag>;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class _$WebClientModelTagCopyWithImpl<$Res, $Val extends WebClientModelTag>
    implements $WebClientModelTagCopyWith<$Res> {
  _$WebClientModelTagCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelTagCopyWith<$Res>
    implements $WebClientModelTagCopyWith<$Res> {
  factory _$$_WebClientModelTagCopyWith(_$_WebClientModelTag value,
          $Res Function(_$_WebClientModelTag) then) =
      __$$_WebClientModelTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class __$$_WebClientModelTagCopyWithImpl<$Res>
    extends _$WebClientModelTagCopyWithImpl<$Res, _$_WebClientModelTag>
    implements _$$_WebClientModelTagCopyWith<$Res> {
  __$$_WebClientModelTagCopyWithImpl(
      _$_WebClientModelTag _value, $Res Function(_$_WebClientModelTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_$_WebClientModelTag(
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
class _$_WebClientModelTag implements _WebClientModelTag {
  const _$_WebClientModelTag(
      {required this.id,
      required this.name,
      required this.type,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$_WebClientModelTag.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelTagFromJson(json);

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
    return 'WebClientModelTag(id: $id, name: $name, type: $type, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelTag &&
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
  _$$_WebClientModelTagCopyWith<_$_WebClientModelTag> get copyWith =>
      __$$_WebClientModelTagCopyWithImpl<_$_WebClientModelTag>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelTagToJson(
      this,
    );
  }
}

abstract class _WebClientModelTag implements WebClientModelTag {
  const factory _WebClientModelTag(
          {required final String id,
          required final String name,
          required final String type,
          required final Map<String, int> numberOfRecipesByCountry}) =
      _$_WebClientModelTag;

  factory _WebClientModelTag.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelTag.fromJson;

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
  _$$_WebClientModelTagCopyWith<_$_WebClientModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

WebClientModelIngredientFamily _$WebClientModelIngredientFamilyFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelIngredientFamily.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelIngredientFamilyCopyWith<WebClientModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelIngredientFamilyCopyWith<$Res> {
  factory $WebClientModelIngredientFamilyCopyWith(
          WebClientModelIngredientFamily value,
          $Res Function(WebClientModelIngredientFamily) then) =
      _$WebClientModelIngredientFamilyCopyWithImpl<$Res,
          WebClientModelIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$WebClientModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends WebClientModelIngredientFamily>
    implements $WebClientModelIngredientFamilyCopyWith<$Res> {
  _$WebClientModelIngredientFamilyCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelIngredientFamilyCopyWith<$Res>
    implements $WebClientModelIngredientFamilyCopyWith<$Res> {
  factory _$$_WebClientModelIngredientFamilyCopyWith(
          _$_WebClientModelIngredientFamily value,
          $Res Function(_$_WebClientModelIngredientFamily) then) =
      __$$_WebClientModelIngredientFamilyCopyWithImpl<$Res>;
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
class __$$_WebClientModelIngredientFamilyCopyWithImpl<$Res>
    extends _$WebClientModelIngredientFamilyCopyWithImpl<$Res,
        _$_WebClientModelIngredientFamily>
    implements _$$_WebClientModelIngredientFamilyCopyWith<$Res> {
  __$$_WebClientModelIngredientFamilyCopyWithImpl(
      _$_WebClientModelIngredientFamily _value,
      $Res Function(_$_WebClientModelIngredientFamily) _then)
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
    return _then(_$_WebClientModelIngredientFamily(
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
class _$_WebClientModelIngredientFamily
    implements _WebClientModelIngredientFamily {
  const _$_WebClientModelIngredientFamily(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  factory _$_WebClientModelIngredientFamily.fromJson(
          Map<String, dynamic> json) =>
      _$$_WebClientModelIngredientFamilyFromJson(json);

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
    return 'WebClientModelIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelIngredientFamily &&
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
  _$$_WebClientModelIngredientFamilyCopyWith<_$_WebClientModelIngredientFamily>
      get copyWith => __$$_WebClientModelIngredientFamilyCopyWithImpl<
          _$_WebClientModelIngredientFamily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelIngredientFamilyToJson(
      this,
    );
  }
}

abstract class _WebClientModelIngredientFamily
    implements WebClientModelIngredientFamily {
  const factory _WebClientModelIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$_WebClientModelIngredientFamily;

  factory _WebClientModelIngredientFamily.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelIngredientFamily.fromJson;

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
  _$$_WebClientModelIngredientFamilyCopyWith<_$_WebClientModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}
