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

WebClientModelApiResponse _$WebClientModelApiResponseFromJson(
    Map<String, dynamic> json) {
  return _WebClientModelApiResponse.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelApiResponse {
  int get total => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  List<WebClientModelRecipe> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebClientModelApiResponseCopyWith<WebClientModelApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebClientModelApiResponseCopyWith<$Res> {
  factory $WebClientModelApiResponseCopyWith(WebClientModelApiResponse value,
          $Res Function(WebClientModelApiResponse) then) =
      _$WebClientModelApiResponseCopyWithImpl<$Res, WebClientModelApiResponse>;
  @useResult
  $Res call(
      {int total,
      int take,
      int count,
      int skip,
      List<WebClientModelRecipe> items});
}

/// @nodoc
class _$WebClientModelApiResponseCopyWithImpl<$Res,
        $Val extends WebClientModelApiResponse>
    implements $WebClientModelApiResponseCopyWith<$Res> {
  _$WebClientModelApiResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_WebClientModelApiResponseCopyWith<$Res>
    implements $WebClientModelApiResponseCopyWith<$Res> {
  factory _$$_WebClientModelApiResponseCopyWith(
          _$_WebClientModelApiResponse value,
          $Res Function(_$_WebClientModelApiResponse) then) =
      __$$_WebClientModelApiResponseCopyWithImpl<$Res>;
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
class __$$_WebClientModelApiResponseCopyWithImpl<$Res>
    extends _$WebClientModelApiResponseCopyWithImpl<$Res,
        _$_WebClientModelApiResponse>
    implements _$$_WebClientModelApiResponseCopyWith<$Res> {
  __$$_WebClientModelApiResponseCopyWithImpl(
      _$_WebClientModelApiResponse _value,
      $Res Function(_$_WebClientModelApiResponse) _then)
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
    return _then(_$_WebClientModelApiResponse(
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
class _$_WebClientModelApiResponse implements _WebClientModelApiResponse {
  const _$_WebClientModelApiResponse(
      {required this.total,
      required this.take,
      required this.count,
      required this.skip,
      required final List<WebClientModelRecipe> items})
      : _items = items;

  factory _$_WebClientModelApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelApiResponseFromJson(json);

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
    return 'WebClientModelApiResponse(total: $total, take: $take, count: $count, skip: $skip, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelApiResponse &&
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
  _$$_WebClientModelApiResponseCopyWith<_$_WebClientModelApiResponse>
      get copyWith => __$$_WebClientModelApiResponseCopyWithImpl<
          _$_WebClientModelApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WebClientModelApiResponseToJson(
      this,
    );
  }
}

abstract class _WebClientModelApiResponse implements WebClientModelApiResponse {
  const factory _WebClientModelApiResponse(
          {required final int total,
          required final int take,
          required final int count,
          required final int skip,
          required final List<WebClientModelRecipe> items}) =
      _$_WebClientModelApiResponse;

  factory _WebClientModelApiResponse.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelApiResponse.fromJson;

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
  _$$_WebClientModelApiResponseCopyWith<_$_WebClientModelApiResponse>
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
  List<WebClientModelTag> get tags => throw _privateConstructorUsedError;
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
      List<WebClientModelTag> tags,
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
              as List<WebClientModelTag>,
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
      List<WebClientModelTag> tags,
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
              as List<WebClientModelTag>,
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
      required final List<WebClientModelTag> tags,
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

  final List<WebClientModelTag> _tags;
  @override
  List<WebClientModelTag> get tags {
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
          required final List<WebClientModelTag> tags,
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
  List<WebClientModelTag> get tags;
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
      Option<String> imagePath});
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
      Option<String> imagePath});
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
      required this.imagePath});

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
  String toString() {
    return 'WebClientModelIngredient(id: $id, country: $country, slug: $slug, name: $name, type: $type, imagePath: $imagePath)';
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
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, country, slug, name, type, imagePath);

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
      required final Option<String> imagePath}) = _$_WebClientModelIngredient;

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
  @JsonKey(ignore: true)
  _$$_WebClientModelIngredientCopyWith<_$_WebClientModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

