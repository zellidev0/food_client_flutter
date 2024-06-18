// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleRecipeState {
  String get recipeId => throw _privateConstructorUsedError;
  ViewState<SingleRecipeStateRecipe> get recipe =>
      throw _privateConstructorUsedError;
  Option<int> get selectedYield => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateCopyWith<SingleRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateCopyWith<$Res> {
  factory $SingleRecipeStateCopyWith(
          SingleRecipeState value, $Res Function(SingleRecipeState) then) =
      _$SingleRecipeStateCopyWithImpl<$Res, SingleRecipeState>;
  @useResult
  $Res call(
      {String recipeId,
      ViewState<SingleRecipeStateRecipe> recipe,
      Option<int> selectedYield});

  $ViewStateCopyWith<SingleRecipeStateRecipe, $Res> get recipe;
}

/// @nodoc
class _$SingleRecipeStateCopyWithImpl<$Res, $Val extends SingleRecipeState>
    implements $SingleRecipeStateCopyWith<$Res> {
  _$SingleRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? recipe = null,
    Object? selectedYield = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as ViewState<SingleRecipeStateRecipe>,
      selectedYield: null == selectedYield
          ? _value.selectedYield
          : selectedYield // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<SingleRecipeStateRecipe, $Res> get recipe {
    return $ViewStateCopyWith<SingleRecipeStateRecipe, $Res>(_value.recipe,
        (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleRecipeStateImplCopyWith<$Res>
    implements $SingleRecipeStateCopyWith<$Res> {
  factory _$$SingleRecipeStateImplCopyWith(_$SingleRecipeStateImpl value,
          $Res Function(_$SingleRecipeStateImpl) then) =
      __$$SingleRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      ViewState<SingleRecipeStateRecipe> recipe,
      Option<int> selectedYield});

  @override
  $ViewStateCopyWith<SingleRecipeStateRecipe, $Res> get recipe;
}

/// @nodoc
class __$$SingleRecipeStateImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateCopyWithImpl<$Res, _$SingleRecipeStateImpl>
    implements _$$SingleRecipeStateImplCopyWith<$Res> {
  __$$SingleRecipeStateImplCopyWithImpl(_$SingleRecipeStateImpl _value,
      $Res Function(_$SingleRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? recipe = null,
    Object? selectedYield = null,
  }) {
    return _then(_$SingleRecipeStateImpl(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as ViewState<SingleRecipeStateRecipe>,
      selectedYield: null == selectedYield
          ? _value.selectedYield
          : selectedYield // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$SingleRecipeStateImpl implements _SingleRecipeState {
  const _$SingleRecipeStateImpl(
      {required this.recipeId,
      required this.recipe,
      required this.selectedYield});

  @override
  final String recipeId;
  @override
  final ViewState<SingleRecipeStateRecipe> recipe;
  @override
  final Option<int> selectedYield;

  @override
  String toString() {
    return 'SingleRecipeState(recipeId: $recipeId, recipe: $recipe, selectedYield: $selectedYield)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateImpl &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.selectedYield, selectedYield) ||
                other.selectedYield == selectedYield));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, recipe, selectedYield);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateImplCopyWith<_$SingleRecipeStateImpl> get copyWith =>
      __$$SingleRecipeStateImplCopyWithImpl<_$SingleRecipeStateImpl>(
          this, _$identity);
}

abstract class _SingleRecipeState implements SingleRecipeState {
  const factory _SingleRecipeState(
      {required final String recipeId,
      required final ViewState<SingleRecipeStateRecipe> recipe,
      required final Option<int> selectedYield}) = _$SingleRecipeStateImpl;

  @override
  String get recipeId;
  @override
  ViewState<SingleRecipeStateRecipe> get recipe;
  @override
  Option<int> get selectedYield;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateImplCopyWith<_$SingleRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateRecipe {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  SingleRecipeStateDisplayedAttributes get displayedAttributes =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  Option<Duration> get totalCookingTime => throw _privateConstructorUsedError;
  List<SingleRecipeStateYield> get yields => throw _privateConstructorUsedError;
  List<SingleRecipeStateTag> get tags => throw _privateConstructorUsedError;
  List<SingleRecipeStateStep> get steps => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateRecipeCopyWith<SingleRecipeStateRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateRecipeCopyWith<$Res> {
  factory $SingleRecipeStateRecipeCopyWith(SingleRecipeStateRecipe value,
          $Res Function(SingleRecipeStateRecipe) then) =
      _$SingleRecipeStateRecipeCopyWithImpl<$Res, SingleRecipeStateRecipe>;
  @useResult
  $Res call(
      {String id,
      String slug,
      SingleRecipeStateDisplayedAttributes displayedAttributes,
      int difficulty,
      Option<Duration> totalCookingTime,
      List<SingleRecipeStateYield> yields,
      List<SingleRecipeStateTag> tags,
      List<SingleRecipeStateStep> steps,
      Option<Uri> imageUrl,
      Option<Uri> imagePath});

  $SingleRecipeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class _$SingleRecipeStateRecipeCopyWithImpl<$Res,
        $Val extends SingleRecipeStateRecipe>
    implements $SingleRecipeStateRecipeCopyWith<$Res> {
  _$SingleRecipeStateRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedAttributes = null,
    Object? difficulty = null,
    Object? totalCookingTime = null,
    Object? yields = null,
    Object? tags = null,
    Object? steps = null,
    Object? imageUrl = null,
    Object? imagePath = null,
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
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as SingleRecipeStateDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      totalCookingTime: null == totalCookingTime
          ? _value.totalCookingTime
          : totalCookingTime // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
      yields: null == yields
          ? _value.yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateYield>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateTag>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateStep>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SingleRecipeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes {
    return $SingleRecipeStateDisplayedAttributesCopyWith<$Res>(
        _value.displayedAttributes, (value) {
      return _then(_value.copyWith(displayedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleRecipeStateRecipeImplCopyWith<$Res>
    implements $SingleRecipeStateRecipeCopyWith<$Res> {
  factory _$$SingleRecipeStateRecipeImplCopyWith(
          _$SingleRecipeStateRecipeImpl value,
          $Res Function(_$SingleRecipeStateRecipeImpl) then) =
      __$$SingleRecipeStateRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      SingleRecipeStateDisplayedAttributes displayedAttributes,
      int difficulty,
      Option<Duration> totalCookingTime,
      List<SingleRecipeStateYield> yields,
      List<SingleRecipeStateTag> tags,
      List<SingleRecipeStateStep> steps,
      Option<Uri> imageUrl,
      Option<Uri> imagePath});

  @override
  $SingleRecipeStateDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class __$$SingleRecipeStateRecipeImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateRecipeCopyWithImpl<$Res,
        _$SingleRecipeStateRecipeImpl>
    implements _$$SingleRecipeStateRecipeImplCopyWith<$Res> {
  __$$SingleRecipeStateRecipeImplCopyWithImpl(
      _$SingleRecipeStateRecipeImpl _value,
      $Res Function(_$SingleRecipeStateRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedAttributes = null,
    Object? difficulty = null,
    Object? totalCookingTime = null,
    Object? yields = null,
    Object? tags = null,
    Object? steps = null,
    Object? imageUrl = null,
    Object? imagePath = null,
  }) {
    return _then(_$SingleRecipeStateRecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedAttributes: null == displayedAttributes
          ? _value.displayedAttributes
          : displayedAttributes // ignore: cast_nullable_to_non_nullable
              as SingleRecipeStateDisplayedAttributes,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      totalCookingTime: null == totalCookingTime
          ? _value.totalCookingTime
          : totalCookingTime // ignore: cast_nullable_to_non_nullable
              as Option<Duration>,
      yields: null == yields
          ? _value._yields
          : yields // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateYield>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateTag>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateStep>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$SingleRecipeStateRecipeImpl implements _SingleRecipeStateRecipe {
  const _$SingleRecipeStateRecipeImpl(
      {required this.id,
      required this.slug,
      required this.displayedAttributes,
      required this.difficulty,
      required this.totalCookingTime,
      required final List<SingleRecipeStateYield> yields,
      required final List<SingleRecipeStateTag> tags,
      required final List<SingleRecipeStateStep> steps,
      required this.imageUrl,
      required this.imagePath})
      : _yields = yields,
        _tags = tags,
        _steps = steps;

  @override
  final String id;
  @override
  final String slug;
  @override
  final SingleRecipeStateDisplayedAttributes displayedAttributes;
  @override
  final int difficulty;
  @override
  final Option<Duration> totalCookingTime;
  final List<SingleRecipeStateYield> _yields;
  @override
  List<SingleRecipeStateYield> get yields {
    if (_yields is EqualUnmodifiableListView) return _yields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<SingleRecipeStateTag> _tags;
  @override
  List<SingleRecipeStateTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<SingleRecipeStateStep> _steps;
  @override
  List<SingleRecipeStateStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final Option<Uri> imageUrl;
  @override
  final Option<Uri> imagePath;

  @override
  String toString() {
    return 'SingleRecipeStateRecipe(id: $id, slug: $slug, displayedAttributes: $displayedAttributes, difficulty: $difficulty, totalCookingTime: $totalCookingTime, yields: $yields, tags: $tags, steps: $steps, imageUrl: $imageUrl, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateRecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedAttributes, displayedAttributes) ||
                other.displayedAttributes == displayedAttributes) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.totalCookingTime, totalCookingTime) ||
                other.totalCookingTime == totalCookingTime) &&
            const DeepCollectionEquality().equals(other._yields, _yields) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      slug,
      displayedAttributes,
      difficulty,
      totalCookingTime,
      const DeepCollectionEquality().hash(_yields),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_steps),
      imageUrl,
      imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateRecipeImplCopyWith<_$SingleRecipeStateRecipeImpl>
      get copyWith => __$$SingleRecipeStateRecipeImplCopyWithImpl<
          _$SingleRecipeStateRecipeImpl>(this, _$identity);
}

abstract class _SingleRecipeStateRecipe implements SingleRecipeStateRecipe {
  const factory _SingleRecipeStateRecipe(
      {required final String id,
      required final String slug,
      required final SingleRecipeStateDisplayedAttributes displayedAttributes,
      required final int difficulty,
      required final Option<Duration> totalCookingTime,
      required final List<SingleRecipeStateYield> yields,
      required final List<SingleRecipeStateTag> tags,
      required final List<SingleRecipeStateStep> steps,
      required final Option<Uri> imageUrl,
      required final Option<Uri> imagePath}) = _$SingleRecipeStateRecipeImpl;

  @override
  String get id;
  @override
  String get slug;
  @override
  SingleRecipeStateDisplayedAttributes get displayedAttributes;
  @override
  int get difficulty;
  @override
  Option<Duration> get totalCookingTime;
  @override
  List<SingleRecipeStateYield> get yields;
  @override
  List<SingleRecipeStateTag> get tags;
  @override
  List<SingleRecipeStateStep> get steps;
  @override
  Option<Uri> get imageUrl;
  @override
  Option<Uri> get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateRecipeImplCopyWith<_$SingleRecipeStateRecipeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateDisplayedAttributes {
  String get name => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateDisplayedAttributesCopyWith<
          SingleRecipeStateDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateDisplayedAttributesCopyWith<$Res> {
  factory $SingleRecipeStateDisplayedAttributesCopyWith(
          SingleRecipeStateDisplayedAttributes value,
          $Res Function(SingleRecipeStateDisplayedAttributes) then) =
      _$SingleRecipeStateDisplayedAttributesCopyWithImpl<$Res,
          SingleRecipeStateDisplayedAttributes>;
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class _$SingleRecipeStateDisplayedAttributesCopyWithImpl<$Res,
        $Val extends SingleRecipeStateDisplayedAttributes>
    implements $SingleRecipeStateDisplayedAttributesCopyWith<$Res> {
  _$SingleRecipeStateDisplayedAttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$SingleRecipeStateDisplayedAttributesImplCopyWith<$Res>
    implements $SingleRecipeStateDisplayedAttributesCopyWith<$Res> {
  factory _$$SingleRecipeStateDisplayedAttributesImplCopyWith(
          _$SingleRecipeStateDisplayedAttributesImpl value,
          $Res Function(_$SingleRecipeStateDisplayedAttributesImpl) then) =
      __$$SingleRecipeStateDisplayedAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$SingleRecipeStateDisplayedAttributesImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateDisplayedAttributesCopyWithImpl<$Res,
        _$SingleRecipeStateDisplayedAttributesImpl>
    implements _$$SingleRecipeStateDisplayedAttributesImplCopyWith<$Res> {
  __$$SingleRecipeStateDisplayedAttributesImplCopyWithImpl(
      _$SingleRecipeStateDisplayedAttributesImpl _value,
      $Res Function(_$SingleRecipeStateDisplayedAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$SingleRecipeStateDisplayedAttributesImpl(
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

class _$SingleRecipeStateDisplayedAttributesImpl
    implements _SingleRecipeStateDisplayedAttributes {
  const _$SingleRecipeStateDisplayedAttributesImpl(
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
    return 'SingleRecipeStateDisplayedAttributes(name: $name, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateDisplayedAttributesImpl &&
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
  _$$SingleRecipeStateDisplayedAttributesImplCopyWith<
          _$SingleRecipeStateDisplayedAttributesImpl>
      get copyWith => __$$SingleRecipeStateDisplayedAttributesImplCopyWithImpl<
          _$SingleRecipeStateDisplayedAttributesImpl>(this, _$identity);
}

abstract class _SingleRecipeStateDisplayedAttributes
    implements SingleRecipeStateDisplayedAttributes {
  const factory _SingleRecipeStateDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$SingleRecipeStateDisplayedAttributesImpl;

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
  _$$SingleRecipeStateDisplayedAttributesImplCopyWith<
          _$SingleRecipeStateDisplayedAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateStep {
  String get instructionMarkdown => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateStepCopyWith<SingleRecipeStateStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateStepCopyWith<$Res> {
  factory $SingleRecipeStateStepCopyWith(SingleRecipeStateStep value,
          $Res Function(SingleRecipeStateStep) then) =
      _$SingleRecipeStateStepCopyWithImpl<$Res, SingleRecipeStateStep>;
  @useResult
  $Res call({String instructionMarkdown, Option<Uri> imageUrl});
}

/// @nodoc
class _$SingleRecipeStateStepCopyWithImpl<$Res,
        $Val extends SingleRecipeStateStep>
    implements $SingleRecipeStateStepCopyWith<$Res> {
  _$SingleRecipeStateStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionMarkdown = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      instructionMarkdown: null == instructionMarkdown
          ? _value.instructionMarkdown
          : instructionMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleRecipeStateStepImplCopyWith<$Res>
    implements $SingleRecipeStateStepCopyWith<$Res> {
  factory _$$SingleRecipeStateStepImplCopyWith(
          _$SingleRecipeStateStepImpl value,
          $Res Function(_$SingleRecipeStateStepImpl) then) =
      __$$SingleRecipeStateStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String instructionMarkdown, Option<Uri> imageUrl});
}

/// @nodoc
class __$$SingleRecipeStateStepImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateStepCopyWithImpl<$Res,
        _$SingleRecipeStateStepImpl>
    implements _$$SingleRecipeStateStepImplCopyWith<$Res> {
  __$$SingleRecipeStateStepImplCopyWithImpl(_$SingleRecipeStateStepImpl _value,
      $Res Function(_$SingleRecipeStateStepImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionMarkdown = null,
    Object? imageUrl = null,
  }) {
    return _then(_$SingleRecipeStateStepImpl(
      instructionMarkdown: null == instructionMarkdown
          ? _value.instructionMarkdown
          : instructionMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$SingleRecipeStateStepImpl implements _SingleRecipeStateStep {
  const _$SingleRecipeStateStepImpl(
      {required this.instructionMarkdown, required this.imageUrl});

  @override
  final String instructionMarkdown;
  @override
  final Option<Uri> imageUrl;

  @override
  String toString() {
    return 'SingleRecipeStateStep(instructionMarkdown: $instructionMarkdown, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateStepImpl &&
            (identical(other.instructionMarkdown, instructionMarkdown) ||
                other.instructionMarkdown == instructionMarkdown) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instructionMarkdown, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateStepImplCopyWith<_$SingleRecipeStateStepImpl>
      get copyWith => __$$SingleRecipeStateStepImplCopyWithImpl<
          _$SingleRecipeStateStepImpl>(this, _$identity);
}

abstract class _SingleRecipeStateStep implements SingleRecipeStateStep {
  const factory _SingleRecipeStateStep(
      {required final String instructionMarkdown,
      required final Option<Uri> imageUrl}) = _$SingleRecipeStateStepImpl;

  @override
  String get instructionMarkdown;
  @override
  Option<Uri> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateStepImplCopyWith<_$SingleRecipeStateStepImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateYield {
  bool get isInShoppingCart => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  List<SingleRecipeStateIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateYieldCopyWith<SingleRecipeStateYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateYieldCopyWith<$Res> {
  factory $SingleRecipeStateYieldCopyWith(SingleRecipeStateYield value,
          $Res Function(SingleRecipeStateYield) then) =
      _$SingleRecipeStateYieldCopyWithImpl<$Res, SingleRecipeStateYield>;
  @useResult
  $Res call(
      {bool isInShoppingCart,
      int servings,
      List<SingleRecipeStateIngredient> ingredients});
}

/// @nodoc
class _$SingleRecipeStateYieldCopyWithImpl<$Res,
        $Val extends SingleRecipeStateYield>
    implements $SingleRecipeStateYieldCopyWith<$Res> {
  _$SingleRecipeStateYieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInShoppingCart = null,
    Object? servings = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      isInShoppingCart: null == isInShoppingCart
          ? _value.isInShoppingCart
          : isInShoppingCart // ignore: cast_nullable_to_non_nullable
              as bool,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleRecipeStateYieldImplCopyWith<$Res>
    implements $SingleRecipeStateYieldCopyWith<$Res> {
  factory _$$SingleRecipeStateYieldImplCopyWith(
          _$SingleRecipeStateYieldImpl value,
          $Res Function(_$SingleRecipeStateYieldImpl) then) =
      __$$SingleRecipeStateYieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInShoppingCart,
      int servings,
      List<SingleRecipeStateIngredient> ingredients});
}

/// @nodoc
class __$$SingleRecipeStateYieldImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateYieldCopyWithImpl<$Res,
        _$SingleRecipeStateYieldImpl>
    implements _$$SingleRecipeStateYieldImplCopyWith<$Res> {
  __$$SingleRecipeStateYieldImplCopyWithImpl(
      _$SingleRecipeStateYieldImpl _value,
      $Res Function(_$SingleRecipeStateYieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInShoppingCart = null,
    Object? servings = null,
    Object? ingredients = null,
  }) {
    return _then(_$SingleRecipeStateYieldImpl(
      isInShoppingCart: null == isInShoppingCart
          ? _value.isInShoppingCart
          : isInShoppingCart // ignore: cast_nullable_to_non_nullable
              as bool,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeStateIngredient>,
    ));
  }
}

/// @nodoc

class _$SingleRecipeStateYieldImpl implements _SingleRecipeStateYield {
  const _$SingleRecipeStateYieldImpl(
      {required this.isInShoppingCart,
      required this.servings,
      required final List<SingleRecipeStateIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final bool isInShoppingCart;
  @override
  final int servings;
  final List<SingleRecipeStateIngredient> _ingredients;
  @override
  List<SingleRecipeStateIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'SingleRecipeStateYield(isInShoppingCart: $isInShoppingCart, servings: $servings, ingredients: $ingredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateYieldImpl &&
            (identical(other.isInShoppingCart, isInShoppingCart) ||
                other.isInShoppingCart == isInShoppingCart) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInShoppingCart, servings,
      const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateYieldImplCopyWith<_$SingleRecipeStateYieldImpl>
      get copyWith => __$$SingleRecipeStateYieldImplCopyWithImpl<
          _$SingleRecipeStateYieldImpl>(this, _$identity);
}

abstract class _SingleRecipeStateYield implements SingleRecipeStateYield {
  const factory _SingleRecipeStateYield(
          {required final bool isInShoppingCart,
          required final int servings,
          required final List<SingleRecipeStateIngredient> ingredients}) =
      _$SingleRecipeStateYieldImpl;

  @override
  bool get isInShoppingCart;
  @override
  int get servings;
  @override
  List<SingleRecipeStateIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateYieldImplCopyWith<_$SingleRecipeStateYieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateTag {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateTagCopyWith<SingleRecipeStateTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateTagCopyWith<$Res> {
  factory $SingleRecipeStateTagCopyWith(SingleRecipeStateTag value,
          $Res Function(SingleRecipeStateTag) then) =
      _$SingleRecipeStateTagCopyWithImpl<$Res, SingleRecipeStateTag>;
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class _$SingleRecipeStateTagCopyWithImpl<$Res,
        $Val extends SingleRecipeStateTag>
    implements $SingleRecipeStateTagCopyWith<$Res> {
  _$SingleRecipeStateTagCopyWithImpl(this._value, this._then);

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
abstract class _$$SingleRecipeStateTagImplCopyWith<$Res>
    implements $SingleRecipeStateTagCopyWith<$Res> {
  factory _$$SingleRecipeStateTagImplCopyWith(_$SingleRecipeStateTagImpl value,
          $Res Function(_$SingleRecipeStateTagImpl) then) =
      __$$SingleRecipeStateTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$SingleRecipeStateTagImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateTagCopyWithImpl<$Res, _$SingleRecipeStateTagImpl>
    implements _$$SingleRecipeStateTagImplCopyWith<$Res> {
  __$$SingleRecipeStateTagImplCopyWithImpl(_$SingleRecipeStateTagImpl _value,
      $Res Function(_$SingleRecipeStateTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$SingleRecipeStateTagImpl(
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

class _$SingleRecipeStateTagImpl implements _SingleRecipeStateTag {
  const _$SingleRecipeStateTagImpl(
      {required this.id, required this.slug, required this.displayedName});

  @override
  final String id;
  @override
  final String slug;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'SingleRecipeStateTag(id: $id, slug: $slug, displayedName: $displayedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateTagImpl &&
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
  _$$SingleRecipeStateTagImplCopyWith<_$SingleRecipeStateTagImpl>
      get copyWith =>
          __$$SingleRecipeStateTagImplCopyWithImpl<_$SingleRecipeStateTagImpl>(
              this, _$identity);
}

abstract class _SingleRecipeStateTag implements SingleRecipeStateTag {
  const factory _SingleRecipeStateTag(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$SingleRecipeStateTagImpl;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateTagImplCopyWith<_$SingleRecipeStateTagImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateIngredient {
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  Option<SingleRecipeStateIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateIngredientCopyWith<SingleRecipeStateIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateIngredientCopyWith<$Res> {
  factory $SingleRecipeStateIngredientCopyWith(
          SingleRecipeStateIngredient value,
          $Res Function(SingleRecipeStateIngredient) then) =
      _$SingleRecipeStateIngredientCopyWithImpl<$Res,
          SingleRecipeStateIngredient>;
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<SingleRecipeStateIngredientFamily> family});
}

/// @nodoc
class _$SingleRecipeStateIngredientCopyWithImpl<$Res,
        $Val extends SingleRecipeStateIngredient>
    implements $SingleRecipeStateIngredientCopyWith<$Res> {
  _$SingleRecipeStateIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<SingleRecipeStateIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleRecipeStateIngredientImplCopyWith<$Res>
    implements $SingleRecipeStateIngredientCopyWith<$Res> {
  factory _$$SingleRecipeStateIngredientImplCopyWith(
          _$SingleRecipeStateIngredientImpl value,
          $Res Function(_$SingleRecipeStateIngredientImpl) then) =
      __$$SingleRecipeStateIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<SingleRecipeStateIngredientFamily> family});
}

/// @nodoc
class __$$SingleRecipeStateIngredientImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateIngredientCopyWithImpl<$Res,
        _$SingleRecipeStateIngredientImpl>
    implements _$$SingleRecipeStateIngredientImplCopyWith<$Res> {
  __$$SingleRecipeStateIngredientImplCopyWithImpl(
      _$SingleRecipeStateIngredientImpl _value,
      $Res Function(_$SingleRecipeStateIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_$SingleRecipeStateIngredientImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<SingleRecipeStateIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$SingleRecipeStateIngredientImpl
    implements _SingleRecipeStateIngredient {
  const _$SingleRecipeStateIngredientImpl(
      {required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required this.family});

  @override
  final Option<Uri> imageUrl;
  @override
  final String ingredientId;
  @override
  final String slug;
  @override
  final String displayedName;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;
  @override
  final Option<SingleRecipeStateIngredientFamily> family;

  @override
  String toString() {
    return 'SingleRecipeStateIngredient(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateIngredientImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, ingredientId, slug,
      displayedName, amount, unit, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateIngredientImplCopyWith<_$SingleRecipeStateIngredientImpl>
      get copyWith => __$$SingleRecipeStateIngredientImplCopyWithImpl<
          _$SingleRecipeStateIngredientImpl>(this, _$identity);
}

abstract class _SingleRecipeStateIngredient
    implements SingleRecipeStateIngredient {
  const factory _SingleRecipeStateIngredient(
          {required final Option<Uri> imageUrl,
          required final String ingredientId,
          required final String slug,
          required final String displayedName,
          required final Option<double> amount,
          required final Option<String> unit,
          required final Option<SingleRecipeStateIngredientFamily> family}) =
      _$SingleRecipeStateIngredientImpl;

  @override
  Option<Uri> get imageUrl;
  @override
  String get ingredientId;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  Option<SingleRecipeStateIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$SingleRecipeStateIngredientImplCopyWith<_$SingleRecipeStateIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeStateIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeStateIngredientFamilyCopyWith<SingleRecipeStateIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeStateIngredientFamilyCopyWith<$Res> {
  factory $SingleRecipeStateIngredientFamilyCopyWith(
          SingleRecipeStateIngredientFamily value,
          $Res Function(SingleRecipeStateIngredientFamily) then) =
      _$SingleRecipeStateIngredientFamilyCopyWithImpl<$Res,
          SingleRecipeStateIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$SingleRecipeStateIngredientFamilyCopyWithImpl<$Res,
        $Val extends SingleRecipeStateIngredientFamily>
    implements $SingleRecipeStateIngredientFamilyCopyWith<$Res> {
  _$SingleRecipeStateIngredientFamilyCopyWithImpl(this._value, this._then);

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
abstract class _$$SingleRecipeStateIngredientFamilyImplCopyWith<$Res>
    implements $SingleRecipeStateIngredientFamilyCopyWith<$Res> {
  factory _$$SingleRecipeStateIngredientFamilyImplCopyWith(
          _$SingleRecipeStateIngredientFamilyImpl value,
          $Res Function(_$SingleRecipeStateIngredientFamilyImpl) then) =
      __$$SingleRecipeStateIngredientFamilyImplCopyWithImpl<$Res>;
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
class __$$SingleRecipeStateIngredientFamilyImplCopyWithImpl<$Res>
    extends _$SingleRecipeStateIngredientFamilyCopyWithImpl<$Res,
        _$SingleRecipeStateIngredientFamilyImpl>
    implements _$$SingleRecipeStateIngredientFamilyImplCopyWith<$Res> {
  __$$SingleRecipeStateIngredientFamilyImplCopyWithImpl(
      _$SingleRecipeStateIngredientFamilyImpl _value,
      $Res Function(_$SingleRecipeStateIngredientFamilyImpl) _then)
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
    return _then(_$SingleRecipeStateIngredientFamilyImpl(
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

class _$SingleRecipeStateIngredientFamilyImpl
    implements _SingleRecipeStateIngredientFamily {
  const _$SingleRecipeStateIngredientFamilyImpl(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

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
    return 'SingleRecipeStateIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleRecipeStateIngredientFamilyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconPath, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleRecipeStateIngredientFamilyImplCopyWith<
          _$SingleRecipeStateIngredientFamilyImpl>
      get copyWith => __$$SingleRecipeStateIngredientFamilyImplCopyWithImpl<
          _$SingleRecipeStateIngredientFamilyImpl>(this, _$identity);
}

abstract class _SingleRecipeStateIngredientFamily
    implements SingleRecipeStateIngredientFamily {
  const factory _SingleRecipeStateIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$SingleRecipeStateIngredientFamilyImpl;

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
  _$$SingleRecipeStateIngredientFamilyImplCopyWith<
          _$SingleRecipeStateIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
