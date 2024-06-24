// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  PagingController<int, HomeStateRecipe> get paginationController =>
      throw _privateConstructorUsedError;
  ViewState<List<HomeStateFilter>> get availableFilters =>
      throw _privateConstructorUsedError;
  List<Locale> get recipeLocales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {PagingController<int, HomeStateRecipe> paginationController,
      ViewState<List<HomeStateFilter>> availableFilters,
      List<Locale> recipeLocales});

  $ViewStateCopyWith<List<HomeStateFilter>, $Res> get availableFilters;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
              as PagingController<int, HomeStateRecipe>,
      availableFilters: null == availableFilters
          ? _value.availableFilters
          : availableFilters // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HomeStateFilter>>,
      recipeLocales: null == recipeLocales
          ? _value.recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<List<HomeStateFilter>, $Res> get availableFilters {
    return $ViewStateCopyWith<List<HomeStateFilter>, $Res>(
        _value.availableFilters, (value) {
      return _then(_value.copyWith(availableFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingController<int, HomeStateRecipe> paginationController,
      ViewState<List<HomeStateFilter>> availableFilters,
      List<Locale> recipeLocales});

  @override
  $ViewStateCopyWith<List<HomeStateFilter>, $Res> get availableFilters;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginationController = null,
    Object? availableFilters = null,
    Object? recipeLocales = null,
  }) {
    return _then(_$HomeStateImpl(
      paginationController: null == paginationController
          ? _value.paginationController
          : paginationController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, HomeStateRecipe>,
      availableFilters: null == availableFilters
          ? _value.availableFilters
          : availableFilters // ignore: cast_nullable_to_non_nullable
              as ViewState<List<HomeStateFilter>>,
      recipeLocales: null == recipeLocales
          ? _value._recipeLocales
          : recipeLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.paginationController,
      required this.availableFilters,
      required final List<Locale> recipeLocales})
      : _recipeLocales = recipeLocales;

  @override
  final PagingController<int, HomeStateRecipe> paginationController;
  @override
  final ViewState<List<HomeStateFilter>> availableFilters;
  final List<Locale> _recipeLocales;
  @override
  List<Locale> get recipeLocales {
    if (_recipeLocales is EqualUnmodifiableListView) return _recipeLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeLocales);
  }

  @override
  String toString() {
    return 'HomeState(paginationController: $paginationController, availableFilters: $availableFilters, recipeLocales: $recipeLocales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
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
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final PagingController<int, HomeStateRecipe>
          paginationController,
      required final ViewState<List<HomeStateFilter>> availableFilters,
      required final List<Locale> recipeLocales}) = _$HomeStateImpl;

  @override
  PagingController<int, HomeStateRecipe> get paginationController;
  @override
  ViewState<List<HomeStateFilter>> get availableFilters;
  @override
  List<Locale> get recipeLocales;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStatePagination {
  bool get isCurrentlyFetching => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get totalAmountOfRecipes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStatePaginationCopyWith<HomeStatePagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatePaginationCopyWith<$Res> {
  factory $HomeStatePaginationCopyWith(
          HomeStatePagination value, $Res Function(HomeStatePagination) then) =
      _$HomeStatePaginationCopyWithImpl<$Res, HomeStatePagination>;
  @useResult
  $Res call({bool isCurrentlyFetching, int skip, int totalAmountOfRecipes});
}

/// @nodoc
class _$HomeStatePaginationCopyWithImpl<$Res, $Val extends HomeStatePagination>
    implements $HomeStatePaginationCopyWith<$Res> {
  _$HomeStatePaginationCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStatePaginationImplCopyWith<$Res>
    implements $HomeStatePaginationCopyWith<$Res> {
  factory _$$HomeStatePaginationImplCopyWith(_$HomeStatePaginationImpl value,
          $Res Function(_$HomeStatePaginationImpl) then) =
      __$$HomeStatePaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCurrentlyFetching, int skip, int totalAmountOfRecipes});
}