WebClientModelTag _$WebClientModelTagFromJson(Map<String, dynamic> json) {
  return _WebClientModelTag.fromJson(json);
}

/// @nodoc
mixin _$WebClientModelTag {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get preferences => throw _privateConstructorUsedError;

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
      String slug,
      String type,
      String name,
      List<String> preferences});
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
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? preferences = null,
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
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      String slug,
      String type,
      String name,
      List<String> preferences});
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
    Object? slug = null,
    Object? type = null,
    Object? name = null,
    Object? preferences = null,
  }) {
    return _then(_$_WebClientModelTag(
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
      preferences: null == preferences
          ? _value._preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelTag implements _WebClientModelTag {
  const _$_WebClientModelTag(
      {required this.id,
      required this.slug,
      required this.type,
      required this.name,
      required final List<String> preferences})
      : _preferences = preferences;

  factory _$_WebClientModelTag.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelTagFromJson(json);

  @override
  final String id;
  @override
  final String slug;
  @override
  final String type;
  @override
  final String name;
  final List<String> _preferences;
  @override
  List<String> get preferences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferences);
  }

  @override
  String toString() {
    return 'WebClientModelTag(id: $id, slug: $slug, type: $type, name: $name, preferences: $preferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._preferences, _preferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, type, name,
      const DeepCollectionEquality().hash(_preferences));

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
      required final String slug,
      required final String type,
      required final String name,
      required final List<String> preferences}) = _$_WebClientModelTag;

  factory _WebClientModelTag.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelTag.fromJson;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get type;
  @override
  String get name;
  @override
  List<String> get preferences;
  @override
  @JsonKey(ignore: true)
  _$$_WebClientModelTagCopyWith<_$_WebClientModelTag> get copyWith =>
      throw _privateConstructorUsedError;
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
  final Option<String> iconPath;

  @override
  String toString() {
    return 'WebClientModelCuisine(id: $id, slug: $slug, type: $type, name: $name, iconPath: $iconPath)';
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
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, type, name, iconPath);

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
  Option<int> get yield => throw _privateConstructorUsedError;
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
      {Option<int> yield, List<WebClientModelYieldIngredient> ingredients});
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
    Object? yield = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
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
      {Option<int> yield, List<WebClientModelYieldIngredient> ingredients});
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
    Object? yield = null,
    Object? ingredients = null,
  }) {
    return _then(_$_WebClientModelYield(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
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
      {required this.yield,
      required final List<WebClientModelYieldIngredient> ingredients})
      : _ingredients = ingredients;

  factory _$_WebClientModelYield.fromJson(Map<String, dynamic> json) =>
      _$$_WebClientModelYieldFromJson(json);

  @override
  final Option<int> yield;
  final List<WebClientModelYieldIngredient> _ingredients;
  @override
  List<WebClientModelYieldIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'WebClientModelYield(yield: $yield, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebClientModelYield &&
            (identical(other.yield, yield) || other.yield == yield) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, yield, const DeepCollectionEquality().hash(_ingredients));

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
          {required final Option<int> yield,
          required final List<WebClientModelYieldIngredient> ingredients}) =
      _$_WebClientModelYield;

  factory _WebClientModelYield.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelYield.fromJson;

  @override
  Option<int> get yield;
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
  $Res call({int index, String instructionsMarkdown, List<String> ingredients});
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
  $Res call({int index, String instructionsMarkdown, List<String> ingredients});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebClientModelStep implements _WebClientModelStep {
  const _$_WebClientModelStep(
      {required this.index,
      required this.instructionsMarkdown,
      required final List<String> ingredients})
      : _ingredients = ingredients;

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

  @override
  String toString() {
    return 'WebClientModelStep(index: $index, instructionsMarkdown: $instructionsMarkdown, ingredients: $ingredients)';
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
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, instructionsMarkdown,
      const DeepCollectionEquality().hash(_ingredients));

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
      required final List<String> ingredients}) = _$_WebClientModelStep;

  factory _WebClientModelStep.fromJson(Map<String, dynamic> json) =
      _$_WebClientModelStep.fromJson;

  @override
  int get index;
  @override
  String get instructionsMarkdown;
  @override
  List<String> get ingredients;
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
