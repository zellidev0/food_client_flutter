// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeModel {
  PagingController<int, HomeModelRecipe> get paginationController =>
      throw _privateConstructorUsedError;
  ViewState<List<HomeModelFilter>> get availableFilters =>
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
      {PagingController<int, HomeModelRecipe> paginationController,
      ViewState<List<HomeModelFilter>> availableFilters,
      List<Locale> recipeLocales});

  $ViewStateCopyWith<List<HomeModelFilter>, $Res> get availableFilters;
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
    Object? paginationController = null,
    Object? availableFilters = null,
    Object? recipeLocales = null,
  }) {
    return _then(_value.copyWith(
      paginationController: null == paginationController
          ? _value.paginationController
          : paginationController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, HomeModelRecipe>,
      availableFilters: null == availableFilters
          ? _value.availableFilters
          : availableFilters // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HomeModelFilter>>,
      recipeLocales: null == recipeLocales
          ? _value.recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<HomeModelFilter>, $Res> get availableFilters {
    return $ViewStateCopyWith<List<HomeModelFilter>, $Res>(
        _value.availableFilters, (value) {
      return _then(_value.copyWith(availableFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingController<int, HomeModelRecipe> paginationController,
      ViewState<List<HomeModelFilter>> availableFilters,
      List<Locale> recipeLocales});

  @override
  $ViewStateCopyWith<List<HomeModelFilter>, $Res> get availableFilters;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationController = null,
    Object? availableFilters = null,
    Object? recipeLocales = null,
  }) {
    return _then(_$HomeModelImpl(
      paginationController: null == paginationController
          ? _value.paginationController
          : paginationController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, HomeModelRecipe>,
      availableFilters: null == availableFilters
          ? _value.availableFilters
          : availableFilters // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HomeModelFilter>>,
      recipeLocales: null == recipeLocales
          ? _value._recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// @nodoc

class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {required this.paginationController,
      required this.availableFilters,
      required final List<Locale> recipeLocales})
      : _recipeLocales = recipeLocales;

  @override
  final PagingController<int, HomeModelRecipe> paginationController;
  @override
  final ViewState<List<HomeModelFilter>> availableFilters;
  final List<Locale> _recipeLocales;
  @override
  List<Locale> get recipeLocales {
    if (_recipeLocales is EqualUnmodifiableListView) return _recipeLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeLocales);
  }

  @override
  String toString() {
    return 'HomeModel(paginationController: $paginationController, availableFilters: $availableFilters, recipeLocales: $recipeLocales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.paginationController, paginationController) ||
                other.paginationController == paginationController) &&
            (identical(other.availableFilters, availableFilters) ||
                other.availableFilters == availableFilters) &&
            const DeepCollectionEquality()
                .equals(other._recipeLocales, _recipeLocales));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paginationController,
      availableFilters, const DeepCollectionEquality().hash(_recipeLocales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final PagingController<int, HomeModelRecipe>
          paginationController,
      required final ViewState<List<HomeModelFilter>> availableFilters,
      required final List<Locale> recipeLocales}) = _$HomeModelImpl;

  @override
  PagingController<int, HomeModelRecipe> get paginationController;
  @override
  ViewState<List<HomeModelFilter>> get availableFilters;
  @override
  List<Locale> get recipeLocales;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
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
abstract class _$$HomeModelPaginationImplCopyWith<$Res>
    implements $HomeModelPaginationCopyWith<$Res> {
  factory _$$HomeModelPaginationImplCopyWith(_$HomeModelPaginationImpl value,
          $Res Function(_$HomeModelPaginationImpl) then) =
      __$$HomeModelPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCurrentlyFetching, int skip, int totalAmountOfRecipes});
}

/// @nodoc
class __$$HomeModelPaginationImplCopyWithImpl<$Res>
    extends _$HomeModelPaginationCopyWithImpl<$Res, _$HomeModelPaginationImpl>
    implements _$$HomeModelPaginationImplCopyWith<$Res> {
  __$$HomeModelPaginationImplCopyWithImpl(_$HomeModelPaginationImpl _value,
      $Res Function(_$HomeModelPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCurrentlyFetching = null,
    Object? skip = null,
    Object? totalAmountOfRecipes = null,
  }) {
    return _then(_$HomeModelPaginationImpl(
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

class _$HomeModelPaginationImpl implements _HomeModelPagination {
  const _$HomeModelPaginationImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelPaginationImpl &&
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
  _$$HomeModelPaginationImplCopyWith<_$HomeModelPaginationImpl> get copyWith =>
      __$$HomeModelPaginationImplCopyWithImpl<_$HomeModelPaginationImpl>(
          this, _$identity);
}

abstract class _HomeModelPagination implements HomeModelPagination {
  const factory _HomeModelPagination(
      {required final bool isCurrentlyFetching,
      required final int skip,
      required final int totalAmountOfRecipes}) = _$HomeModelPaginationImpl;

  @override
  bool get isCurrentlyFetching;
  @override
  int get skip;
  @override
  int get totalAmountOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelPaginationImplCopyWith<_$HomeModelPaginationImpl> get copyWith =>
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
abstract class _$$HomeModelRecipeImplCopyWith<$Res>
    implements $HomeModelRecipeCopyWith<$Res> {
  factory _$$HomeModelRecipeImplCopyWith(_$HomeModelRecipeImpl value,
          $Res Function(_$HomeModelRecipeImpl) then) =
      __$$HomeModelRecipeImplCopyWithImpl<$Res>;
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
class __$$HomeModelRecipeImplCopyWithImpl<$Res>
    extends _$HomeModelRecipeCopyWithImpl<$Res, _$HomeModelRecipeImpl>
    implements _$$HomeModelRecipeImplCopyWith<$Res> {
  __$$HomeModelRecipeImplCopyWithImpl(
      _$HomeModelRecipeImpl _value, $Res Function(_$HomeModelRecipeImpl) _then)
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
    return _then(_$HomeModelRecipeImpl(
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

class _$HomeModelRecipeImpl implements _HomeModelRecipe {
  const _$HomeModelRecipeImpl(
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
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HomeModelYield> _yields;
  @override
  List<HomeModelYield> get yields {
    if (_yields is EqualUnmodifiableListView) return _yields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<String> _tagIds;
  @override
  List<String> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  final List<String> _cuisineIds;
  @override
  List<String> get cuisineIds {
    if (_cuisineIds is EqualUnmodifiableListView) return _cuisineIds;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelRecipeImpl &&
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
  _$$HomeModelRecipeImplCopyWith<_$HomeModelRecipeImpl> get copyWith =>
      __$$HomeModelRecipeImplCopyWithImpl<_$HomeModelRecipeImpl>(
          this, _$identity);
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
      required final Uri imageUri}) = _$HomeModelRecipeImpl;

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
  _$$HomeModelRecipeImplCopyWith<_$HomeModelRecipeImpl> get copyWith =>
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
abstract class _$$HomeModelDisplayedAttributesImplCopyWith<$Res>
    implements $HomeModelDisplayedAttributesCopyWith<$Res> {
  factory _$$HomeModelDisplayedAttributesImplCopyWith(
          _$HomeModelDisplayedAttributesImpl value,
          $Res Function(_$HomeModelDisplayedAttributesImpl) then) =
      __$$HomeModelDisplayedAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$HomeModelDisplayedAttributesImplCopyWithImpl<$Res>
    extends _$HomeModelDisplayedAttributesCopyWithImpl<$Res,
        _$HomeModelDisplayedAttributesImpl>
    implements _$$HomeModelDisplayedAttributesImplCopyWith<$Res> {
  __$$HomeModelDisplayedAttributesImplCopyWithImpl(
      _$HomeModelDisplayedAttributesImpl _value,
      $Res Function(_$HomeModelDisplayedAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$HomeModelDisplayedAttributesImpl(
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

class _$HomeModelDisplayedAttributesImpl
    implements _HomeModelDisplayedAttributes {
  const _$HomeModelDisplayedAttributesImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelDisplayedAttributesImpl &&
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
  _$$HomeModelDisplayedAttributesImplCopyWith<
          _$HomeModelDisplayedAttributesImpl>
      get copyWith => __$$HomeModelDisplayedAttributesImplCopyWithImpl<
          _$HomeModelDisplayedAttributesImpl>(this, _$identity);
}

abstract class _HomeModelDisplayedAttributes
    implements HomeModelDisplayedAttributes {
  const factory _HomeModelDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$HomeModelDisplayedAttributesImpl;

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
  _$$HomeModelDisplayedAttributesImplCopyWith<
          _$HomeModelDisplayedAttributesImpl>
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
abstract class _$$HomeModelIngredientImplCopyWith<$Res>
    implements $HomeModelIngredientCopyWith<$Res> {
  factory _$$HomeModelIngredientImplCopyWith(_$HomeModelIngredientImpl value,
          $Res Function(_$HomeModelIngredientImpl) then) =
      __$$HomeModelIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$HomeModelIngredientImplCopyWithImpl<$Res>
    extends _$HomeModelIngredientCopyWithImpl<$Res, _$HomeModelIngredientImpl>
    implements _$$HomeModelIngredientImplCopyWith<$Res> {
  __$$HomeModelIngredientImplCopyWithImpl(_$HomeModelIngredientImpl _value,
      $Res Function(_$HomeModelIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$HomeModelIngredientImpl(
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

class _$HomeModelIngredientImpl implements _HomeModelIngredient {
  const _$HomeModelIngredientImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelIngredientImpl &&
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
  _$$HomeModelIngredientImplCopyWith<_$HomeModelIngredientImpl> get copyWith =>
      __$$HomeModelIngredientImplCopyWithImpl<_$HomeModelIngredientImpl>(
          this, _$identity);
}

abstract class _HomeModelIngredient implements HomeModelIngredient {
  const factory _HomeModelIngredient(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$HomeModelIngredientImpl;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelIngredientImplCopyWith<_$HomeModelIngredientImpl> get copyWith =>
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
abstract class _$$HomeModelFilterTagImplCopyWith<$Res>
    implements $HomeModelFilterCopyWith<$Res> {
  factory _$$HomeModelFilterTagImplCopyWith(_$HomeModelFilterTagImpl value,
          $Res Function(_$HomeModelFilterTagImpl) then) =
      __$$HomeModelFilterTagImplCopyWithImpl<$Res>;
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
class __$$HomeModelFilterTagImplCopyWithImpl<$Res>
    extends _$HomeModelFilterCopyWithImpl<$Res, _$HomeModelFilterTagImpl>
    implements _$$HomeModelFilterTagImplCopyWith<$Res> {
  __$$HomeModelFilterTagImplCopyWithImpl(_$HomeModelFilterTagImpl _value,
      $Res Function(_$HomeModelFilterTagImpl) _then)
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
    return _then(_$HomeModelFilterTagImpl(
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

class _$HomeModelFilterTagImpl implements HomeModelFilterTag {
  const _$HomeModelFilterTagImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelFilterTagImpl &&
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
  _$$HomeModelFilterTagImplCopyWith<_$HomeModelFilterTagImpl> get copyWith =>
      __$$HomeModelFilterTagImplCopyWithImpl<_$HomeModelFilterTagImpl>(
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
      required final Option<int> numberOfRecipes}) = _$HomeModelFilterTagImpl;

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
  _$$HomeModelFilterTagImplCopyWith<_$HomeModelFilterTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeModelFilterCuisineImplCopyWith<$Res>
    implements $HomeModelFilterCopyWith<$Res> {
  factory _$$HomeModelFilterCuisineImplCopyWith(
          _$HomeModelFilterCuisineImpl value,
          $Res Function(_$HomeModelFilterCuisineImpl) then) =
      __$$HomeModelFilterCuisineImplCopyWithImpl<$Res>;
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
class __$$HomeModelFilterCuisineImplCopyWithImpl<$Res>
    extends _$HomeModelFilterCopyWithImpl<$Res, _$HomeModelFilterCuisineImpl>
    implements _$$HomeModelFilterCuisineImplCopyWith<$Res> {
  __$$HomeModelFilterCuisineImplCopyWithImpl(
      _$HomeModelFilterCuisineImpl _value,
      $Res Function(_$HomeModelFilterCuisineImpl) _then)
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
    return _then(_$HomeModelFilterCuisineImpl(
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

class _$HomeModelFilterCuisineImpl implements HomeModelFilterCuisine {
  const _$HomeModelFilterCuisineImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelFilterCuisineImpl &&
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
  _$$HomeModelFilterCuisineImplCopyWith<_$HomeModelFilterCuisineImpl>
      get copyWith => __$$HomeModelFilterCuisineImplCopyWithImpl<
          _$HomeModelFilterCuisineImpl>(this, _$identity);

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
          required final Option<int> numberOfRecipes}) =
      _$HomeModelFilterCuisineImpl;

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
  _$$HomeModelFilterCuisineImplCopyWith<_$HomeModelFilterCuisineImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$HomeModelYieldImplCopyWith<$Res>
    implements $HomeModelYieldCopyWith<$Res> {
  factory _$$HomeModelYieldImplCopyWith(_$HomeModelYieldImpl value,
          $Res Function(_$HomeModelYieldImpl) then) =
      __$$HomeModelYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int yield, List<HomeModelYieldIngredient> yieldIngredient});
}

/// @nodoc
class __$$HomeModelYieldImplCopyWithImpl<$Res>
    extends _$HomeModelYieldCopyWithImpl<$Res, _$HomeModelYieldImpl>
    implements _$$HomeModelYieldImplCopyWith<$Res> {
  __$$HomeModelYieldImplCopyWithImpl(
      _$HomeModelYieldImpl _value, $Res Function(_$HomeModelYieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yield = null,
    Object? yieldIngredient = null,
  }) {
    return _then(_$HomeModelYieldImpl(
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

class _$HomeModelYieldImpl implements _HomeModelYield {
  const _$HomeModelYieldImpl(
      {required this.yield,
      required final List<HomeModelYieldIngredient> yieldIngredient})
      : _yieldIngredient = yieldIngredient;

  @override
  final int yield;
  final List<HomeModelYieldIngredient> _yieldIngredient;
  @override
  List<HomeModelYieldIngredient> get yieldIngredient {
    if (_yieldIngredient is EqualUnmodifiableListView) return _yieldIngredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yieldIngredient);
  }

  @override
  String toString() {
    return 'HomeModelYield(yield: $yield, yieldIngredient: $yieldIngredient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelYieldImpl &&
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
  _$$HomeModelYieldImplCopyWith<_$HomeModelYieldImpl> get copyWith =>
      __$$HomeModelYieldImplCopyWithImpl<_$HomeModelYieldImpl>(
          this, _$identity);
}

abstract class _HomeModelYield implements HomeModelYield {
  const factory _HomeModelYield(
          {required final int yield,
          required final List<HomeModelYieldIngredient> yieldIngredient}) =
      _$HomeModelYieldImpl;

  @override
  int get yield;
  @override
  List<HomeModelYieldIngredient> get yieldIngredient;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelYieldImplCopyWith<_$HomeModelYieldImpl> get copyWith =>
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
abstract class _$$HomeModelYieldIngredientImplCopyWith<$Res>
    implements $HomeModelYieldIngredientCopyWith<$Res> {
  factory _$$HomeModelYieldIngredientImplCopyWith(
          _$HomeModelYieldIngredientImpl value,
          $Res Function(_$HomeModelYieldIngredientImpl) then) =
      __$$HomeModelYieldIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class __$$HomeModelYieldIngredientImplCopyWithImpl<$Res>
    extends _$HomeModelYieldIngredientCopyWithImpl<$Res,
        _$HomeModelYieldIngredientImpl>
    implements _$$HomeModelYieldIngredientImplCopyWith<$Res> {
  __$$HomeModelYieldIngredientImplCopyWithImpl(
      _$HomeModelYieldIngredientImpl _value,
      $Res Function(_$HomeModelYieldIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$HomeModelYieldIngredientImpl(
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

class _$HomeModelYieldIngredientImpl implements _HomeModelYieldIngredient {
  const _$HomeModelYieldIngredientImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelYieldIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelYieldIngredientImplCopyWith<_$HomeModelYieldIngredientImpl>
      get copyWith => __$$HomeModelYieldIngredientImplCopyWithImpl<
          _$HomeModelYieldIngredientImpl>(this, _$identity);
}

abstract class _HomeModelYieldIngredient implements HomeModelYieldIngredient {
  const factory _HomeModelYieldIngredient(
      {required final String id,
      required final Option<double> amount,
      required final Option<String> unit}) = _$HomeModelYieldIngredientImpl;

  @override
  String get id;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelYieldIngredientImplCopyWith<_$HomeModelYieldIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
