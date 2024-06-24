// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$WebClientModelRecipeApiRecipeResponseImplCopyWith<$Res>
    implements $WebClientModelRecipeApiRecipeResponseCopyWith<$Res> {
  factory _$$WebClientModelRecipeApiRecipeResponseImplCopyWith(
          _$WebClientModelRecipeApiRecipeResponseImpl value,
          $Res Function(_$WebClientModelRecipeApiRecipeResponseImpl) then) =
      __$$WebClientModelRecipeApiRecipeResponseImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeApiRecipeResponseImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiRecipeResponseCopyWithImpl<$Res,
        _$WebClientModelRecipeApiRecipeResponseImpl>
    implements _$$WebClientModelRecipeApiRecipeResponseImplCopyWith<$Res> {
  __$$WebClientModelRecipeApiRecipeResponseImplCopyWithImpl(
      _$WebClientModelRecipeApiRecipeResponseImpl _value,
      $Res Function(_$WebClientModelRecipeApiRecipeResponseImpl) _then)
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
    return _then(_$WebClientModelRecipeApiRecipeResponseImpl(
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
class _$WebClientModelRecipeApiRecipeResponseImpl
    implements _WebClientModelRecipeApiRecipeResponse {
  const _$WebClientModelRecipeApiRecipeResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelRecipe> items})
      : _items = items;

  factory _$WebClientModelRecipeApiRecipeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelRecipeApiRecipeResponseImplFromJson(json);

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
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiRecipeResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeApiRecipeResponseImpl &&
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
  _$$WebClientModelRecipeApiRecipeResponseImplCopyWith<
          _$WebClientModelRecipeApiRecipeResponseImpl>
      get copyWith => __$$WebClientModelRecipeApiRecipeResponseImplCopyWithImpl<
          _$WebClientModelRecipeApiRecipeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeApiRecipeResponseImplToJson(
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
      _$WebClientModelRecipeApiRecipeResponseImpl;

  factory _WebClientModelRecipeApiRecipeResponse.fromJson(
          Map<String, dynamic> json) =
      _$WebClientModelRecipeApiRecipeResponseImpl.fromJson;

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
  _$$WebClientModelRecipeApiRecipeResponseImplCopyWith<
          _$WebClientModelRecipeApiRecipeResponseImpl>
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
abstract class _$$WebClientModelRecipeApiTagResponseImplCopyWith<$Res>
    implements $WebClientModelRecipeApiTagResponseCopyWith<$Res> {
  factory _$$WebClientModelRecipeApiTagResponseImplCopyWith(
          _$WebClientModelRecipeApiTagResponseImpl value,
          $Res Function(_$WebClientModelRecipeApiTagResponseImpl) then) =
      __$$WebClientModelRecipeApiTagResponseImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeApiTagResponseImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiTagResponseCopyWithImpl<$Res,
        _$WebClientModelRecipeApiTagResponseImpl>
    implements _$$WebClientModelRecipeApiTagResponseImplCopyWith<$Res> {
  __$$WebClientModelRecipeApiTagResponseImplCopyWithImpl(
      _$WebClientModelRecipeApiTagResponseImpl _value,
      $Res Function(_$WebClientModelRecipeApiTagResponseImpl) _then)
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
    return _then(_$WebClientModelRecipeApiTagResponseImpl(
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
class _$WebClientModelRecipeApiTagResponseImpl
    implements _WebClientModelRecipeApiTagResponse {
  const _$WebClientModelRecipeApiTagResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelTag> items})
      : _items = items;

  factory _$WebClientModelRecipeApiTagResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelRecipeApiTagResponseImplFromJson(json);

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
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiTagResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeApiTagResponseImpl &&
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
  _$$WebClientModelRecipeApiTagResponseImplCopyWith<
          _$WebClientModelRecipeApiTagResponseImpl>
      get copyWith => __$$WebClientModelRecipeApiTagResponseImplCopyWithImpl<
          _$WebClientModelRecipeApiTagResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeApiTagResponseImplToJson(
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
      _$WebClientModelRecipeApiTagResponseImpl;

  factory _WebClientModelRecipeApiTagResponse.fromJson(
          Map<String, dynamic> json) =
      _$WebClientModelRecipeApiTagResponseImpl.fromJson;

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
  _$$WebClientModelRecipeApiTagResponseImplCopyWith<
          _$WebClientModelRecipeApiTagResponseImpl>
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
abstract class _$$WebClientModelRecipeApiCuisineResponseImplCopyWith<$Res>
    implements $WebClientModelRecipeApiCuisineResponseCopyWith<$Res> {
  factory _$$WebClientModelRecipeApiCuisineResponseImplCopyWith(
          _$WebClientModelRecipeApiCuisineResponseImpl value,
          $Res Function(_$WebClientModelRecipeApiCuisineResponseImpl) then) =
      __$$WebClientModelRecipeApiCuisineResponseImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeApiCuisineResponseImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiCuisineResponseCopyWithImpl<$Res,
        _$WebClientModelRecipeApiCuisineResponseImpl>
    implements _$$WebClientModelRecipeApiCuisineResponseImplCopyWith<$Res> {
  __$$WebClientModelRecipeApiCuisineResponseImplCopyWithImpl(
      _$WebClientModelRecipeApiCuisineResponseImpl _value,
      $Res Function(_$WebClientModelRecipeApiCuisineResponseImpl) _then)
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
    return _then(_$WebClientModelRecipeApiCuisineResponseImpl(
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
class _$WebClientModelRecipeApiCuisineResponseImpl
    implements _WebClientModelRecipeApiCuisineResponse {
  const _$WebClientModelRecipeApiCuisineResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelCuisine> items})
      : _items = items;

  factory _$WebClientModelRecipeApiCuisineResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelRecipeApiCuisineResponseImplFromJson(json);

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
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiCuisineResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeApiCuisineResponseImpl &&
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
  _$$WebClientModelRecipeApiCuisineResponseImplCopyWith<
          _$WebClientModelRecipeApiCuisineResponseImpl>
      get copyWith =>
          __$$WebClientModelRecipeApiCuisineResponseImplCopyWithImpl<
              _$WebClientModelRecipeApiCuisineResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeApiCuisineResponseImplToJson(
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
      _$WebClientModelRecipeApiCuisineResponseImpl;

  factory _WebClientModelRecipeApiCuisineResponse.fromJson(
          Map<String, dynamic> json) =
      _$WebClientModelRecipeApiCuisineResponseImpl.fromJson;

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
  _$$WebClientModelRecipeApiCuisineResponseImplCopyWith<
          _$WebClientModelRecipeApiCuisineResponseImpl>
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
abstract class _$$WebClientModelRecipeApiIngredientsResponseImplCopyWith<$Res>
    implements $WebClientModelRecipeApiIngredientsResponseCopyWith<$Res> {
  factory _$$WebClientModelRecipeApiIngredientsResponseImplCopyWith(
          _$WebClientModelRecipeApiIngredientsResponseImpl value,
          $Res Function(_$WebClientModelRecipeApiIngredientsResponseImpl)
              then) =
      __$$WebClientModelRecipeApiIngredientsResponseImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeApiIngredientsResponseImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeApiIngredientsResponseCopyWithImpl<$Res,
        _$WebClientModelRecipeApiIngredientsResponseImpl>
    implements _$$WebClientModelRecipeApiIngredientsResponseImplCopyWith<$Res> {
  __$$WebClientModelRecipeApiIngredientsResponseImplCopyWithImpl(
      _$WebClientModelRecipeApiIngredientsResponseImpl _value,
      $Res Function(_$WebClientModelRecipeApiIngredientsResponseImpl) _then)
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
    return _then(_$WebClientModelRecipeApiIngredientsResponseImpl(
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
class _$WebClientModelRecipeApiIngredientsResponseImpl
    implements _WebClientModelRecipeApiIngredientsResponse {
  const _$WebClientModelRecipeApiIngredientsResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelIngredient> items})
      : _items = items;

  factory _$WebClientModelRecipeApiIngredientsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelRecipeApiIngredientsResponseImplFromJson(json);

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
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeApiIngredientsResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeApiIngredientsResponseImpl &&
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
  _$$WebClientModelRecipeApiIngredientsResponseImplCopyWith<
          _$WebClientModelRecipeApiIngredientsResponseImpl>
      get copyWith =>
          __$$WebClientModelRecipeApiIngredientsResponseImplCopyWithImpl<
                  _$WebClientModelRecipeApiIngredientsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeApiIngredientsResponseImplToJson(
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
      _$WebClientModelRecipeApiIngredientsResponseImpl;

  factory _WebClientModelRecipeApiIngredientsResponse.fromJson(
          Map<String, dynamic> json) =
      _$WebClientModelRecipeApiIngredientsResponseImpl.fromJson;

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
  _$$WebClientModelRecipeApiIngredientsResponseImplCopyWith<
          _$WebClientModelRecipeApiIngredientsResponseImpl>
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
abstract class _$$WebClientModelTagsApiResponseImplCopyWith<$Res>
    implements $WebClientModelTagsApiResponseCopyWith<$Res> {
  factory _$$WebClientModelTagsApiResponseImplCopyWith(
          _$WebClientModelTagsApiResponseImpl value,
          $Res Function(_$WebClientModelTagsApiResponseImpl) then) =
      __$$WebClientModelTagsApiResponseImplCopyWithImpl<$Res>;
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
class __$$WebClientModelTagsApiResponseImplCopyWithImpl<$Res>
    extends _$WebClientModelTagsApiResponseCopyWithImpl<$Res,
        _$WebClientModelTagsApiResponseImpl>
    implements _$$WebClientModelTagsApiResponseImplCopyWith<$Res> {
  __$$WebClientModelTagsApiResponseImplCopyWithImpl(
      _$WebClientModelTagsApiResponseImpl _value,
      $Res Function(_$WebClientModelTagsApiResponseImpl) _then)
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
    return _then(_$WebClientModelTagsApiResponseImpl(
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
class _$WebClientModelTagsApiResponseImpl
    implements _WebClientModelTagsApiResponse {
  const _$WebClientModelTagsApiResponseImpl(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelTag> items})
      : _items = items;

  factory _$WebClientModelTagsApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelTagsApiResponseImplFromJson(json);

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
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WebClientModelTagsApiResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelTagsApiResponseImpl &&
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
  _$$WebClientModelTagsApiResponseImplCopyWith<
          _$WebClientModelTagsApiResponseImpl>
      get copyWith => __$$WebClientModelTagsApiResponseImplCopyWithImpl<
          _$WebClientModelTagsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelTagsApiResponseImplToJson(
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
      _$WebClientModelTagsApiResponseImpl;

  factory _WebClientModelTagsApiResponse.fromJson(Map<String, dynamic> json) =
      _$WebClientModelTagsApiResponseImpl.fromJson;

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
  _$$WebClientModelTagsApiResponseImplCopyWith<
          _$WebClientModelTagsApiResponseImpl>
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
abstract class _$$WebClientModelRecipeImplCopyWith<$Res>
    implements $WebClientModelRecipeCopyWith<$Res> {
  factory _$$WebClientModelRecipeImplCopyWith(_$WebClientModelRecipeImpl value,
          $Res Function(_$WebClientModelRecipeImpl) then) =
      __$$WebClientModelRecipeImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeCopyWithImpl<$Res, _$WebClientModelRecipeImpl>
    implements _$$WebClientModelRecipeImplCopyWith<$Res> {
  __$$WebClientModelRecipeImplCopyWithImpl(_$WebClientModelRecipeImpl _value,
      $Res Function(_$WebClientModelRecipeImpl) _then)
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
    return _then(_$WebClientModelRecipeImpl(
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
class _$WebClientModelRecipeImpl implements _WebClientModelRecipe {
  const _$WebClientModelRecipeImpl(
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

  factory _$WebClientModelRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelRecipeImplFromJson(json);

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
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<WebClientModelYield> _yields;
  @override
  List<WebClientModelYield> get yields {
    if (_yields is EqualUnmodifiableListView) return _yields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<WebClientModelRecipeTag> _tags;
  @override
  List<WebClientModelRecipeTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<WebClientModelStep> _steps;
  @override
  List<WebClientModelStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  final List<WebClientModelCuisine> _cuisines;
  @override
  List<WebClientModelCuisine> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  String toString() {
    return 'WebClientModelRecipe(id: $id, name: $name, slug: $slug, country: $country, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown, difficulty: $difficulty, prepTime: $prepTime, totalTime: $totalTime, imagePath: $imagePath, ingredients: $ingredients, yields: $yields, tags: $tags, steps: $steps, cuisines: $cuisines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeImpl &&
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
  _$$WebClientModelRecipeImplCopyWith<_$WebClientModelRecipeImpl>
      get copyWith =>
          __$$WebClientModelRecipeImplCopyWithImpl<_$WebClientModelRecipeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeImplToJson(
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
      _$WebClientModelRecipeImpl;

  factory _WebClientModelRecipe.fromJson(Map<String, dynamic> json) =
      _$WebClientModelRecipeImpl.fromJson;

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
  _$$WebClientModelRecipeImplCopyWith<_$WebClientModelRecipeImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$WebClientModelIngredientImplCopyWith<$Res>
    implements $WebClientModelIngredientCopyWith<$Res> {
  factory _$$WebClientModelIngredientImplCopyWith(
          _$WebClientModelIngredientImpl value,
          $Res Function(_$WebClientModelIngredientImpl) then) =
      __$$WebClientModelIngredientImplCopyWithImpl<$Res>;
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
class __$$WebClientModelIngredientImplCopyWithImpl<$Res>
    extends _$WebClientModelIngredientCopyWithImpl<$Res,
        _$WebClientModelIngredientImpl>
    implements _$$WebClientModelIngredientImplCopyWith<$Res> {
  __$$WebClientModelIngredientImplCopyWithImpl(
      _$WebClientModelIngredientImpl _value,
      $Res Function(_$WebClientModelIngredientImpl) _then)
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
    return _then(_$WebClientModelIngredientImpl(
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
class _$WebClientModelIngredientImpl implements _WebClientModelIngredient {
  const _$WebClientModelIngredientImpl(
      {required this.id,
      required this.country,
      required this.slug,
      required this.name,
      required this.type,
      required this.imagePath,
      required this.family});

  factory _$WebClientModelIngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelIngredientImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelIngredientImpl &&
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
  _$$WebClientModelIngredientImplCopyWith<_$WebClientModelIngredientImpl>
      get copyWith => __$$WebClientModelIngredientImplCopyWithImpl<
          _$WebClientModelIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelIngredientImplToJson(
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
      _$WebClientModelIngredientImpl;

  factory _WebClientModelIngredient.fromJson(Map<String, dynamic> json) =
      _$WebClientModelIngredientImpl.fromJson;

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
  _$$WebClientModelIngredientImplCopyWith<_$WebClientModelIngredientImpl>
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
abstract class _$$WebClientModelRecipeTagImplCopyWith<$Res>
    implements $WebClientModelRecipeTagCopyWith<$Res> {
  factory _$$WebClientModelRecipeTagImplCopyWith(
          _$WebClientModelRecipeTagImpl value,
          $Res Function(_$WebClientModelRecipeTagImpl) then) =
      __$$WebClientModelRecipeTagImplCopyWithImpl<$Res>;
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
class __$$WebClientModelRecipeTagImplCopyWithImpl<$Res>
    extends _$WebClientModelRecipeTagCopyWithImpl<$Res,
        _$WebClientModelRecipeTagImpl>
    implements _$$WebClientModelRecipeTagImplCopyWith<$Res> {
  __$$WebClientModelRecipeTagImplCopyWithImpl(
      _$WebClientModelRecipeTagImpl _value,
      $Res Function(_$WebClientModelRecipeTagImpl) _then)
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
    return _then(_$WebClientModelRecipeTagImpl(
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
class _$WebClientModelRecipeTagImpl implements _WebClientModelRecipeTag {
  const _$WebClientModelRecipeTagImpl(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$WebClientModelRecipeTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelRecipeTagImplFromJson(json);

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
    if (_numberOfRecipesByCountry is EqualUnmodifiableMapView)
      return _numberOfRecipesByCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_numberOfRecipesByCountry);
  }

  @override
  String toString() {
    return 'WebClientModelRecipeTag(id: $id, slug: $slug, type: $type, name: $name, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelRecipeTagImpl &&
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
  _$$WebClientModelRecipeTagImplCopyWith<_$WebClientModelRecipeTagImpl>
      get copyWith => __$$WebClientModelRecipeTagImplCopyWithImpl<
          _$WebClientModelRecipeTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelRecipeTagImplToJson(
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
      _$WebClientModelRecipeTagImpl;

  factory _WebClientModelRecipeTag.fromJson(Map<String, dynamic> json) =
      _$WebClientModelRecipeTagImpl.fromJson;

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
  _$$WebClientModelRecipeTagImplCopyWith<_$WebClientModelRecipeTagImpl>
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
abstract class _$$WebClientModelCuisineImplCopyWith<$Res>
    implements $WebClientModelCuisineCopyWith<$Res> {
  factory _$$WebClientModelCuisineImplCopyWith(
          _$WebClientModelCuisineImpl value,
          $Res Function(_$WebClientModelCuisineImpl) then) =
      __$$WebClientModelCuisineImplCopyWithImpl<$Res>;
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
class __$$WebClientModelCuisineImplCopyWithImpl<$Res>
    extends _$WebClientModelCuisineCopyWithImpl<$Res,
        _$WebClientModelCuisineImpl>
    implements _$$WebClientModelCuisineImplCopyWith<$Res> {
  __$$WebClientModelCuisineImplCopyWithImpl(_$WebClientModelCuisineImpl _value,
      $Res Function(_$WebClientModelCuisineImpl) _then)
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
    return _then(_$WebClientModelCuisineImpl(
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
class _$WebClientModelCuisineImpl implements _WebClientModelCuisine {
  const _$WebClientModelCuisineImpl(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required this.countryCode,
      required this.usage,
      required this.iconPath});

  factory _$WebClientModelCuisineImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelCuisineImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelCuisineImpl &&
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
  _$$WebClientModelCuisineImplCopyWith<_$WebClientModelCuisineImpl>
      get copyWith => __$$WebClientModelCuisineImplCopyWithImpl<
          _$WebClientModelCuisineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelCuisineImplToJson(
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
      required final Option<String> iconPath}) = _$WebClientModelCuisineImpl;

  factory _WebClientModelCuisine.fromJson(Map<String, dynamic> json) =
      _$WebClientModelCuisineImpl.fromJson;

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
  _$$WebClientModelCuisineImplCopyWith<_$WebClientModelCuisineImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$WebClientModelYieldImplCopyWith<$Res>
    implements $WebClientModelYieldCopyWith<$Res> {
  factory _$$WebClientModelYieldImplCopyWith(_$WebClientModelYieldImpl value,
          $Res Function(_$WebClientModelYieldImpl) then) =
      __$$WebClientModelYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<int> yields, List<WebClientModelYieldIngredient> ingredients});
}

/// @nodoc
class __$$WebClientModelYieldImplCopyWithImpl<$Res>
    extends _$WebClientModelYieldCopyWithImpl<$Res, _$WebClientModelYieldImpl>
    implements _$$WebClientModelYieldImplCopyWith<$Res> {
  __$$WebClientModelYieldImplCopyWithImpl(_$WebClientModelYieldImpl _value,
      $Res Function(_$WebClientModelYieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yields = null,
    Object? ingredients = null,
  }) {
    return _then(_$WebClientModelYieldImpl(
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
class _$WebClientModelYieldImpl implements _WebClientModelYield {
  const _$WebClientModelYieldImpl(
      {required this.yields,
      required final List<WebClientModelYieldIngredient> ingredients})
      : _ingredients = ingredients;

  factory _$WebClientModelYieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelYieldImplFromJson(json);

  @override
  final Option<int> yields;
  final List<WebClientModelYieldIngredient> _ingredients;
  @override
  List<WebClientModelYieldIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'WebClientModelYield(yields: $yields, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelYieldImpl &&
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
  _$$WebClientModelYieldImplCopyWith<_$WebClientModelYieldImpl> get copyWith =>
      __$$WebClientModelYieldImplCopyWithImpl<_$WebClientModelYieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelYieldImplToJson(
      this,
    );
  }
}

abstract class _WebClientModelYield implements WebClientModelYield {
  const factory _WebClientModelYield(
          {required final Option<int> yields,
          required final List<WebClientModelYieldIngredient> ingredients}) =
      _$WebClientModelYieldImpl;

  factory _WebClientModelYield.fromJson(Map<String, dynamic> json) =
      _$WebClientModelYieldImpl.fromJson;

  @override
  Option<int> get yields;
  @override
  List<WebClientModelYieldIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$WebClientModelYieldImplCopyWith<_$WebClientModelYieldImpl> get copyWith =>
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
abstract class _$$WebClientModelStepImplCopyWith<$Res>
    implements $WebClientModelStepCopyWith<$Res> {
  factory _$$WebClientModelStepImplCopyWith(_$WebClientModelStepImpl value,
          $Res Function(_$WebClientModelStepImpl) then) =
      __$$WebClientModelStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String instructionsMarkdown,
      List<String> ingredients,
      List<WebClientModelStepImage> images});
}

/// @nodoc
class __$$WebClientModelStepImplCopyWithImpl<$Res>
    extends _$WebClientModelStepCopyWithImpl<$Res, _$WebClientModelStepImpl>
    implements _$$WebClientModelStepImplCopyWith<$Res> {
  __$$WebClientModelStepImplCopyWithImpl(_$WebClientModelStepImpl _value,
      $Res Function(_$WebClientModelStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? instructionsMarkdown = null,
    Object? ingredients = null,
    Object? images = null,
  }) {
    return _then(_$WebClientModelStepImpl(
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
class _$WebClientModelStepImpl implements _WebClientModelStep {
  const _$WebClientModelStepImpl(
      {required this.index,
      required this.instructionsMarkdown,
      required final List<String> ingredients,
      required final List<WebClientModelStepImage> images})
      : _ingredients = ingredients,
        _images = images;

  factory _$WebClientModelStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelStepImplFromJson(json);

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

  final List<WebClientModelStepImage> _images;
  @override
  List<WebClientModelStepImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'WebClientModelStep(index: $index, instructionsMarkdown: $instructionsMarkdown, ingredients: $ingredients, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelStepImpl &&
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
  _$$WebClientModelStepImplCopyWith<_$WebClientModelStepImpl> get copyWith =>
      __$$WebClientModelStepImplCopyWithImpl<_$WebClientModelStepImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelStepImplToJson(
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
      _$WebClientModelStepImpl;

  factory _WebClientModelStep.fromJson(Map<String, dynamic> json) =
      _$WebClientModelStepImpl.fromJson;

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
  _$$WebClientModelStepImplCopyWith<_$WebClientModelStepImpl> get copyWith =>
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
abstract class _$$WebClientModelStepImageImplCopyWith<$Res>
    implements $WebClientModelStepImageCopyWith<$Res> {
  factory _$$WebClientModelStepImageImplCopyWith(
          _$WebClientModelStepImageImpl value,
          $Res Function(_$WebClientModelStepImageImpl) then) =
      __$$WebClientModelStepImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String caption});
}

/// @nodoc
class __$$WebClientModelStepImageImplCopyWithImpl<$Res>
    extends _$WebClientModelStepImageCopyWithImpl<$Res,
        _$WebClientModelStepImageImpl>
    implements _$$WebClientModelStepImageImplCopyWith<$Res> {
  __$$WebClientModelStepImageImplCopyWithImpl(
      _$WebClientModelStepImageImpl _value,
      $Res Function(_$WebClientModelStepImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? caption = null,
  }) {
    return _then(_$WebClientModelStepImageImpl(
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
class _$WebClientModelStepImageImpl implements _WebClientModelStepImage {
  const _$WebClientModelStepImageImpl(
      {required this.path, required this.caption});

  factory _$WebClientModelStepImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelStepImageImplFromJson(json);

  @override
  final String path;
  @override
  final String caption;

  @override
  String toString() {
    return 'WebClientModelStepImage(path: $path, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelStepImageImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebClientModelStepImageImplCopyWith<_$WebClientModelStepImageImpl>
      get copyWith => __$$WebClientModelStepImageImplCopyWithImpl<
          _$WebClientModelStepImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelStepImageImplToJson(
      this,
    );
  }
}

abstract class _WebClientModelStepImage implements WebClientModelStepImage {
  const factory _WebClientModelStepImage(
      {required final String path,
      required final String caption}) = _$WebClientModelStepImageImpl;

  factory _WebClientModelStepImage.fromJson(Map<String, dynamic> json) =
      _$WebClientModelStepImageImpl.fromJson;

  @override
  String get path;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$$WebClientModelStepImageImplCopyWith<_$WebClientModelStepImageImpl>
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
abstract class _$$WebClientModelYieldIngredientImplCopyWith<$Res>
    implements $WebClientModelYieldIngredientCopyWith<$Res> {
  factory _$$WebClientModelYieldIngredientImplCopyWith(
          _$WebClientModelYieldIngredientImpl value,
          $Res Function(_$WebClientModelYieldIngredientImpl) then) =
      __$$WebClientModelYieldIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<num> amount, Option<String> unit});
}

/// @nodoc
class __$$WebClientModelYieldIngredientImplCopyWithImpl<$Res>
    extends _$WebClientModelYieldIngredientCopyWithImpl<$Res,
        _$WebClientModelYieldIngredientImpl>
    implements _$$WebClientModelYieldIngredientImplCopyWith<$Res> {
  __$$WebClientModelYieldIngredientImplCopyWithImpl(
      _$WebClientModelYieldIngredientImpl _value,
      $Res Function(_$WebClientModelYieldIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$WebClientModelYieldIngredientImpl(
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
class _$WebClientModelYieldIngredientImpl
    implements _WebClientModelYieldIngredient {
  const _$WebClientModelYieldIngredientImpl(
      {required this.id, required this.amount, required this.unit});

  factory _$WebClientModelYieldIngredientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelYieldIngredientImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelYieldIngredientImpl &&
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
  _$$WebClientModelYieldIngredientImplCopyWith<
          _$WebClientModelYieldIngredientImpl>
      get copyWith => __$$WebClientModelYieldIngredientImplCopyWithImpl<
          _$WebClientModelYieldIngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelYieldIngredientImplToJson(
      this,
    );
  }
}

abstract class _WebClientModelYieldIngredient
    implements WebClientModelYieldIngredient {
  const factory _WebClientModelYieldIngredient(
          {required final String id,
          required final Option<num> amount,
          required final Option<String> unit}) =
      _$WebClientModelYieldIngredientImpl;

  factory _WebClientModelYieldIngredient.fromJson(Map<String, dynamic> json) =
      _$WebClientModelYieldIngredientImpl.fromJson;

  @override
  String get id;
  @override
  Option<num> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$WebClientModelYieldIngredientImplCopyWith<
          _$WebClientModelYieldIngredientImpl>
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
abstract class _$$WebClientModelTagImplCopyWith<$Res>
    implements $WebClientModelTagCopyWith<$Res> {
  factory _$$WebClientModelTagImplCopyWith(_$WebClientModelTagImpl value,
          $Res Function(_$WebClientModelTagImpl) then) =
      __$$WebClientModelTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      Map<String, int> numberOfRecipesByCountry});
}

/// @nodoc
class __$$WebClientModelTagImplCopyWithImpl<$Res>
    extends _$WebClientModelTagCopyWithImpl<$Res, _$WebClientModelTagImpl>
    implements _$$WebClientModelTagImplCopyWith<$Res> {
  __$$WebClientModelTagImplCopyWithImpl(_$WebClientModelTagImpl _value,
      $Res Function(_$WebClientModelTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? numberOfRecipesByCountry = null,
  }) {
    return _then(_$WebClientModelTagImpl(
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
class _$WebClientModelTagImpl implements _WebClientModelTag {
  const _$WebClientModelTagImpl(
      {required this.id,
      required this.name,
      required this.type,
      required final Map<String, int> numberOfRecipesByCountry})
      : _numberOfRecipesByCountry = numberOfRecipesByCountry;

  factory _$WebClientModelTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebClientModelTagImplFromJson(json);

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
    return 'WebClientModelTag(id: $id, name: $name, type: $type, numberOfRecipesByCountry: $numberOfRecipesByCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelTagImpl &&
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
  _$$WebClientModelTagImplCopyWith<_$WebClientModelTagImpl> get copyWith =>
      __$$WebClientModelTagImplCopyWithImpl<_$WebClientModelTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelTagImplToJson(
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
      _$WebClientModelTagImpl;

  factory _WebClientModelTag.fromJson(Map<String, dynamic> json) =
      _$WebClientModelTagImpl.fromJson;

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
  _$$WebClientModelTagImplCopyWith<_$WebClientModelTagImpl> get copyWith =>
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
abstract class _$$WebClientModelIngredientFamilyImplCopyWith<$Res>
    implements $WebClientModelIngredientFamilyCopyWith<$Res> {
  factory _$$WebClientModelIngredientFamilyImplCopyWith(
          _$WebClientModelIngredientFamilyImpl value,
          $Res Function(_$WebClientModelIngredientFamilyImpl) then) =
      __$$WebClientModelIngredientFamilyImplCopyWithImpl<$Res>;
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
class __$$WebClientModelIngredientFamilyImplCopyWithImpl<$Res>
    extends _$WebClientModelIngredientFamilyCopyWithImpl<$Res,
        _$WebClientModelIngredientFamilyImpl>
    implements _$$WebClientModelIngredientFamilyImplCopyWith<$Res> {
  __$$WebClientModelIngredientFamilyImplCopyWithImpl(
      _$WebClientModelIngredientFamilyImpl _value,
      $Res Function(_$WebClientModelIngredientFamilyImpl) _then)
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
    return _then(_$WebClientModelIngredientFamilyImpl(
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
class _$WebClientModelIngredientFamilyImpl
    implements _WebClientModelIngredientFamily {
  const _$WebClientModelIngredientFamilyImpl(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  factory _$WebClientModelIngredientFamilyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebClientModelIngredientFamilyImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebClientModelIngredientFamilyImpl &&
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
  _$$WebClientModelIngredientFamilyImplCopyWith<
          _$WebClientModelIngredientFamilyImpl>
      get copyWith => __$$WebClientModelIngredientFamilyImplCopyWithImpl<
          _$WebClientModelIngredientFamilyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebClientModelIngredientFamilyImplToJson(
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
      required final String slug}) = _$WebClientModelIngredientFamilyImpl;

  factory _WebClientModelIngredientFamily.fromJson(Map<String, dynamic> json) =
      _$WebClientModelIngredientFamilyImpl.fromJson;

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
  _$$WebClientModelIngredientFamilyImplCopyWith<
          _$WebClientModelIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
