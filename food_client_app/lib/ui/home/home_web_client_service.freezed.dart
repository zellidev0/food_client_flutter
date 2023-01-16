// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_web_client_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeWebClientModelRecipeResponse {
  HomeWebClientModelRecipePagination get pagination =>
      throw _privateConstructorUsedError;
  List<HomeWebClientModelRecipe> get recipes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelRecipeResponseCopyWith<HomeWebClientModelRecipeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelRecipeResponseCopyWith<$Res> {
  factory $HomeWebClientModelRecipeResponseCopyWith(
          HomeWebClientModelRecipeResponse value,
          $Res Function(HomeWebClientModelRecipeResponse) then) =
      _$HomeWebClientModelRecipeResponseCopyWithImpl<$Res,
          HomeWebClientModelRecipeResponse>;
  @useResult
  $Res call(
      {HomeWebClientModelRecipePagination pagination,
      List<HomeWebClientModelRecipe> recipes});

  $HomeWebClientModelRecipePaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$HomeWebClientModelRecipeResponseCopyWithImpl<$Res,
        $Val extends HomeWebClientModelRecipeResponse>
    implements $HomeWebClientModelRecipeResponseCopyWith<$Res> {
  _$HomeWebClientModelRecipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as HomeWebClientModelRecipePagination,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelRecipe>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeWebClientModelRecipePaginationCopyWith<$Res> get pagination {
    return $HomeWebClientModelRecipePaginationCopyWith<$Res>(_value.pagination,
        (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelRecipeResponseCopyWith<$Res>
    implements $HomeWebClientModelRecipeResponseCopyWith<$Res> {
  factory _$$_HomeWebClientModelRecipeResponseCopyWith(
          _$_HomeWebClientModelRecipeResponse value,
          $Res Function(_$_HomeWebClientModelRecipeResponse) then) =
      __$$_HomeWebClientModelRecipeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeWebClientModelRecipePagination pagination,
      List<HomeWebClientModelRecipe> recipes});

  @override
  $HomeWebClientModelRecipePaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_HomeWebClientModelRecipeResponseCopyWithImpl<$Res>
    extends _$HomeWebClientModelRecipeResponseCopyWithImpl<$Res,
        _$_HomeWebClientModelRecipeResponse>
    implements _$$_HomeWebClientModelRecipeResponseCopyWith<$Res> {
  __$$_HomeWebClientModelRecipeResponseCopyWithImpl(
      _$_HomeWebClientModelRecipeResponse _value,
      $Res Function(_$_HomeWebClientModelRecipeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? recipes = null,
  }) {
    return _then(_$_HomeWebClientModelRecipeResponse(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as HomeWebClientModelRecipePagination,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelRecipe>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelRecipeResponse
    implements _HomeWebClientModelRecipeResponse {
  const _$_HomeWebClientModelRecipeResponse(
      {required this.pagination,
      required final List<HomeWebClientModelRecipe> recipes})
      : _recipes = recipes;

  @override
  final HomeWebClientModelRecipePagination pagination;
  final List<HomeWebClientModelRecipe> _recipes;
  @override
  List<HomeWebClientModelRecipe> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'HomeWebClientModelRecipeResponse(pagination: $pagination, recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelRecipeResponse &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelRecipeResponseCopyWith<
          _$_HomeWebClientModelRecipeResponse>
      get copyWith => __$$_HomeWebClientModelRecipeResponseCopyWithImpl<
          _$_HomeWebClientModelRecipeResponse>(this, _$identity);
}

abstract class _HomeWebClientModelRecipeResponse
    implements HomeWebClientModelRecipeResponse {
  const factory _HomeWebClientModelRecipeResponse(
          {required final HomeWebClientModelRecipePagination pagination,
          required final List<HomeWebClientModelRecipe> recipes}) =
      _$_HomeWebClientModelRecipeResponse;

  @override
  HomeWebClientModelRecipePagination get pagination;
  @override
  List<HomeWebClientModelRecipe> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelRecipeResponseCopyWith<
          _$_HomeWebClientModelRecipeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelRecipePagination {
  int get skip => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;
  Option<int> get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelRecipePaginationCopyWith<
          HomeWebClientModelRecipePagination>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelRecipePaginationCopyWith<$Res> {
  factory $HomeWebClientModelRecipePaginationCopyWith(
          HomeWebClientModelRecipePagination value,
          $Res Function(HomeWebClientModelRecipePagination) then) =
      _$HomeWebClientModelRecipePaginationCopyWithImpl<$Res,
          HomeWebClientModelRecipePagination>;
  @useResult
  $Res call({int skip, int take, Option<int> total});
}

/// @nodoc
class _$HomeWebClientModelRecipePaginationCopyWithImpl<$Res,
        $Val extends HomeWebClientModelRecipePagination>
    implements $HomeWebClientModelRecipePaginationCopyWith<$Res> {
  _$HomeWebClientModelRecipePaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? take = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelRecipePaginationCopyWith<$Res>
    implements $HomeWebClientModelRecipePaginationCopyWith<$Res> {
  factory _$$_HomeWebClientModelRecipePaginationCopyWith(
          _$_HomeWebClientModelRecipePagination value,
          $Res Function(_$_HomeWebClientModelRecipePagination) then) =
      __$$_HomeWebClientModelRecipePaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int skip, int take, Option<int> total});
}

/// @nodoc
class __$$_HomeWebClientModelRecipePaginationCopyWithImpl<$Res>
    extends _$HomeWebClientModelRecipePaginationCopyWithImpl<$Res,
        _$_HomeWebClientModelRecipePagination>
    implements _$$_HomeWebClientModelRecipePaginationCopyWith<$Res> {
  __$$_HomeWebClientModelRecipePaginationCopyWithImpl(
      _$_HomeWebClientModelRecipePagination _value,
      $Res Function(_$_HomeWebClientModelRecipePagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
    Object? take = null,
    Object? total = null,
  }) {
    return _then(_$_HomeWebClientModelRecipePagination(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      take: null == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelRecipePagination
    implements _HomeWebClientModelRecipePagination {
  const _$_HomeWebClientModelRecipePagination(
      {required this.skip, required this.take, required this.total});

  @override
  final int skip;
  @override
  final int take;
  @override
  final Option<int> total;

  @override
  String toString() {
    return 'HomeWebClientModelRecipePagination(skip: $skip, take: $take, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelRecipePagination &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip, take, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelRecipePaginationCopyWith<
          _$_HomeWebClientModelRecipePagination>
      get copyWith => __$$_HomeWebClientModelRecipePaginationCopyWithImpl<
          _$_HomeWebClientModelRecipePagination>(this, _$identity);
}

abstract class _HomeWebClientModelRecipePagination
    implements HomeWebClientModelRecipePagination {
  const factory _HomeWebClientModelRecipePagination(
          {required final int skip,
          required final int take,
          required final Option<int> total}) =
      _$_HomeWebClientModelRecipePagination;

  @override
  int get skip;
  @override
  int get take;
  @override
  Option<int> get total;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelRecipePaginationCopyWith<
          _$_HomeWebClientModelRecipePagination>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelRecipe {
  String get id => throw _privateConstructorUsedError;
  HomeWebClientModelDisplayedAttributes get displayedAttributes =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  List<HomeWebClientModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  List<HomeWebClientModelYield> get yields =>
      throw _privateConstructorUsedError;
  List<String> get tagIds => throw _privateConstructorUsedError;
  List<String> get cuisineIds => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelRecipeCopyWith<HomeWebClientModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelRecipeCopyWith<$Res> {
  factory $HomeWebClientModelRecipeCopyWith(HomeWebClientModelRecipe value,
          $Res Function(HomeWebClientModelRecipe) then) =
      _$HomeWebClientModelRecipeCopyWithImpl<$Res, HomeWebClientModelRecipe>;
  @useResult
  $Res call(
      {String id,
      HomeWebClientModelDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeWebClientModelIngredient> ingredients,
      List<HomeWebClientModelYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Option<Uri> imagePath});

  $HomeWebClientModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class _$HomeWebClientModelRecipeCopyWithImpl<$Res,
        $Val extends HomeWebClientModelRecipe>
    implements $HomeWebClientModelRecipeCopyWith<$Res> {
  _$HomeWebClientModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayedAttributes = null,
    Object? difficulty = null,
    Object? ingredients = null,
    Object? yields = null,
    Object? tagIds = null,
    Object? cuisineIds = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as HomeWebClientModelDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelIngredient>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelYield>,
      tagIds: null == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisineIds: null == cuisineIds
          ? _value.cuisineIds
          : cuisineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeWebClientModelDisplayedAttributesCopyWith<$Res> get displayedAttributes {
    return $HomeWebClientModelDisplayedAttributesCopyWith<$Res>(
        _value.displayedAttributes, (value) {
      return _then(_value.copyWith(displayedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelRecipeCopyWith<$Res>
    implements $HomeWebClientModelRecipeCopyWith<$Res> {
  factory _$$_HomeWebClientModelRecipeCopyWith(
          _$_HomeWebClientModelRecipe value,
          $Res Function(_$_HomeWebClientModelRecipe) then) =
      __$$_HomeWebClientModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      HomeWebClientModelDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeWebClientModelIngredient> ingredients,
      List<HomeWebClientModelYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Option<Uri> imagePath});

  @override
  $HomeWebClientModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class __$$_HomeWebClientModelRecipeCopyWithImpl<$Res>
    extends _$HomeWebClientModelRecipeCopyWithImpl<$Res,
        _$_HomeWebClientModelRecipe>
    implements _$$_HomeWebClientModelRecipeCopyWith<$Res> {
  __$$_HomeWebClientModelRecipeCopyWithImpl(_$_HomeWebClientModelRecipe _value,
      $Res Function(_$_HomeWebClientModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayedAttributes = null,
    Object? difficulty = null,
    Object? ingredients = null,
    Object? yields = null,
    Object? tagIds = null,
    Object? cuisineIds = null,
    Object? imagePath = null,
  }) {
    return _then(_$_HomeWebClientModelRecipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as HomeWebClientModelDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelIngredient>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelYield>,
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisineIds: null == cuisineIds
          ? _value._cuisineIds
          : cuisineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelRecipe implements _HomeWebClientModelRecipe {
  const _$_HomeWebClientModelRecipe(
      {required this.id,
      required this.displayedAttributes,
      required this.difficulty,
      required final List<HomeWebClientModelIngredient> ingredients,
      required final List<HomeWebClientModelYield> yields,
      required final List<String> tagIds,
      required final List<String> cuisineIds,
      required this.imagePath})
      : _ingredients = ingredients,
        _yields = yields,
        _tagIds = tagIds,
        _cuisineIds = cuisineIds;

  @override
  final String id;
  @override
  final HomeWebClientModelDisplayedAttributes displayedAttributes;
  @override
  final int difficulty;
  final List<HomeWebClientModelIngredient> _ingredients;
  @override
  List<HomeWebClientModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HomeWebClientModelYield> _yields;
  @override
  List<HomeWebClientModelYield> get yields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<String> _tagIds;
  @override
  List<String> get tagIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  final List<String> _cuisineIds;
  @override
  List<String> get cuisineIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisineIds);
  }

  @override
  final Option<Uri> imagePath;

  @override
  String toString() {
    return 'HomeWebClientModelRecipe(id: $id, displayedAttributes: $displayedAttributes, difficulty: $difficulty, ingredients: $ingredients, yields: $yields, tagIds: $tagIds, cuisineIds: $cuisineIds, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelRecipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayedAttributes, displayedAttributes) ||
                other.displayedAttributes == displayedAttributes) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._yields, _yields) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            const DeepCollectionEquality()
                .equals(other._cuisineIds, _cuisineIds) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      displayedAttributes,
      difficulty,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_yields),
      const DeepCollectionEquality().hash(_tagIds),
      const DeepCollectionEquality().hash(_cuisineIds),
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelRecipeCopyWith<_$_HomeWebClientModelRecipe>
      get copyWith => __$$_HomeWebClientModelRecipeCopyWithImpl<
          _$_HomeWebClientModelRecipe>(this, _$identity);
}

abstract class _HomeWebClientModelRecipe implements HomeWebClientModelRecipe {
  const factory _HomeWebClientModelRecipe(
      {required final String id,
      required final HomeWebClientModelDisplayedAttributes displayedAttributes,
      required final int difficulty,
      required final List<HomeWebClientModelIngredient> ingredients,
      required final List<HomeWebClientModelYield> yields,
      required final List<String> tagIds,
      required final List<String> cuisineIds,
      required final Option<Uri> imagePath}) = _$_HomeWebClientModelRecipe;

  @override
  String get id;
  @override
  HomeWebClientModelDisplayedAttributes get displayedAttributes;
  @override
  int get difficulty;
  @override
  List<HomeWebClientModelIngredient> get ingredients;
  @override
  List<HomeWebClientModelYield> get yields;
  @override
  List<String> get tagIds;
  @override
  List<String> get cuisineIds;
  @override
  Option<Uri> get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelRecipeCopyWith<_$_HomeWebClientModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelDisplayedAttributes {
  String get name => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelDisplayedAttributesCopyWith<
          HomeWebClientModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelDisplayedAttributesCopyWith<$Res> {
  factory $HomeWebClientModelDisplayedAttributesCopyWith(
          HomeWebClientModelDisplayedAttributes value,
          $Res Function(HomeWebClientModelDisplayedAttributes) then) =
      _$HomeWebClientModelDisplayedAttributesCopyWithImpl<$Res,
          HomeWebClientModelDisplayedAttributes>;
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class _$HomeWebClientModelDisplayedAttributesCopyWithImpl<$Res,
        $Val extends HomeWebClientModelDisplayedAttributes>
    implements $HomeWebClientModelDisplayedAttributesCopyWith<$Res> {
  _$HomeWebClientModelDisplayedAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelDisplayedAttributesCopyWith<$Res>
    implements $HomeWebClientModelDisplayedAttributesCopyWith<$Res> {
  factory _$$_HomeWebClientModelDisplayedAttributesCopyWith(
          _$_HomeWebClientModelDisplayedAttributes value,
          $Res Function(_$_HomeWebClientModelDisplayedAttributes) then) =
      __$$_HomeWebClientModelDisplayedAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$_HomeWebClientModelDisplayedAttributesCopyWithImpl<$Res>
    extends _$HomeWebClientModelDisplayedAttributesCopyWithImpl<$Res,
        _$_HomeWebClientModelDisplayedAttributes>
    implements _$$_HomeWebClientModelDisplayedAttributesCopyWith<$Res> {
  __$$_HomeWebClientModelDisplayedAttributesCopyWithImpl(
      _$_HomeWebClientModelDisplayedAttributes _value,
      $Res Function(_$_HomeWebClientModelDisplayedAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$_HomeWebClientModelDisplayedAttributes(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelDisplayedAttributes
    implements _HomeWebClientModelDisplayedAttributes {
  const _$_HomeWebClientModelDisplayedAttributes(
      {required this.name,
      required this.headline,
      required this.description,
      required this.descriptionMarkdown});

  @override
  final String name;
  @override
  final String headline;
  @override
  final String description;
  @override
  final Option<String> descriptionMarkdown;

  @override
  String toString() {
    return 'HomeWebClientModelDisplayedAttributes(name: $name, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelDisplayedAttributes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionMarkdown, descriptionMarkdown) ||
                other.descriptionMarkdown == descriptionMarkdown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, headline, description, descriptionMarkdown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelDisplayedAttributesCopyWith<
          _$_HomeWebClientModelDisplayedAttributes>
      get copyWith => __$$_HomeWebClientModelDisplayedAttributesCopyWithImpl<
          _$_HomeWebClientModelDisplayedAttributes>(this, _$identity);
}

abstract class _HomeWebClientModelDisplayedAttributes
    implements HomeWebClientModelDisplayedAttributes {
  const factory _HomeWebClientModelDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$_HomeWebClientModelDisplayedAttributes;

  @override
  String get name;
  @override
  String get headline;
  @override
  String get description;
  @override
  Option<String> get descriptionMarkdown;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelDisplayedAttributesCopyWith<
          _$_HomeWebClientModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelIngredient {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelIngredientCopyWith<HomeWebClientModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelIngredientCopyWith<$Res> {
  factory $HomeWebClientModelIngredientCopyWith(
          HomeWebClientModelIngredient value,
          $Res Function(HomeWebClientModelIngredient) then) =
      _$HomeWebClientModelIngredientCopyWithImpl<$Res,
          HomeWebClientModelIngredient>;
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class _$HomeWebClientModelIngredientCopyWithImpl<$Res,
        $Val extends HomeWebClientModelIngredient>
    implements $HomeWebClientModelIngredientCopyWith<$Res> {
  _$HomeWebClientModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
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
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelIngredientCopyWith<$Res>
    implements $HomeWebClientModelIngredientCopyWith<$Res> {
  factory _$$_HomeWebClientModelIngredientCopyWith(
          _$_HomeWebClientModelIngredient value,
          $Res Function(_$_HomeWebClientModelIngredient) then) =
      __$$_HomeWebClientModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$_HomeWebClientModelIngredientCopyWithImpl<$Res>
    extends _$HomeWebClientModelIngredientCopyWithImpl<$Res,
        _$_HomeWebClientModelIngredient>
    implements _$$_HomeWebClientModelIngredientCopyWith<$Res> {
  __$$_HomeWebClientModelIngredientCopyWithImpl(
      _$_HomeWebClientModelIngredient _value,
      $Res Function(_$_HomeWebClientModelIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$_HomeWebClientModelIngredient(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelIngredient implements _HomeWebClientModelIngredient {
  const _$_HomeWebClientModelIngredient(
      {required this.id, required this.slug, required this.displayedName});

  @override
  final String id;
  @override
  final String slug;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'HomeWebClientModelIngredient(id: $id, slug: $slug, displayedName: $displayedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelIngredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, slug, displayedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelIngredientCopyWith<_$_HomeWebClientModelIngredient>
      get copyWith => __$$_HomeWebClientModelIngredientCopyWithImpl<
          _$_HomeWebClientModelIngredient>(this, _$identity);
}

abstract class _HomeWebClientModelIngredient
    implements HomeWebClientModelIngredient {
  const factory _HomeWebClientModelIngredient(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$_HomeWebClientModelIngredient;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelIngredientCopyWith<_$_HomeWebClientModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelPagination {
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelPaginationCopyWith<HomeWebClientModelPagination>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelPaginationCopyWith<$Res> {
  factory $HomeWebClientModelPaginationCopyWith(
          HomeWebClientModelPagination value,
          $Res Function(HomeWebClientModelPagination) then) =
      _$HomeWebClientModelPaginationCopyWithImpl<$Res,
          HomeWebClientModelPagination>;
  @useResult
  $Res call({int total});
}

/// @nodoc
class _$HomeWebClientModelPaginationCopyWithImpl<$Res,
        $Val extends HomeWebClientModelPagination>
    implements $HomeWebClientModelPaginationCopyWith<$Res> {
  _$HomeWebClientModelPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelPaginationCopyWith<$Res>
    implements $HomeWebClientModelPaginationCopyWith<$Res> {
  factory _$$_HomeWebClientModelPaginationCopyWith(
          _$_HomeWebClientModelPagination value,
          $Res Function(_$_HomeWebClientModelPagination) then) =
      __$$_HomeWebClientModelPaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total});
}

/// @nodoc
class __$$_HomeWebClientModelPaginationCopyWithImpl<$Res>
    extends _$HomeWebClientModelPaginationCopyWithImpl<$Res,
        _$_HomeWebClientModelPagination>
    implements _$$_HomeWebClientModelPaginationCopyWith<$Res> {
  __$$_HomeWebClientModelPaginationCopyWithImpl(
      _$_HomeWebClientModelPagination _value,
      $Res Function(_$_HomeWebClientModelPagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$_HomeWebClientModelPagination(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelPagination implements _HomeWebClientModelPagination {
  const _$_HomeWebClientModelPagination({required this.total});

  @override
  final int total;

  @override
  String toString() {
    return 'HomeWebClientModelPagination(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelPagination &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelPaginationCopyWith<_$_HomeWebClientModelPagination>
      get copyWith => __$$_HomeWebClientModelPaginationCopyWithImpl<
          _$_HomeWebClientModelPagination>(this, _$identity);
}

abstract class _HomeWebClientModelPagination
    implements HomeWebClientModelPagination {
  const factory _HomeWebClientModelPagination({required final int total}) =
      _$_HomeWebClientModelPagination;

  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelPaginationCopyWith<_$_HomeWebClientModelPagination>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelTag {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<int> get numberOfRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelTagCopyWith<HomeWebClientModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelTagCopyWith<$Res> {
  factory $HomeWebClientModelTagCopyWith(HomeWebClientModelTag value,
          $Res Function(HomeWebClientModelTag) then) =
      _$HomeWebClientModelTagCopyWithImpl<$Res, HomeWebClientModelTag>;
  @useResult
  $Res call(
      {String id,
      String type,
      String displayedName,
      Option<int> numberOfRecipes});
}

/// @nodoc
class _$HomeWebClientModelTagCopyWithImpl<$Res,
        $Val extends HomeWebClientModelTag>
    implements $HomeWebClientModelTagCopyWith<$Res> {
  _$HomeWebClientModelTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? displayedName = null,
    Object? numberOfRecipes = null,
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
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelTagCopyWith<$Res>
    implements $HomeWebClientModelTagCopyWith<$Res> {
  factory _$$_HomeWebClientModelTagCopyWith(_$_HomeWebClientModelTag value,
          $Res Function(_$_HomeWebClientModelTag) then) =
      __$$_HomeWebClientModelTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String displayedName,
      Option<int> numberOfRecipes});
}

/// @nodoc
class __$$_HomeWebClientModelTagCopyWithImpl<$Res>
    extends _$HomeWebClientModelTagCopyWithImpl<$Res, _$_HomeWebClientModelTag>
    implements _$$_HomeWebClientModelTagCopyWith<$Res> {
  __$$_HomeWebClientModelTagCopyWithImpl(_$_HomeWebClientModelTag _value,
      $Res Function(_$_HomeWebClientModelTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? displayedName = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_$_HomeWebClientModelTag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelTag implements _HomeWebClientModelTag {
  const _$_HomeWebClientModelTag(
      {required this.id,
      required this.type,
      required this.displayedName,
      required this.numberOfRecipes});

  @override
  final String id;
  @override
  final String type;
  @override
  final String displayedName;
  @override
  final Option<int> numberOfRecipes;

  @override
  String toString() {
    return 'HomeWebClientModelTag(id: $id, type: $type, displayedName: $displayedName, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.numberOfRecipes, numberOfRecipes) ||
                other.numberOfRecipes == numberOfRecipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, displayedName, numberOfRecipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelTagCopyWith<_$_HomeWebClientModelTag> get copyWith =>
      __$$_HomeWebClientModelTagCopyWithImpl<_$_HomeWebClientModelTag>(
          this, _$identity);
}

abstract class _HomeWebClientModelTag implements HomeWebClientModelTag {
  const factory _HomeWebClientModelTag(
      {required final String id,
      required final String type,
      required final String displayedName,
      required final Option<int> numberOfRecipes}) = _$_HomeWebClientModelTag;

  @override
  String get id;
  @override
  String get type;
  @override
  String get displayedName;
  @override
  Option<int> get numberOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelTagCopyWith<_$_HomeWebClientModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelCuisine {
  String get id => throw _privateConstructorUsedError;
  Option<Uri> get iconPath => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<String> get countryCode => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  Option<int> get numberOfRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelCuisineCopyWith<HomeWebClientModelCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelCuisineCopyWith<$Res> {
  factory $HomeWebClientModelCuisineCopyWith(HomeWebClientModelCuisine value,
          $Res Function(HomeWebClientModelCuisine) then) =
      _$HomeWebClientModelCuisineCopyWithImpl<$Res, HomeWebClientModelCuisine>;
  @useResult
  $Res call(
      {String id,
      Option<Uri> iconPath,
      String displayedName,
      Option<String> countryCode,
      String slug,
      Option<int> numberOfRecipes});
}

/// @nodoc
class _$HomeWebClientModelCuisineCopyWithImpl<$Res,
        $Val extends HomeWebClientModelCuisine>
    implements $HomeWebClientModelCuisineCopyWith<$Res> {
  _$HomeWebClientModelCuisineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? iconPath = null,
    Object? displayedName = null,
    Object? countryCode = null,
    Object? slug = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelCuisineCopyWith<$Res>
    implements $HomeWebClientModelCuisineCopyWith<$Res> {
  factory _$$_HomeWebClientModelCuisineCopyWith(
          _$_HomeWebClientModelCuisine value,
          $Res Function(_$_HomeWebClientModelCuisine) then) =
      __$$_HomeWebClientModelCuisineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Option<Uri> iconPath,
      String displayedName,
      Option<String> countryCode,
      String slug,
      Option<int> numberOfRecipes});
}

/// @nodoc
class __$$_HomeWebClientModelCuisineCopyWithImpl<$Res>
    extends _$HomeWebClientModelCuisineCopyWithImpl<$Res,
        _$_HomeWebClientModelCuisine>
    implements _$$_HomeWebClientModelCuisineCopyWith<$Res> {
  __$$_HomeWebClientModelCuisineCopyWithImpl(
      _$_HomeWebClientModelCuisine _value,
      $Res Function(_$_HomeWebClientModelCuisine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? iconPath = null,
    Object? displayedName = null,
    Object? countryCode = null,
    Object? slug = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_$_HomeWebClientModelCuisine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelCuisine implements _HomeWebClientModelCuisine {
  const _$_HomeWebClientModelCuisine(
      {required this.id,
      required this.iconPath,
      required this.displayedName,
      required this.countryCode,
      required this.slug,
      required this.numberOfRecipes});

  @override
  final String id;
  @override
  final Option<Uri> iconPath;
  @override
  final String displayedName;
  @override
  final Option<String> countryCode;
  @override
  final String slug;
  @override
  final Option<int> numberOfRecipes;

  @override
  String toString() {
    return 'HomeWebClientModelCuisine(id: $id, iconPath: $iconPath, displayedName: $displayedName, countryCode: $countryCode, slug: $slug, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelCuisine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.numberOfRecipes, numberOfRecipes) ||
                other.numberOfRecipes == numberOfRecipes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, iconPath, displayedName,
      countryCode, slug, numberOfRecipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelCuisineCopyWith<_$_HomeWebClientModelCuisine>
      get copyWith => __$$_HomeWebClientModelCuisineCopyWithImpl<
          _$_HomeWebClientModelCuisine>(this, _$identity);
}

abstract class _HomeWebClientModelCuisine implements HomeWebClientModelCuisine {
  const factory _HomeWebClientModelCuisine(
          {required final String id,
          required final Option<Uri> iconPath,
          required final String displayedName,
          required final Option<String> countryCode,
          required final String slug,
          required final Option<int> numberOfRecipes}) =
      _$_HomeWebClientModelCuisine;

  @override
  String get id;
  @override
  Option<Uri> get iconPath;
  @override
  String get displayedName;
  @override
  Option<String> get countryCode;
  @override
  String get slug;
  @override
  Option<int> get numberOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelCuisineCopyWith<_$_HomeWebClientModelCuisine>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelYield {
  int get yield => throw _privateConstructorUsedError;
  List<HomeWebClientModelYieldIngredient> get yieldIngredient =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelYieldCopyWith<HomeWebClientModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelYieldCopyWith<$Res> {
  factory $HomeWebClientModelYieldCopyWith(HomeWebClientModelYield value,
          $Res Function(HomeWebClientModelYield) then) =
      _$HomeWebClientModelYieldCopyWithImpl<$Res, HomeWebClientModelYield>;
  @useResult
  $Res call(
      {int yield, List<HomeWebClientModelYieldIngredient> yieldIngredient});
}

/// @nodoc
class _$HomeWebClientModelYieldCopyWithImpl<$Res,
        $Val extends HomeWebClientModelYield>
    implements $HomeWebClientModelYieldCopyWith<$Res> {
  _$HomeWebClientModelYieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yield = null,
    Object? yieldIngredient = null,
  }) {
    return _then(_value.copyWith(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
              as int,
      yieldIngredient: null == yieldIngredient
          ? _value.yieldIngredient
          : yieldIngredient // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelYieldIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelYieldCopyWith<$Res>
    implements $HomeWebClientModelYieldCopyWith<$Res> {
  factory _$$_HomeWebClientModelYieldCopyWith(_$_HomeWebClientModelYield value,
          $Res Function(_$_HomeWebClientModelYield) then) =
      __$$_HomeWebClientModelYieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int yield, List<HomeWebClientModelYieldIngredient> yieldIngredient});
}

/// @nodoc
class __$$_HomeWebClientModelYieldCopyWithImpl<$Res>
    extends _$HomeWebClientModelYieldCopyWithImpl<$Res,
        _$_HomeWebClientModelYield>
    implements _$$_HomeWebClientModelYieldCopyWith<$Res> {
  __$$_HomeWebClientModelYieldCopyWithImpl(_$_HomeWebClientModelYield _value,
      $Res Function(_$_HomeWebClientModelYield) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yield = null,
    Object? yieldIngredient = null,
  }) {
    return _then(_$_HomeWebClientModelYield(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
              as int,
      yieldIngredient: null == yieldIngredient
          ? _value._yieldIngredient
          : yieldIngredient // ignore: cast_nullable_to_non_nullable
              as List<HomeWebClientModelYieldIngredient>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelYield implements _HomeWebClientModelYield {
  const _$_HomeWebClientModelYield(
      {required this.yield,
      required final List<HomeWebClientModelYieldIngredient> yieldIngredient})
      : _yieldIngredient = yieldIngredient;

  @override
  final int yield;
  final List<HomeWebClientModelYieldIngredient> _yieldIngredient;
  @override
  List<HomeWebClientModelYieldIngredient> get yieldIngredient {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yieldIngredient);
  }

  @override
  String toString() {
    return 'HomeWebClientModelYield(yield: $yield, yieldIngredient: $yieldIngredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelYield &&
            (identical(other.yield, yield) || other.yield == yield) &&
            const DeepCollectionEquality()
                .equals(other._yieldIngredient, _yieldIngredient));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yield,
      const DeepCollectionEquality().hash(_yieldIngredient));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelYieldCopyWith<_$_HomeWebClientModelYield>
      get copyWith =>
          __$$_HomeWebClientModelYieldCopyWithImpl<_$_HomeWebClientModelYield>(
              this, _$identity);
}

abstract class _HomeWebClientModelYield implements HomeWebClientModelYield {
  const factory _HomeWebClientModelYield(
      {required final int yield,
      required final List<HomeWebClientModelYieldIngredient>
          yieldIngredient}) = _$_HomeWebClientModelYield;

  @override
  int get yield;
  @override
  List<HomeWebClientModelYieldIngredient> get yieldIngredient;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelYieldCopyWith<_$_HomeWebClientModelYield>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeWebClientModelYieldIngredient {
  String get id => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeWebClientModelYieldIngredientCopyWith<HomeWebClientModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWebClientModelYieldIngredientCopyWith<$Res> {
  factory $HomeWebClientModelYieldIngredientCopyWith(
          HomeWebClientModelYieldIngredient value,
          $Res Function(HomeWebClientModelYieldIngredient) then) =
      _$HomeWebClientModelYieldIngredientCopyWithImpl<$Res,
          HomeWebClientModelYieldIngredient>;
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class _$HomeWebClientModelYieldIngredientCopyWithImpl<$Res,
        $Val extends HomeWebClientModelYieldIngredient>
    implements $HomeWebClientModelYieldIngredientCopyWith<$Res> {
  _$HomeWebClientModelYieldIngredientCopyWithImpl(this._value, this._then);

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
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWebClientModelYieldIngredientCopyWith<$Res>
    implements $HomeWebClientModelYieldIngredientCopyWith<$Res> {
  factory _$$_HomeWebClientModelYieldIngredientCopyWith(
          _$_HomeWebClientModelYieldIngredient value,
          $Res Function(_$_HomeWebClientModelYieldIngredient) then) =
      __$$_HomeWebClientModelYieldIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class __$$_HomeWebClientModelYieldIngredientCopyWithImpl<$Res>
    extends _$HomeWebClientModelYieldIngredientCopyWithImpl<$Res,
        _$_HomeWebClientModelYieldIngredient>
    implements _$$_HomeWebClientModelYieldIngredientCopyWith<$Res> {
  __$$_HomeWebClientModelYieldIngredientCopyWithImpl(
      _$_HomeWebClientModelYieldIngredient _value,
      $Res Function(_$_HomeWebClientModelYieldIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_HomeWebClientModelYieldIngredient(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_HomeWebClientModelYieldIngredient
    implements _HomeWebClientModelYieldIngredient {
  const _$_HomeWebClientModelYieldIngredient(
      {required this.id, required this.amount, required this.unit});

  @override
  final String id;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'HomeWebClientModelYieldIngredient(id: $id, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWebClientModelYieldIngredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWebClientModelYieldIngredientCopyWith<
          _$_HomeWebClientModelYieldIngredient>
      get copyWith => __$$_HomeWebClientModelYieldIngredientCopyWithImpl<
          _$_HomeWebClientModelYieldIngredient>(this, _$identity);
}

abstract class _HomeWebClientModelYieldIngredient
    implements HomeWebClientModelYieldIngredient {
  const factory _HomeWebClientModelYieldIngredient(
          {required final String id,
          required final Option<double> amount,
          required final Option<String> unit}) =
      _$_HomeWebClientModelYieldIngredient;

  @override
  String get id;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWebClientModelYieldIngredientCopyWith<
          _$_HomeWebClientModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}
