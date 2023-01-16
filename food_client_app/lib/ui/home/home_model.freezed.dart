// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeModel {
  PagingController<int, HomeModelRecipe> get pagingController =>
      throw _privateConstructorUsedError;
  List<HomeModelFilterTag> get allTags => throw _privateConstructorUsedError;
  List<HomeModelFilterCuisine> get allCuisines =>
      throw _privateConstructorUsedError;
  List<Locale> get recipeLocales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {PagingController<int, HomeModelRecipe> pagingController,
      List<HomeModelFilterTag> allTags,
      List<HomeModelFilterCuisine> allCuisines,
      List<Locale> recipeLocales});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingController = null,
    Object? allTags = null,
    Object? allCuisines = null,
    Object? recipeLocales = null,
  }) {
    return _then(_value.copyWith(
      pagingController: null == pagingController
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, HomeModelRecipe>,
      allTags: null == allTags
          ? _value.allTags
          : allTags // ignore: cast_nullable_to_non_nullable
              as List<HomeModelFilterTag>,
      allCuisines: null == allCuisines
          ? _value.allCuisines
          : allCuisines // ignore: cast_nullable_to_non_nullable
              as List<HomeModelFilterCuisine>,
      recipeLocales: null == recipeLocales
          ? _value.recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingController<int, HomeModelRecipe> pagingController,
      List<HomeModelFilterTag> allTags,
      List<HomeModelFilterCuisine> allCuisines,
      List<Locale> recipeLocales});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingController = null,
    Object? allTags = null,
    Object? allCuisines = null,
    Object? recipeLocales = null,
  }) {
    return _then(_$_HomeModel(
      pagingController: null == pagingController
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, HomeModelRecipe>,
      allTags: null == allTags
          ? _value._allTags
          : allTags // ignore: cast_nullable_to_non_nullable
              as List<HomeModelFilterTag>,
      allCuisines: null == allCuisines
          ? _value._allCuisines
          : allCuisines // ignore: cast_nullable_to_non_nullable
              as List<HomeModelFilterCuisine>,
      recipeLocales: null == recipeLocales
          ? _value._recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// @nodoc

class _$_HomeModel implements _HomeModel {
  const _$_HomeModel(
      {required this.pagingController,
      required final List<HomeModelFilterTag> allTags,
      required final List<HomeModelFilterCuisine> allCuisines,
      required final List<Locale> recipeLocales})
      : _allTags = allTags,
        _allCuisines = allCuisines,
        _recipeLocales = recipeLocales;

  @override
  final PagingController<int, HomeModelRecipe> pagingController;
  final List<HomeModelFilterTag> _allTags;
  @override
  List<HomeModelFilterTag> get allTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTags);
  }

  final List<HomeModelFilterCuisine> _allCuisines;
  @override
  List<HomeModelFilterCuisine> get allCuisines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCuisines);
  }

  final List<Locale> _recipeLocales;
  @override
  List<Locale> get recipeLocales {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeLocales);
  }

  @override
  String toString() {
    return 'HomeModel(pagingController: $pagingController, allTags: $allTags, allCuisines: $allCuisines, recipeLocales: $recipeLocales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            (identical(other.pagingController, pagingController) ||
                other.pagingController == pagingController) &&
            const DeepCollectionEquality().equals(other._allTags, _allTags) &&
            const DeepCollectionEquality()
                .equals(other._allCuisines, _allCuisines) &&
            const DeepCollectionEquality()
                .equals(other._recipeLocales, _recipeLocales));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pagingController,
      const DeepCollectionEquality().hash(_allTags),
      const DeepCollectionEquality().hash(_allCuisines),
      const DeepCollectionEquality().hash(_recipeLocales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final PagingController<int, HomeModelRecipe> pagingController,
      required final List<HomeModelFilterTag> allTags,
      required final List<HomeModelFilterCuisine> allCuisines,
      required final List<Locale> recipeLocales}) = _$_HomeModel;

  @override
  PagingController<int, HomeModelRecipe> get pagingController;
  @override
  List<HomeModelFilterTag> get allTags;
  @override
  List<HomeModelFilterCuisine> get allCuisines;
  @override
  List<Locale> get recipeLocales;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelPagination {
  bool get isCurrentlyFetching => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get totalAmountOfRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelPaginationCopyWith<HomeModelPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelPaginationCopyWith<$Res> {
  factory $HomeModelPaginationCopyWith(
          HomeModelPagination value, $Res Function(HomeModelPagination) then) =
      _$HomeModelPaginationCopyWithImpl<$Res, HomeModelPagination>;
  @useResult
  $Res call({bool isCurrentlyFetching, int skip, int totalAmountOfRecipes});
}

/// @nodoc
class _$HomeModelPaginationCopyWithImpl<$Res, $Val extends HomeModelPagination>
    implements $HomeModelPaginationCopyWith<$Res> {
  _$HomeModelPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCurrentlyFetching = null,
    Object? skip = null,
    Object? totalAmountOfRecipes = null,
  }) {
    return _then(_value.copyWith(
      isCurrentlyFetching: null == isCurrentlyFetching
          ? _value.isCurrentlyFetching
          : isCurrentlyFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmountOfRecipes: null == totalAmountOfRecipes
          ? _value.totalAmountOfRecipes
          : totalAmountOfRecipes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelPaginationCopyWith<$Res>
    implements $HomeModelPaginationCopyWith<$Res> {
  factory _$$_HomeModelPaginationCopyWith(_$_HomeModelPagination value,
          $Res Function(_$_HomeModelPagination) then) =
      __$$_HomeModelPaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCurrentlyFetching, int skip, int totalAmountOfRecipes});
}

/// @nodoc
class __$$_HomeModelPaginationCopyWithImpl<$Res>
    extends _$HomeModelPaginationCopyWithImpl<$Res, _$_HomeModelPagination>
    implements _$$_HomeModelPaginationCopyWith<$Res> {
  __$$_HomeModelPaginationCopyWithImpl(_$_HomeModelPagination _value,
      $Res Function(_$_HomeModelPagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCurrentlyFetching = null,
    Object? skip = null,
    Object? totalAmountOfRecipes = null,
  }) {
    return _then(_$_HomeModelPagination(
      isCurrentlyFetching: null == isCurrentlyFetching
          ? _value.isCurrentlyFetching
          : isCurrentlyFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmountOfRecipes: null == totalAmountOfRecipes
          ? _value.totalAmountOfRecipes
          : totalAmountOfRecipes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeModelPagination implements _HomeModelPagination {
  const _$_HomeModelPagination(
      {required this.isCurrentlyFetching,
      required this.skip,
      required this.totalAmountOfRecipes});

  @override
  final bool isCurrentlyFetching;
  @override
  final int skip;
  @override
  final int totalAmountOfRecipes;

  @override
  String toString() {
    return 'HomeModelPagination(isCurrentlyFetching: $isCurrentlyFetching, skip: $skip, totalAmountOfRecipes: $totalAmountOfRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelPagination &&
            (identical(other.isCurrentlyFetching, isCurrentlyFetching) ||
                other.isCurrentlyFetching == isCurrentlyFetching) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.totalAmountOfRecipes, totalAmountOfRecipes) ||
                other.totalAmountOfRecipes == totalAmountOfRecipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isCurrentlyFetching, skip, totalAmountOfRecipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelPaginationCopyWith<_$_HomeModelPagination> get copyWith =>
      __$$_HomeModelPaginationCopyWithImpl<_$_HomeModelPagination>(
          this, _$identity);
}

abstract class _HomeModelPagination implements HomeModelPagination {
  const factory _HomeModelPagination(
      {required final bool isCurrentlyFetching,
      required final int skip,
      required final int totalAmountOfRecipes}) = _$_HomeModelPagination;

  @override
  bool get isCurrentlyFetching;
  @override
  int get skip;
  @override
  int get totalAmountOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelPaginationCopyWith<_$_HomeModelPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelRecipe {
  String get id => throw _privateConstructorUsedError;
  HomeModelDisplayedAttributes get displayedAttributes =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  List<HomeModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  List<HomeModelYield> get yields => throw _privateConstructorUsedError;
  List<String> get tagIds => throw _privateConstructorUsedError;
  List<String> get cuisineIds => throw _privateConstructorUsedError;
  Uri get imageUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelRecipeCopyWith<HomeModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelRecipeCopyWith<$Res> {
  factory $HomeModelRecipeCopyWith(
          HomeModelRecipe value, $Res Function(HomeModelRecipe) then) =
      _$HomeModelRecipeCopyWithImpl<$Res, HomeModelRecipe>;
  @useResult
  $Res call(
      {String id,
      HomeModelDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeModelIngredient> ingredients,
      List<HomeModelYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Uri imageUri});

  $HomeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class _$HomeModelRecipeCopyWithImpl<$Res, $Val extends HomeModelRecipe>
    implements $HomeModelRecipeCopyWith<$Res> {
  _$HomeModelRecipeCopyWithImpl(this._value, this._then);

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
    Object? imageUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as HomeModelDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeModelIngredient>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeModelYield>,
      tagIds: null == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisineIds: null == cuisineIds
          ? _value.cuisineIds
          : cuisineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes {
    return $HomeModelDisplayedAttributesCopyWith<$Res>(
        _value.displayedAttributes, (value) {
      return _then(_value.copyWith(displayedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeModelRecipeCopyWith<$Res>
    implements $HomeModelRecipeCopyWith<$Res> {
  factory _$$_HomeModelRecipeCopyWith(
          _$_HomeModelRecipe value, $Res Function(_$_HomeModelRecipe) then) =
      __$$_HomeModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      HomeModelDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeModelIngredient> ingredients,
      List<HomeModelYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Uri imageUri});

  @override
  $HomeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class __$$_HomeModelRecipeCopyWithImpl<$Res>
    extends _$HomeModelRecipeCopyWithImpl<$Res, _$_HomeModelRecipe>
    implements _$$_HomeModelRecipeCopyWith<$Res> {
  __$$_HomeModelRecipeCopyWithImpl(
      _$_HomeModelRecipe _value, $Res Function(_$_HomeModelRecipe) _then)
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
    Object? imageUri = null,
  }) {
    return _then(_$_HomeModelRecipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as HomeModelDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeModelIngredient>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeModelYield>,
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cuisineIds: null == cuisineIds
          ? _value._cuisineIds
          : cuisineIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_HomeModelRecipe implements _HomeModelRecipe {
  const _$_HomeModelRecipe(
      {required this.id,
      required this.displayedAttributes,
      required this.difficulty,
      required final List<HomeModelIngredient> ingredients,
      required final List<HomeModelYield> yields,
      required final List<String> tagIds,
      required final List<String> cuisineIds,
      required this.imageUri})
      : _ingredients = ingredients,
        _yields = yields,
        _tagIds = tagIds,
        _cuisineIds = cuisineIds;

  @override
  final String id;
  @override
  final HomeModelDisplayedAttributes displayedAttributes;
  @override
  final int difficulty;
  final List<HomeModelIngredient> _ingredients;
  @override
  List<HomeModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HomeModelYield> _yields;
  @override
  List<HomeModelYield> get yields {
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
  final Uri imageUri;

  @override
  String toString() {
    return 'HomeModelRecipe(id: $id, displayedAttributes: $displayedAttributes, difficulty: $difficulty, ingredients: $ingredients, yields: $yields, tagIds: $tagIds, cuisineIds: $cuisineIds, imageUri: $imageUri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelRecipe &&
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
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri));
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
      imageUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelRecipeCopyWith<_$_HomeModelRecipe> get copyWith =>
      __$$_HomeModelRecipeCopyWithImpl<_$_HomeModelRecipe>(this, _$identity);
}

abstract class _HomeModelRecipe implements HomeModelRecipe {
  const factory _HomeModelRecipe(
      {required final String id,
      required final HomeModelDisplayedAttributes displayedAttributes,
      required final int difficulty,
      required final List<HomeModelIngredient> ingredients,
      required final List<HomeModelYield> yields,
      required final List<String> tagIds,
      required final List<String> cuisineIds,
      required final Uri imageUri}) = _$_HomeModelRecipe;

  @override
  String get id;
  @override
  HomeModelDisplayedAttributes get displayedAttributes;
  @override
  int get difficulty;
  @override
  List<HomeModelIngredient> get ingredients;
  @override
  List<HomeModelYield> get yields;
  @override
  List<String> get tagIds;
  @override
  List<String> get cuisineIds;
  @override
  Uri get imageUri;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelRecipeCopyWith<_$_HomeModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelDisplayedAttributes {
  String get name => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelDisplayedAttributesCopyWith<HomeModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelDisplayedAttributesCopyWith<$Res> {
  factory $HomeModelDisplayedAttributesCopyWith(
          HomeModelDisplayedAttributes value,
          $Res Function(HomeModelDisplayedAttributes) then) =
      _$HomeModelDisplayedAttributesCopyWithImpl<$Res,
          HomeModelDisplayedAttributes>;
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class _$HomeModelDisplayedAttributesCopyWithImpl<$Res,
        $Val extends HomeModelDisplayedAttributes>
    implements $HomeModelDisplayedAttributesCopyWith<$Res> {
  _$HomeModelDisplayedAttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeModelDisplayedAttributesCopyWith<$Res>
    implements $HomeModelDisplayedAttributesCopyWith<$Res> {
  factory _$$_HomeModelDisplayedAttributesCopyWith(
          _$_HomeModelDisplayedAttributes value,
          $Res Function(_$_HomeModelDisplayedAttributes) then) =
      __$$_HomeModelDisplayedAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$_HomeModelDisplayedAttributesCopyWithImpl<$Res>
    extends _$HomeModelDisplayedAttributesCopyWithImpl<$Res,
        _$_HomeModelDisplayedAttributes>
    implements _$$_HomeModelDisplayedAttributesCopyWith<$Res> {
  __$$_HomeModelDisplayedAttributesCopyWithImpl(
      _$_HomeModelDisplayedAttributes _value,
      $Res Function(_$_HomeModelDisplayedAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$_HomeModelDisplayedAttributes(
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

class _$_HomeModelDisplayedAttributes implements _HomeModelDisplayedAttributes {
  const _$_HomeModelDisplayedAttributes(
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
    return 'HomeModelDisplayedAttributes(name: $name, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelDisplayedAttributes &&
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
  _$$_HomeModelDisplayedAttributesCopyWith<_$_HomeModelDisplayedAttributes>
      get copyWith => __$$_HomeModelDisplayedAttributesCopyWithImpl<
          _$_HomeModelDisplayedAttributes>(this, _$identity);
}

abstract class _HomeModelDisplayedAttributes
    implements HomeModelDisplayedAttributes {
  const factory _HomeModelDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$_HomeModelDisplayedAttributes;

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
  _$$_HomeModelDisplayedAttributesCopyWith<_$_HomeModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelIngredient {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelIngredientCopyWith<HomeModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelIngredientCopyWith<$Res> {
  factory $HomeModelIngredientCopyWith(
          HomeModelIngredient value, $Res Function(HomeModelIngredient) then) =
      _$HomeModelIngredientCopyWithImpl<$Res, HomeModelIngredient>;
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class _$HomeModelIngredientCopyWithImpl<$Res, $Val extends HomeModelIngredient>
    implements $HomeModelIngredientCopyWith<$Res> {
  _$HomeModelIngredientCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeModelIngredientCopyWith<$Res>
    implements $HomeModelIngredientCopyWith<$Res> {
  factory _$$_HomeModelIngredientCopyWith(_$_HomeModelIngredient value,
          $Res Function(_$_HomeModelIngredient) then) =
      __$$_HomeModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$_HomeModelIngredientCopyWithImpl<$Res>
    extends _$HomeModelIngredientCopyWithImpl<$Res, _$_HomeModelIngredient>
    implements _$$_HomeModelIngredientCopyWith<$Res> {
  __$$_HomeModelIngredientCopyWithImpl(_$_HomeModelIngredient _value,
      $Res Function(_$_HomeModelIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$_HomeModelIngredient(
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

class _$_HomeModelIngredient implements _HomeModelIngredient {
  const _$_HomeModelIngredient(
      {required this.id, required this.slug, required this.displayedName});

  @override
  final String id;
  @override
  final String slug;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'HomeModelIngredient(id: $id, slug: $slug, displayedName: $displayedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelIngredient &&
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
  _$$_HomeModelIngredientCopyWith<_$_HomeModelIngredient> get copyWith =>
      __$$_HomeModelIngredientCopyWithImpl<_$_HomeModelIngredient>(
          this, _$identity);
}

abstract class _HomeModelIngredient implements HomeModelIngredient {
  const factory _HomeModelIngredient(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$_HomeModelIngredient;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelIngredientCopyWith<_$_HomeModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelFilter {
  String get id => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  Option<int> get numberOfRecipes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)
        tag,
    required TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)
        cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult? Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelFilterTag value) tag,
    required TResult Function(HomeModelFilterCuisine value) cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelFilterTag value)? tag,
    TResult? Function(HomeModelFilterCuisine value)? cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelFilterTag value)? tag,
    TResult Function(HomeModelFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelFilterCopyWith<HomeModelFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelFilterCopyWith<$Res> {
  factory $HomeModelFilterCopyWith(
          HomeModelFilter value, $Res Function(HomeModelFilter) then) =
      _$HomeModelFilterCopyWithImpl<$Res, HomeModelFilter>;
  @useResult
  $Res call(
      {String id,
      String displayedName,
      bool isSelected,
      Option<int> numberOfRecipes});
}

/// @nodoc
class _$HomeModelFilterCopyWithImpl<$Res, $Val extends HomeModelFilter>
    implements $HomeModelFilterCopyWith<$Res> {
  _$HomeModelFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayedName = null,
    Object? isSelected = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelFilterTagCopyWith<$Res>
    implements $HomeModelFilterCopyWith<$Res> {
  factory _$$HomeModelFilterTagCopyWith(_$HomeModelFilterTag value,
          $Res Function(_$HomeModelFilterTag) then) =
      __$$HomeModelFilterTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayedName,
      String type,
      bool isSelected,
      Option<int> numberOfRecipes});
}

/// @nodoc
class __$$HomeModelFilterTagCopyWithImpl<$Res>
    extends _$HomeModelFilterCopyWithImpl<$Res, _$HomeModelFilterTag>
    implements _$$HomeModelFilterTagCopyWith<$Res> {
  __$$HomeModelFilterTagCopyWithImpl(
      _$HomeModelFilterTag _value, $Res Function(_$HomeModelFilterTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayedName = null,
    Object? type = null,
    Object? isSelected = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_$HomeModelFilterTag(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$HomeModelFilterTag implements HomeModelFilterTag {
  const _$HomeModelFilterTag(
      {required this.id,
      required this.displayedName,
      required this.type,
      required this.isSelected,
      required this.numberOfRecipes});

  @override
  final String id;
  @override
  final String displayedName;
  @override
  final String type;
  @override
  final bool isSelected;
  @override
  final Option<int> numberOfRecipes;

  @override
  String toString() {
    return 'HomeModelFilter.tag(id: $id, displayedName: $displayedName, type: $type, isSelected: $isSelected, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelFilterTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.numberOfRecipes, numberOfRecipes) ||
                other.numberOfRecipes == numberOfRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, displayedName, type, isSelected, numberOfRecipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelFilterTagCopyWith<_$HomeModelFilterTag> get copyWith =>
      __$$HomeModelFilterTagCopyWithImpl<_$HomeModelFilterTag>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)
        tag,
    required TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)
        cuisine,
  }) {
    return tag(id, displayedName, type, isSelected, numberOfRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult? Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
  }) {
    return tag?.call(id, displayedName, type, isSelected, numberOfRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
    required TResult orElse(),
  }) {
    if (tag != null) {
      return tag(id, displayedName, type, isSelected, numberOfRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelFilterTag value) tag,
    required TResult Function(HomeModelFilterCuisine value) cuisine,
  }) {
    return tag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelFilterTag value)? tag,
    TResult? Function(HomeModelFilterCuisine value)? cuisine,
  }) {
    return tag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelFilterTag value)? tag,
    TResult Function(HomeModelFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) {
    if (tag != null) {
      return tag(this);
    }
    return orElse();
  }
}

abstract class HomeModelFilterTag implements HomeModelFilter {
  const factory HomeModelFilterTag(
      {required final String id,
      required final String displayedName,
      required final String type,
      required final bool isSelected,
      required final Option<int> numberOfRecipes}) = _$HomeModelFilterTag;

  @override
  String get id;
  @override
  String get displayedName;
  String get type;
  @override
  bool get isSelected;
  @override
  Option<int> get numberOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelFilterTagCopyWith<_$HomeModelFilterTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeModelFilterCuisineCopyWith<$Res>
    implements $HomeModelFilterCopyWith<$Res> {
  factory _$$HomeModelFilterCuisineCopyWith(_$HomeModelFilterCuisine value,
          $Res Function(_$HomeModelFilterCuisine) then) =
      __$$HomeModelFilterCuisineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayedName,
      String slug,
      Option<String> countryCode,
      bool isSelected,
      Option<int> numberOfRecipes});
}

/// @nodoc
class __$$HomeModelFilterCuisineCopyWithImpl<$Res>
    extends _$HomeModelFilterCopyWithImpl<$Res, _$HomeModelFilterCuisine>
    implements _$$HomeModelFilterCuisineCopyWith<$Res> {
  __$$HomeModelFilterCuisineCopyWithImpl(_$HomeModelFilterCuisine _value,
      $Res Function(_$HomeModelFilterCuisine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayedName = null,
    Object? slug = null,
    Object? countryCode = null,
    Object? isSelected = null,
    Object? numberOfRecipes = null,
  }) {
    return _then(_$HomeModelFilterCuisine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfRecipes: null == numberOfRecipes
          ? _value.numberOfRecipes
          : numberOfRecipes // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$HomeModelFilterCuisine implements HomeModelFilterCuisine {
  const _$HomeModelFilterCuisine(
      {required this.id,
      required this.displayedName,
      required this.slug,
      required this.countryCode,
      required this.isSelected,
      required this.numberOfRecipes});

  @override
  final String id;
  @override
  final String displayedName;
  @override
  final String slug;
  @override
  final Option<String> countryCode;
  @override
  final bool isSelected;
  @override
  final Option<int> numberOfRecipes;

  @override
  String toString() {
    return 'HomeModelFilter.cuisine(id: $id, displayedName: $displayedName, slug: $slug, countryCode: $countryCode, isSelected: $isSelected, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelFilterCuisine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.numberOfRecipes, numberOfRecipes) ||
                other.numberOfRecipes == numberOfRecipes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, displayedName, slug,
      countryCode, isSelected, numberOfRecipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelFilterCuisineCopyWith<_$HomeModelFilterCuisine> get copyWith =>
      __$$HomeModelFilterCuisineCopyWithImpl<_$HomeModelFilterCuisine>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)
        tag,
    required TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)
        cuisine,
  }) {
    return cuisine(
        id, displayedName, slug, countryCode, isSelected, numberOfRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult? Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
  }) {
    return cuisine?.call(
        id, displayedName, slug, countryCode, isSelected, numberOfRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String displayedName, String type,
            bool isSelected, Option<int> numberOfRecipes)?
        tag,
    TResult Function(
            String id,
            String displayedName,
            String slug,
            Option<String> countryCode,
            bool isSelected,
            Option<int> numberOfRecipes)?
        cuisine,
    required TResult orElse(),
  }) {
    if (cuisine != null) {
      return cuisine(
          id, displayedName, slug, countryCode, isSelected, numberOfRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelFilterTag value) tag,
    required TResult Function(HomeModelFilterCuisine value) cuisine,
  }) {
    return cuisine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelFilterTag value)? tag,
    TResult? Function(HomeModelFilterCuisine value)? cuisine,
  }) {
    return cuisine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelFilterTag value)? tag,
    TResult Function(HomeModelFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) {
    if (cuisine != null) {
      return cuisine(this);
    }
    return orElse();
  }
}

abstract class HomeModelFilterCuisine implements HomeModelFilter {
  const factory HomeModelFilterCuisine(
      {required final String id,
      required final String displayedName,
      required final String slug,
      required final Option<String> countryCode,
      required final bool isSelected,
      required final Option<int> numberOfRecipes}) = _$HomeModelFilterCuisine;

  @override
  String get id;
  @override
  String get displayedName;
  String get slug;
  Option<String> get countryCode;
  @override
  bool get isSelected;
  @override
  Option<int> get numberOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelFilterCuisineCopyWith<_$HomeModelFilterCuisine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelYield {
  int get yield => throw _privateConstructorUsedError;
  List<HomeModelYieldIngredient> get yieldIngredient =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelYieldCopyWith<HomeModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelYieldCopyWith<$Res> {
  factory $HomeModelYieldCopyWith(
          HomeModelYield value, $Res Function(HomeModelYield) then) =
      _$HomeModelYieldCopyWithImpl<$Res, HomeModelYield>;
  @useResult
  $Res call({int yield, List<HomeModelYieldIngredient> yieldIngredient});
}

/// @nodoc
class _$HomeModelYieldCopyWithImpl<$Res, $Val extends HomeModelYield>
    implements $HomeModelYieldCopyWith<$Res> {
  _$HomeModelYieldCopyWithImpl(this._value, this._then);

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
              as List<HomeModelYieldIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelYieldCopyWith<$Res>
    implements $HomeModelYieldCopyWith<$Res> {
  factory _$$_HomeModelYieldCopyWith(
          _$_HomeModelYield value, $Res Function(_$_HomeModelYield) then) =
      __$$_HomeModelYieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int yield, List<HomeModelYieldIngredient> yieldIngredient});
}

/// @nodoc
class __$$_HomeModelYieldCopyWithImpl<$Res>
    extends _$HomeModelYieldCopyWithImpl<$Res, _$_HomeModelYield>
    implements _$$_HomeModelYieldCopyWith<$Res> {
  __$$_HomeModelYieldCopyWithImpl(
      _$_HomeModelYield _value, $Res Function(_$_HomeModelYield) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yield = null,
    Object? yieldIngredient = null,
  }) {
    return _then(_$_HomeModelYield(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
              as int,
      yieldIngredient: null == yieldIngredient
          ? _value._yieldIngredient
          : yieldIngredient // ignore: cast_nullable_to_non_nullable
              as List<HomeModelYieldIngredient>,
    ));
  }
}

/// @nodoc

class _$_HomeModelYield implements _HomeModelYield {
  const _$_HomeModelYield(
      {required this.yield,
      required final List<HomeModelYieldIngredient> yieldIngredient})
      : _yieldIngredient = yieldIngredient;

  @override
  final int yield;
  final List<HomeModelYieldIngredient> _yieldIngredient;
  @override
  List<HomeModelYieldIngredient> get yieldIngredient {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yieldIngredient);
  }

  @override
  String toString() {
    return 'HomeModelYield(yield: $yield, yieldIngredient: $yieldIngredient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelYield &&
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
  _$$_HomeModelYieldCopyWith<_$_HomeModelYield> get copyWith =>
      __$$_HomeModelYieldCopyWithImpl<_$_HomeModelYield>(this, _$identity);
}

abstract class _HomeModelYield implements HomeModelYield {
  const factory _HomeModelYield(
          {required final int yield,
          required final List<HomeModelYieldIngredient> yieldIngredient}) =
      _$_HomeModelYield;

  @override
  int get yield;
  @override
  List<HomeModelYieldIngredient> get yieldIngredient;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelYieldCopyWith<_$_HomeModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelYieldIngredient {
  String get id => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelYieldIngredientCopyWith<HomeModelYieldIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelYieldIngredientCopyWith<$Res> {
  factory $HomeModelYieldIngredientCopyWith(HomeModelYieldIngredient value,
          $Res Function(HomeModelYieldIngredient) then) =
      _$HomeModelYieldIngredientCopyWithImpl<$Res, HomeModelYieldIngredient>;
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class _$HomeModelYieldIngredientCopyWithImpl<$Res,
        $Val extends HomeModelYieldIngredient>
    implements $HomeModelYieldIngredientCopyWith<$Res> {
  _$HomeModelYieldIngredientCopyWithImpl(this._value, this._then);

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
abstract class _$$_HomeModelYieldIngredientCopyWith<$Res>
    implements $HomeModelYieldIngredientCopyWith<$Res> {
  factory _$$_HomeModelYieldIngredientCopyWith(
          _$_HomeModelYieldIngredient value,
          $Res Function(_$_HomeModelYieldIngredient) then) =
      __$$_HomeModelYieldIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class __$$_HomeModelYieldIngredientCopyWithImpl<$Res>
    extends _$HomeModelYieldIngredientCopyWithImpl<$Res,
        _$_HomeModelYieldIngredient>
    implements _$$_HomeModelYieldIngredientCopyWith<$Res> {
  __$$_HomeModelYieldIngredientCopyWithImpl(_$_HomeModelYieldIngredient _value,
      $Res Function(_$_HomeModelYieldIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_HomeModelYieldIngredient(
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

class _$_HomeModelYieldIngredient implements _HomeModelYieldIngredient {
  const _$_HomeModelYieldIngredient(
      {required this.id, required this.amount, required this.unit});

  @override
  final String id;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'HomeModelYieldIngredient(id: $id, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModelYieldIngredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelYieldIngredientCopyWith<_$_HomeModelYieldIngredient>
      get copyWith => __$$_HomeModelYieldIngredientCopyWithImpl<
          _$_HomeModelYieldIngredient>(this, _$identity);
}

abstract class _HomeModelYieldIngredient implements HomeModelYieldIngredient {
  const factory _HomeModelYieldIngredient(
      {required final String id,
      required final Option<double> amount,
      required final Option<String> unit}) = _$_HomeModelYieldIngredient;

  @override
  String get id;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelYieldIngredientCopyWith<_$_HomeModelYieldIngredient>
      get copyWith => throw _privateConstructorUsedError;
}