/// @nodoc
class __$$HomeStatePaginationImplCopyWithImpl<$Res>
    extends _$HomeStatePaginationCopyWithImpl<$Res, _$HomeStatePaginationImpl>
    implements _$$HomeStatePaginationImplCopyWith<$Res> {
  __$$HomeStatePaginationImplCopyWithImpl(_$HomeStatePaginationImpl _value,
      $Res Function(_$HomeStatePaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCurrentlyFetching = null,
    Object? skip = null,
    Object? totalAmountOfRecipes = null,
  }) {
    return _then(_$HomeStatePaginationImpl(
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

class _$HomeStatePaginationImpl implements _HomeStatePagination {
  const _$HomeStatePaginationImpl(
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
    return 'HomeStatePagination(isCurrentlyFetching: $isCurrentlyFetching, skip: $skip, totalAmountOfRecipes: $totalAmountOfRecipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStatePaginationImpl &&
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
  _$$HomeStatePaginationImplCopyWith<_$HomeStatePaginationImpl> get copyWith =>
      __$$HomeStatePaginationImplCopyWithImpl<_$HomeStatePaginationImpl>(
          this, _$identity);
}

abstract class _HomeStatePagination implements HomeStatePagination {
  const factory _HomeStatePagination(
      {required final bool isCurrentlyFetching,
      required final int skip,
      required final int totalAmountOfRecipes}) = _$HomeStatePaginationImpl;

  @override
  bool get isCurrentlyFetching;
  @override
  int get skip;
  @override
  int get totalAmountOfRecipes;
  @override
  @JsonKey(ignore: true)
  _$$HomeStatePaginationImplCopyWith<_$HomeStatePaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateRecipe {
  String get id => throw _privateConstructorUsedError;
  HomeStateDisplayedAttributes get displayedAttributes =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  List<HomeStateIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  List<HomeStateYield> get yields => throw _privateConstructorUsedError;
  List<String> get tagIds => throw _privateConstructorUsedError;
  List<String> get cuisineIds => throw _privateConstructorUsedError;
  Uri get imageUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateRecipeCopyWith<HomeStateRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateRecipeCopyWith<$Res> {
  factory $HomeStateRecipeCopyWith(
          HomeStateRecipe value, $Res Function(HomeStateRecipe) then) =
      _$HomeStateRecipeCopyWithImpl<$Res, HomeStateRecipe>;
  @useResult
  $Res call(
      {String id,
      HomeStateDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeStateIngredient> ingredients,
      List<HomeStateYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Uri imageUri});

  $HomeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class _$HomeStateRecipeCopyWithImpl<$Res, $Val extends HomeStateRecipe>
    implements $HomeStateRecipeCopyWith<$Res> {
  _$HomeStateRecipeCopyWithImpl(this._value, this._then);

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
              as HomeStateDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeStateIngredient>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeStateYield>,
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
  $HomeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes {
    return $HomeStateDisplayedAttributesCopyWith<$Res>(
        _value.displayedAttributes, (value) {
      return _then(_value.copyWith(displayedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateRecipeImplCopyWith<$Res>
    implements $HomeStateRecipeCopyWith<$Res> {
  factory _$$HomeStateRecipeImplCopyWith(_$HomeStateRecipeImpl value,
          $Res Function(_$HomeStateRecipeImpl) then) =
      __$$HomeStateRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      HomeStateDisplayedAttributes displayedAttributes,
      int difficulty,
      List<HomeStateIngredient> ingredients,
      List<HomeStateYield> yields,
      List<String> tagIds,
      List<String> cuisineIds,
      Uri imageUri});

  @override
  $HomeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class __$$HomeStateRecipeImplCopyWithImpl<$Res>
    extends _$HomeStateRecipeCopyWithImpl<$Res, _$HomeStateRecipeImpl>
    implements _$$HomeStateRecipeImplCopyWith<$Res> {
  __$$HomeStateRecipeImplCopyWithImpl(
      _$HomeStateRecipeImpl _value, $Res Function(_$HomeStateRecipeImpl) _then)
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
    return _then(_$HomeStateRecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as HomeStateDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<HomeStateIngredient>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<HomeStateYield>,
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

class _$HomeStateRecipeImpl implements _HomeStateRecipe {
  const _$HomeStateRecipeImpl(
      {required this.id,
      required this.displayedAttributes,
      required this.difficulty,
      required final List<HomeStateIngredient> ingredients,
      required final List<HomeStateYield> yields,
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
  final HomeStateDisplayedAttributes displayedAttributes;
  @override
  final int difficulty;
  final List<HomeStateIngredient> _ingredients;
  @override
  List<HomeStateIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<HomeStateYield> _yields;
  @override
  List<HomeStateYield> get yields {
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
    return 'HomeStateRecipe(id: $id, displayedAttributes: $displayedAttributes, difficulty: $difficulty, ingredients: $ingredients, yields: $yields, tagIds: $tagIds, cuisineIds: $cuisineIds, imageUri: $imageUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateRecipeImpl &&
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
  _$$HomeStateRecipeImplCopyWith<_$HomeStateRecipeImpl> get copyWith =>
      __$$HomeStateRecipeImplCopyWithImpl<_$HomeStateRecipeImpl>(
          this, _$identity);
}

abstract class _HomeStateRecipe implements HomeStateRecipe {
  const factory _HomeStateRecipe(
      {required final String id,
      required final HomeStateDisplayedAttributes displayedAttributes,
      required final int difficulty,
      required final List<HomeStateIngredient> ingredients,
      required final List<HomeStateYield> yields,
      required final List<String> tagIds,
      required final List<String> cuisineIds,
      required final Uri imageUri}) = _$HomeStateRecipeImpl;

  @override
  String get id;
  @override
  HomeStateDisplayedAttributes get displayedAttributes;
  @override
  int get difficulty;
  @override
  List<HomeStateIngredient> get ingredients;
  @override
  List<HomeStateYield> get yields;
  @override
  List<String> get tagIds;
  @override
  List<String> get cuisineIds;
  @override
  Uri get imageUri;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateRecipeImplCopyWith<_$HomeStateRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateDisplayedAttributes {
  String get name => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateDisplayedAttributesCopyWith<HomeStateDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDisplayedAttributesCopyWith<$Res> {
  factory $HomeStateDisplayedAttributesCopyWith(
          HomeStateDisplayedAttributes value,
          $Res Function(HomeStateDisplayedAttributes) then) =
      _$HomeStateDisplayedAttributesCopyWithImpl<$Res,
          HomeStateDisplayedAttributes>;
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class _$HomeStateDisplayedAttributesCopyWithImpl<$Res,
        $Val extends HomeStateDisplayedAttributes>
    implements $HomeStateDisplayedAttributesCopyWith<$Res> {
  _$HomeStateDisplayedAttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStateDisplayedAttributesImplCopyWith<$Res>
    implements $HomeStateDisplayedAttributesCopyWith<$Res> {
  factory _$$HomeStateDisplayedAttributesImplCopyWith(
          _$HomeStateDisplayedAttributesImpl value,
          $Res Function(_$HomeStateDisplayedAttributesImpl) then) =
      __$$HomeStateDisplayedAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$HomeStateDisplayedAttributesImplCopyWithImpl<$Res>
    extends _$HomeStateDisplayedAttributesCopyWithImpl<$Res,
        _$HomeStateDisplayedAttributesImpl>
    implements _$$HomeStateDisplayedAttributesImplCopyWith<$Res> {
  __$$HomeStateDisplayedAttributesImplCopyWithImpl(
      _$HomeStateDisplayedAttributesImpl _value,
      $Res Function(_$HomeStateDisplayedAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$HomeStateDisplayedAttributesImpl(
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

class _$HomeStateDisplayedAttributesImpl
    implements _HomeStateDisplayedAttributes {
  const _$HomeStateDisplayedAttributesImpl(
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
    return 'HomeStateDisplayedAttributes(name: $name, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateDisplayedAttributesImpl &&
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
  _$$HomeStateDisplayedAttributesImplCopyWith<
          _$HomeStateDisplayedAttributesImpl>
      get copyWith => __$$HomeStateDisplayedAttributesImplCopyWithImpl<
          _$HomeStateDisplayedAttributesImpl>(this, _$identity);
}

abstract class _HomeStateDisplayedAttributes
    implements HomeStateDisplayedAttributes {
  const factory _HomeStateDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$HomeStateDisplayedAttributesImpl;

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
  _$$HomeStateDisplayedAttributesImplCopyWith<
          _$HomeStateDisplayedAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateIngredient {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateIngredientCopyWith<HomeStateIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateIngredientCopyWith<$Res> {
  factory $HomeStateIngredientCopyWith(
          HomeStateIngredient value, $Res Function(HomeStateIngredient) then) =
      _$HomeStateIngredientCopyWithImpl<$Res, HomeStateIngredient>;
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class _$HomeStateIngredientCopyWithImpl<$Res, $Val extends HomeStateIngredient>
    implements $HomeStateIngredientCopyWith<$Res> {
  _$HomeStateIngredientCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStateIngredientImplCopyWith<$Res>
    implements $HomeStateIngredientCopyWith<$Res> {
  factory _$$HomeStateIngredientImplCopyWith(_$HomeStateIngredientImpl value,
          $Res Function(_$HomeStateIngredientImpl) then) =
      __$$HomeStateIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$HomeStateIngredientImplCopyWithImpl<$Res>
    extends _$HomeStateIngredientCopyWithImpl<$Res, _$HomeStateIngredientImpl>
    implements _$$HomeStateIngredientImplCopyWith<$Res> {
  __$$HomeStateIngredientImplCopyWithImpl(_$HomeStateIngredientImpl _value,
      $Res Function(_$HomeStateIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$HomeStateIngredientImpl(
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

class _$HomeStateIngredientImpl implements _HomeStateIngredient {
  const _$HomeStateIngredientImpl(
      {required this.id, required this.slug, required this.displayedName});

  @override
  final String id;
  @override
  final String slug;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'HomeStateIngredient(id: $id, slug: $slug, displayedName: $displayedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateIngredientImpl &&
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
  _$$HomeStateIngredientImplCopyWith<_$HomeStateIngredientImpl> get copyWith =>
      __$$HomeStateIngredientImplCopyWithImpl<_$HomeStateIngredientImpl>(
          this, _$identity);
}

abstract class _HomeStateIngredient implements HomeStateIngredient {
  const factory _HomeStateIngredient(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$HomeStateIngredientImpl;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateIngredientImplCopyWith<_$HomeStateIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateFilter {
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
    required TResult Function(HomeStateFilterTag value) tag,
    required TResult Function(HomeStateFilterCuisine value) cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateFilterTag value)? tag,
    TResult? Function(HomeStateFilterCuisine value)? cuisine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateFilterTag value)? tag,
    TResult Function(HomeStateFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateFilterCopyWith<HomeStateFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateFilterCopyWith<$Res> {
  factory $HomeStateFilterCopyWith(
          HomeStateFilter value, $Res Function(HomeStateFilter) then) =
      _$HomeStateFilterCopyWithImpl<$Res, HomeStateFilter>;
  @useResult
  $Res call(
      {String id,
      String displayedName,
      bool isSelected,
      Option<int> numberOfRecipes});
}

/// @nodoc
class _$HomeStateFilterCopyWithImpl<$Res, $Val extends HomeStateFilter>
    implements $HomeStateFilterCopyWith<$Res> {
  _$HomeStateFilterCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStateFilterTagImplCopyWith<$Res>
    implements $HomeStateFilterCopyWith<$Res> {
  factory _$$HomeStateFilterTagImplCopyWith(_$HomeStateFilterTagImpl value,
          $Res Function(_$HomeStateFilterTagImpl) then) =
      __$$HomeStateFilterTagImplCopyWithImpl<$Res>;
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
class __$$HomeStateFilterTagImplCopyWithImpl<$Res>
    extends _$HomeStateFilterCopyWithImpl<$Res, _$HomeStateFilterTagImpl>
    implements _$$HomeStateFilterTagImplCopyWith<$Res> {
  __$$HomeStateFilterTagImplCopyWithImpl(_$HomeStateFilterTagImpl _value,
      $Res Function(_$HomeStateFilterTagImpl) _then)
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
    return _then(_$HomeStateFilterTagImpl(
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

class _$HomeStateFilterTagImpl implements HomeStateFilterTag {
  const _$HomeStateFilterTagImpl(
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
    return 'HomeStateFilter.tag(id: $id, displayedName: $displayedName, type: $type, isSelected: $isSelected, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateFilterTagImpl &&
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
  _$$HomeStateFilterTagImplCopyWith<_$HomeStateFilterTagImpl> get copyWith =>
      __$$HomeStateFilterTagImplCopyWithImpl<_$HomeStateFilterTagImpl>(
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
    required TResult Function(HomeStateFilterTag value) tag,
    required TResult Function(HomeStateFilterCuisine value) cuisine,
  }) {
    return tag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateFilterTag value)? tag,
    TResult? Function(HomeStateFilterCuisine value)? cuisine,
  }) {
    return tag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateFilterTag value)? tag,
    TResult Function(HomeStateFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) {
    if (tag != null) {
      return tag(this);
    }
    return orElse();
  }
}

abstract class HomeStateFilterTag implements HomeStateFilter {
  const factory HomeStateFilterTag(
      {required final String id,
      required final String displayedName,
      required final String type,
      required final bool isSelected,
      required final Option<int> numberOfRecipes}) = _$HomeStateFilterTagImpl;

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
  _$$HomeStateFilterTagImplCopyWith<_$HomeStateFilterTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateFilterCuisineImplCopyWith<$Res>
    implements $HomeStateFilterCopyWith<$Res> {
  factory _$$HomeStateFilterCuisineImplCopyWith(
          _$HomeStateFilterCuisineImpl value,
          $Res Function(_$HomeStateFilterCuisineImpl) then) =
      __$$HomeStateFilterCuisineImplCopyWithImpl<$Res>;
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
class __$$HomeStateFilterCuisineImplCopyWithImpl<$Res>
    extends _$HomeStateFilterCopyWithImpl<$Res, _$HomeStateFilterCuisineImpl>
    implements _$$HomeStateFilterCuisineImplCopyWith<$Res> {
  __$$HomeStateFilterCuisineImplCopyWithImpl(
      _$HomeStateFilterCuisineImpl _value,
      $Res Function(_$HomeStateFilterCuisineImpl) _then)
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
    return _then(_$HomeStateFilterCuisineImpl(
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

class _$HomeStateFilterCuisineImpl implements HomeStateFilterCuisine {
  const _$HomeStateFilterCuisineImpl(
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
    return 'HomeStateFilter.cuisine(id: $id, displayedName: $displayedName, slug: $slug, countryCode: $countryCode, isSelected: $isSelected, numberOfRecipes: $numberOfRecipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateFilterCuisineImpl &&
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
  _$$HomeStateFilterCuisineImplCopyWith<_$HomeStateFilterCuisineImpl>
      get copyWith => __$$HomeStateFilterCuisineImplCopyWithImpl<
          _$HomeStateFilterCuisineImpl>(this, _$identity);

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
    required TResult Function(HomeStateFilterTag value) tag,
    required TResult Function(HomeStateFilterCuisine value) cuisine,
  }) {
    return cuisine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateFilterTag value)? tag,
    TResult? Function(HomeStateFilterCuisine value)? cuisine,
  }) {
    return cuisine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateFilterTag value)? tag,
    TResult Function(HomeStateFilterCuisine value)? cuisine,
    required TResult orElse(),
  }) {
    if (cuisine != null) {
      return cuisine(this);
    }
    return orElse();
  }
}

abstract class HomeStateFilterCuisine implements HomeStateFilter {
  const factory HomeStateFilterCuisine(
          {required final String id,
          required final String displayedName,
          required final String slug,
          required final Option<String> countryCode,
          required final bool isSelected,
          required final Option<int> numberOfRecipes}) =
      _$HomeStateFilterCuisineImpl;

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
  _$$HomeStateFilterCuisineImplCopyWith<_$HomeStateFilterCuisineImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateYield {
  int get yield => throw _privateConstructorUsedError;
  List<HomeStateYieldIngredient> get yieldIngredient =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateYieldCopyWith<HomeStateYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateYieldCopyWith<$Res> {
  factory $HomeStateYieldCopyWith(
          HomeStateYield value, $Res Function(HomeStateYield) then) =
      _$HomeStateYieldCopyWithImpl<$Res, HomeStateYield>;
  @useResult
  $Res call({int yield, List<HomeStateYieldIngredient> yieldIngredient});
}

/// @nodoc
class _$HomeStateYieldCopyWithImpl<$Res, $Val extends HomeStateYield>
    implements $HomeStateYieldCopyWith<$Res> {
  _$HomeStateYieldCopyWithImpl(this._value, this._then);

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
              as List<HomeStateYieldIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateYieldImplCopyWith<$Res>
    implements $HomeStateYieldCopyWith<$Res> {
  factory _$$HomeStateYieldImplCopyWith(_$HomeStateYieldImpl value,
          $Res Function(_$HomeStateYieldImpl) then) =
      __$$HomeStateYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int yield, List<HomeStateYieldIngredient> yieldIngredient});
}

/// @nodoc
class __$$HomeStateYieldImplCopyWithImpl<$Res>
    extends _$HomeStateYieldCopyWithImpl<$Res, _$HomeStateYieldImpl>
    implements _$$HomeStateYieldImplCopyWith<$Res> {
  __$$HomeStateYieldImplCopyWithImpl(
      _$HomeStateYieldImpl _value, $Res Function(_$HomeStateYieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yield = null,
    Object? yieldIngredient = null,
  }) {
    return _then(_$HomeStateYieldImpl(
      yield: null == yield
          ? _value.yield
          : yield // ignore: cast_nullable_to_non_nullable
              as int,
      yieldIngredient: null == yieldIngredient
          ? _value._yieldIngredient
          : yieldIngredient // ignore: cast_nullable_to_non_nullable
              as List<HomeStateYieldIngredient>,
    ));
  }
}

/// @nodoc

class _$HomeStateYieldImpl implements _HomeStateYield {
  const _$HomeStateYieldImpl(
      {required this.yield,
      required final List<HomeStateYieldIngredient> yieldIngredient})
      : _yieldIngredient = yieldIngredient;

  @override
  final int yield;
  final List<HomeStateYieldIngredient> _yieldIngredient;
  @override
  List<HomeStateYieldIngredient> get yieldIngredient {
    if (_yieldIngredient is EqualUnmodifiableListView) return _yieldIngredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yieldIngredient);
  }

  @override
  String toString() {
    return 'HomeStateYield(yield: $yield, yieldIngredient: $yieldIngredient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateYieldImpl &&
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
  _$$HomeStateYieldImplCopyWith<_$HomeStateYieldImpl> get copyWith =>
      __$$HomeStateYieldImplCopyWithImpl<_$HomeStateYieldImpl>(
          this, _$identity);
}

abstract class _HomeStateYield implements HomeStateYield {
  const factory _HomeStateYield(
          {required final int yield,
          required final List<HomeStateYieldIngredient> yieldIngredient}) =
      _$HomeStateYieldImpl;

  @override
  int get yield;
  @override
  List<HomeStateYieldIngredient> get yieldIngredient;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateYieldImplCopyWith<_$HomeStateYieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeStateYieldIngredient {
  String get id => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateYieldIngredientCopyWith<HomeStateYieldIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateYieldIngredientCopyWith<$Res> {
  factory $HomeStateYieldIngredientCopyWith(HomeStateYieldIngredient value,
          $Res Function(HomeStateYieldIngredient) then) =
      _$HomeStateYieldIngredientCopyWithImpl<$Res, HomeStateYieldIngredient>;
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class _$HomeStateYieldIngredientCopyWithImpl<$Res,
        $Val extends HomeStateYieldIngredient>
    implements $HomeStateYieldIngredientCopyWith<$Res> {
  _$HomeStateYieldIngredientCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeStateYieldIngredientImplCopyWith<$Res>
    implements $HomeStateYieldIngredientCopyWith<$Res> {
  factory _$$HomeStateYieldIngredientImplCopyWith(
          _$HomeStateYieldIngredientImpl value,
          $Res Function(_$HomeStateYieldIngredientImpl) then) =
      __$$HomeStateYieldIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<double> amount, Option<String> unit});
}

/// @nodoc
class __$$HomeStateYieldIngredientImplCopyWithImpl<$Res>
    extends _$HomeStateYieldIngredientCopyWithImpl<$Res,
        _$HomeStateYieldIngredientImpl>
    implements _$$HomeStateYieldIngredientImplCopyWith<$Res> {
  __$$HomeStateYieldIngredientImplCopyWithImpl(
      _$HomeStateYieldIngredientImpl _value,
      $Res Function(_$HomeStateYieldIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$HomeStateYieldIngredientImpl(
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

class _$HomeStateYieldIngredientImpl implements _HomeStateYieldIngredient {
  const _$HomeStateYieldIngredientImpl(
      {required this.id, required this.amount, required this.unit});

  @override
  final String id;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;

  @override
  String toString() {
    return 'HomeStateYieldIngredient(id: $id, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateYieldIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateYieldIngredientImplCopyWith<_$HomeStateYieldIngredientImpl>
      get copyWith => __$$HomeStateYieldIngredientImplCopyWithImpl<
          _$HomeStateYieldIngredientImpl>(this, _$identity);
}

abstract class _HomeStateYieldIngredient implements HomeStateYieldIngredient {
  const factory _HomeStateYieldIngredient(
      {required final String id,
      required final Option<double> amount,
      required final Option<String> unit}) = _$HomeStateYieldIngredientImpl;

  @override
  String get id;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateYieldIngredientImplCopyWith<_$HomeStateYieldIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
