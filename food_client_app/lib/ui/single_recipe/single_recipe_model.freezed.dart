// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleRecipeModel {
  String get recipeId => throw _privateConstructorUsedError;
  ViewState<SingleRecipeModelRecipe> get recipe =>
      throw _privateConstructorUsedError;
  Option<int> get selectedYield => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelCopyWith<SingleRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelCopyWith<$Res> {
  factory $SingleRecipeModelCopyWith(
          SingleRecipeModel value, $Res Function(SingleRecipeModel) then) =
      _$SingleRecipeModelCopyWithImpl<$Res, SingleRecipeModel>;
  @useResult
  $Res call(
      {String recipeId,
      ViewState<SingleRecipeModelRecipe> recipe,
      Option<int> selectedYield});

  $ViewStateCopyWith<SingleRecipeModelRecipe, $Res> get recipe;
}

/// @nodoc
class _$SingleRecipeModelCopyWithImpl<$Res, $Val extends SingleRecipeModel>
    implements $SingleRecipeModelCopyWith<$Res> {
  _$SingleRecipeModelCopyWithImpl(this._value, this._then);

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
              as ViewState<SingleRecipeModelRecipe>,
      selectedYield: null == selectedYield
          ? _value.selectedYield
          : selectedYield // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<SingleRecipeModelRecipe, $Res> get recipe {
    return $ViewStateCopyWith<SingleRecipeModelRecipe, $Res>(_value.recipe,
        (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SingleRecipeModelCopyWith<$Res>
    implements $SingleRecipeModelCopyWith<$Res> {
  factory _$$_SingleRecipeModelCopyWith(_$_SingleRecipeModel value,
          $Res Function(_$_SingleRecipeModel) then) =
      __$$_SingleRecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      ViewState<SingleRecipeModelRecipe> recipe,
      Option<int> selectedYield});

  @override
  $ViewStateCopyWith<SingleRecipeModelRecipe, $Res> get recipe;
}

/// @nodoc
class __$$_SingleRecipeModelCopyWithImpl<$Res>
    extends _$SingleRecipeModelCopyWithImpl<$Res, _$_SingleRecipeModel>
    implements _$$_SingleRecipeModelCopyWith<$Res> {
  __$$_SingleRecipeModelCopyWithImpl(
      _$_SingleRecipeModel _value, $Res Function(_$_SingleRecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? recipe = null,
    Object? selectedYield = null,
  }) {
    return _then(_$_SingleRecipeModel(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as ViewState<SingleRecipeModelRecipe>,
      selectedYield: null == selectedYield
          ? _value.selectedYield
          : selectedYield // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_SingleRecipeModel implements _SingleRecipeModel {
  const _$_SingleRecipeModel(
      {required this.recipeId,
      required this.recipe,
      required this.selectedYield});

  @override
  final String recipeId;
  @override
  final ViewState<SingleRecipeModelRecipe> recipe;
  @override
  final Option<int> selectedYield;

  @override
  String toString() {
    return 'SingleRecipeModel(recipeId: $recipeId, recipe: $recipe, selectedYield: $selectedYield)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModel &&
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
  _$$_SingleRecipeModelCopyWith<_$_SingleRecipeModel> get copyWith =>
      __$$_SingleRecipeModelCopyWithImpl<_$_SingleRecipeModel>(
          this, _$identity);
}

abstract class _SingleRecipeModel implements SingleRecipeModel {
  const factory _SingleRecipeModel(
      {required final String recipeId,
      required final ViewState<SingleRecipeModelRecipe> recipe,
      required final Option<int> selectedYield}) = _$_SingleRecipeModel;

  @override
  String get recipeId;
  @override
  ViewState<SingleRecipeModelRecipe> get recipe;
  @override
  Option<int> get selectedYield;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelCopyWith<_$_SingleRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelRecipe {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  SingleRecipeModelDisplayedAttributes get displayedAttributes =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  Option<Duration> get totalCookingTime => throw _privateConstructorUsedError;
  List<SingleRecipeModelYield> get yields => throw _privateConstructorUsedError;
  List<SingleRecipeModelTag> get tags => throw _privateConstructorUsedError;
  List<SingleRecipeModelStep> get steps => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelRecipeCopyWith<SingleRecipeModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelRecipeCopyWith<$Res> {
  factory $SingleRecipeModelRecipeCopyWith(SingleRecipeModelRecipe value,
          $Res Function(SingleRecipeModelRecipe) then) =
      _$SingleRecipeModelRecipeCopyWithImpl<$Res, SingleRecipeModelRecipe>;
  @useResult
  $Res call(
      {String id,
      String slug,
      SingleRecipeModelDisplayedAttributes displayedAttributes,
      int difficulty,
      Option<Duration> totalCookingTime,
      List<SingleRecipeModelYield> yields,
      List<SingleRecipeModelTag> tags,
      List<SingleRecipeModelStep> steps,
      Option<Uri> imageUrl,
      Option<Uri> imagePath});

  $SingleRecipeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class _$SingleRecipeModelRecipeCopyWithImpl<$Res,
        $Val extends SingleRecipeModelRecipe>
    implements $SingleRecipeModelRecipeCopyWith<$Res> {
  _$SingleRecipeModelRecipeCopyWithImpl(this._value, this._then);

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
              as SingleRecipeModelDisplayedAttributes,
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
              as List<SingleRecipeModelYield>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeModelTag>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeModelStep>,
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
  $SingleRecipeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes {
    return $SingleRecipeModelDisplayedAttributesCopyWith<$Res>(
        _value.displayedAttributes, (value) {
      return _then(_value.copyWith(displayedAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SingleRecipeModelRecipeCopyWith<$Res>
    implements $SingleRecipeModelRecipeCopyWith<$Res> {
  factory _$$_SingleRecipeModelRecipeCopyWith(_$_SingleRecipeModelRecipe value,
          $Res Function(_$_SingleRecipeModelRecipe) then) =
      __$$_SingleRecipeModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String slug,
      SingleRecipeModelDisplayedAttributes displayedAttributes,
      int difficulty,
      Option<Duration> totalCookingTime,
      List<SingleRecipeModelYield> yields,
      List<SingleRecipeModelTag> tags,
      List<SingleRecipeModelStep> steps,
      Option<Uri> imageUrl,
      Option<Uri> imagePath});

  @override
  $SingleRecipeModelDisplayedAttributesCopyWith<$Res> get displayedAttributes;
}

/// @nodoc
class __$$_SingleRecipeModelRecipeCopyWithImpl<$Res>
    extends _$SingleRecipeModelRecipeCopyWithImpl<$Res,
        _$_SingleRecipeModelRecipe>
    implements _$$_SingleRecipeModelRecipeCopyWith<$Res> {
  __$$_SingleRecipeModelRecipeCopyWithImpl(_$_SingleRecipeModelRecipe _value,
      $Res Function(_$_SingleRecipeModelRecipe) _then)
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
    return _then(_$_SingleRecipeModelRecipe(
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
              as SingleRecipeModelDisplayedAttributes,
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
              as List<SingleRecipeModelYield>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeModelTag>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<SingleRecipeModelStep>,
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

class _$_SingleRecipeModelRecipe implements _SingleRecipeModelRecipe {
  const _$_SingleRecipeModelRecipe(
      {required this.id,
      required this.slug,
      required this.displayedAttributes,
      required this.difficulty,
      required this.totalCookingTime,
      required final List<SingleRecipeModelYield> yields,
      required final List<SingleRecipeModelTag> tags,
      required final List<SingleRecipeModelStep> steps,
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
  final SingleRecipeModelDisplayedAttributes displayedAttributes;
  @override
  final int difficulty;
  @override
  final Option<Duration> totalCookingTime;
  final List<SingleRecipeModelYield> _yields;
  @override
  List<SingleRecipeModelYield> get yields {
    if (_yields is EqualUnmodifiableListView) return _yields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yields);
  }

  final List<SingleRecipeModelTag> _tags;
  @override
  List<SingleRecipeModelTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<SingleRecipeModelStep> _steps;
  @override
  List<SingleRecipeModelStep> get steps {
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
    return 'SingleRecipeModelRecipe(id: $id, slug: $slug, displayedAttributes: $displayedAttributes, difficulty: $difficulty, totalCookingTime: $totalCookingTime, yields: $yields, tags: $tags, steps: $steps, imageUrl: $imageUrl, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelRecipe &&
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
  _$$_SingleRecipeModelRecipeCopyWith<_$_SingleRecipeModelRecipe>
      get copyWith =>
          __$$_SingleRecipeModelRecipeCopyWithImpl<_$_SingleRecipeModelRecipe>(
              this, _$identity);
}

abstract class _SingleRecipeModelRecipe implements SingleRecipeModelRecipe {
  const factory _SingleRecipeModelRecipe(
      {required final String id,
      required final String slug,
      required final SingleRecipeModelDisplayedAttributes displayedAttributes,
      required final int difficulty,
      required final Option<Duration> totalCookingTime,
      required final List<SingleRecipeModelYield> yields,
      required final List<SingleRecipeModelTag> tags,
      required final List<SingleRecipeModelStep> steps,
      required final Option<Uri> imageUrl,
      required final Option<Uri> imagePath}) = _$_SingleRecipeModelRecipe;

  @override
  String get id;
  @override
  String get slug;
  @override
  SingleRecipeModelDisplayedAttributes get displayedAttributes;
  @override
  int get difficulty;
  @override
  Option<Duration> get totalCookingTime;
  @override
  List<SingleRecipeModelYield> get yields;
  @override
  List<SingleRecipeModelTag> get tags;
  @override
  List<SingleRecipeModelStep> get steps;
  @override
  Option<Uri> get imageUrl;
  @override
  Option<Uri> get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelRecipeCopyWith<_$_SingleRecipeModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelDisplayedAttributes {
  String get name => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Option<String> get descriptionMarkdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelDisplayedAttributesCopyWith<
          SingleRecipeModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelDisplayedAttributesCopyWith<$Res> {
  factory $SingleRecipeModelDisplayedAttributesCopyWith(
          SingleRecipeModelDisplayedAttributes value,
          $Res Function(SingleRecipeModelDisplayedAttributes) then) =
      _$SingleRecipeModelDisplayedAttributesCopyWithImpl<$Res,
          SingleRecipeModelDisplayedAttributes>;
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class _$SingleRecipeModelDisplayedAttributesCopyWithImpl<$Res,
        $Val extends SingleRecipeModelDisplayedAttributes>
    implements $SingleRecipeModelDisplayedAttributesCopyWith<$Res> {
  _$SingleRecipeModelDisplayedAttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$_SingleRecipeModelDisplayedAttributesCopyWith<$Res>
    implements $SingleRecipeModelDisplayedAttributesCopyWith<$Res> {
  factory _$$_SingleRecipeModelDisplayedAttributesCopyWith(
          _$_SingleRecipeModelDisplayedAttributes value,
          $Res Function(_$_SingleRecipeModelDisplayedAttributes) then) =
      __$$_SingleRecipeModelDisplayedAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String headline,
      String description,
      Option<String> descriptionMarkdown});
}

/// @nodoc
class __$$_SingleRecipeModelDisplayedAttributesCopyWithImpl<$Res>
    extends _$SingleRecipeModelDisplayedAttributesCopyWithImpl<$Res,
        _$_SingleRecipeModelDisplayedAttributes>
    implements _$$_SingleRecipeModelDisplayedAttributesCopyWith<$Res> {
  __$$_SingleRecipeModelDisplayedAttributesCopyWithImpl(
      _$_SingleRecipeModelDisplayedAttributes _value,
      $Res Function(_$_SingleRecipeModelDisplayedAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? headline = null,
    Object? description = null,
    Object? descriptionMarkdown = null,
  }) {
    return _then(_$_SingleRecipeModelDisplayedAttributes(
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

class _$_SingleRecipeModelDisplayedAttributes
    implements _SingleRecipeModelDisplayedAttributes {
  const _$_SingleRecipeModelDisplayedAttributes(
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
    return 'SingleRecipeModelDisplayedAttributes(name: $name, headline: $headline, description: $description, descriptionMarkdown: $descriptionMarkdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelDisplayedAttributes &&
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
  _$$_SingleRecipeModelDisplayedAttributesCopyWith<
          _$_SingleRecipeModelDisplayedAttributes>
      get copyWith => __$$_SingleRecipeModelDisplayedAttributesCopyWithImpl<
          _$_SingleRecipeModelDisplayedAttributes>(this, _$identity);
}

abstract class _SingleRecipeModelDisplayedAttributes
    implements SingleRecipeModelDisplayedAttributes {
  const factory _SingleRecipeModelDisplayedAttributes(
          {required final String name,
          required final String headline,
          required final String description,
          required final Option<String> descriptionMarkdown}) =
      _$_SingleRecipeModelDisplayedAttributes;

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
  _$$_SingleRecipeModelDisplayedAttributesCopyWith<
          _$_SingleRecipeModelDisplayedAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelStep {
  String get instructionMarkdown => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelStepCopyWith<SingleRecipeModelStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelStepCopyWith<$Res> {
  factory $SingleRecipeModelStepCopyWith(SingleRecipeModelStep value,
          $Res Function(SingleRecipeModelStep) then) =
      _$SingleRecipeModelStepCopyWithImpl<$Res, SingleRecipeModelStep>;
  @useResult
  $Res call({String instructionMarkdown, Option<Uri> imageUrl});
}

/// @nodoc
class _$SingleRecipeModelStepCopyWithImpl<$Res,
        $Val extends SingleRecipeModelStep>
    implements $SingleRecipeModelStepCopyWith<$Res> {
  _$SingleRecipeModelStepCopyWithImpl(this._value, this._then);

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
abstract class _$$_SingleRecipeModelStepCopyWith<$Res>
    implements $SingleRecipeModelStepCopyWith<$Res> {
  factory _$$_SingleRecipeModelStepCopyWith(_$_SingleRecipeModelStep value,
          $Res Function(_$_SingleRecipeModelStep) then) =
      __$$_SingleRecipeModelStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String instructionMarkdown, Option<Uri> imageUrl});
}

/// @nodoc
class __$$_SingleRecipeModelStepCopyWithImpl<$Res>
    extends _$SingleRecipeModelStepCopyWithImpl<$Res, _$_SingleRecipeModelStep>
    implements _$$_SingleRecipeModelStepCopyWith<$Res> {
  __$$_SingleRecipeModelStepCopyWithImpl(_$_SingleRecipeModelStep _value,
      $Res Function(_$_SingleRecipeModelStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionMarkdown = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_SingleRecipeModelStep(
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

class _$_SingleRecipeModelStep implements _SingleRecipeModelStep {
  const _$_SingleRecipeModelStep(
      {required this.instructionMarkdown, required this.imageUrl});

  @override
  final String instructionMarkdown;
  @override
  final Option<Uri> imageUrl;

  @override
  String toString() {
    return 'SingleRecipeModelStep(instructionMarkdown: $instructionMarkdown, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelStep &&
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
  _$$_SingleRecipeModelStepCopyWith<_$_SingleRecipeModelStep> get copyWith =>
      __$$_SingleRecipeModelStepCopyWithImpl<_$_SingleRecipeModelStep>(
          this, _$identity);
}

abstract class _SingleRecipeModelStep implements SingleRecipeModelStep {
  const factory _SingleRecipeModelStep(
      {required final String instructionMarkdown,
      required final Option<Uri> imageUrl}) = _$_SingleRecipeModelStep;

  @override
  String get instructionMarkdown;
  @override
  Option<Uri> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelStepCopyWith<_$_SingleRecipeModelStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelIngredient {
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  Option<SingleRecipeModelIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelIngredientCopyWith<SingleRecipeModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelIngredientCopyWith<$Res> {
  factory $SingleRecipeModelIngredientCopyWith(
          SingleRecipeModelIngredient value,
          $Res Function(SingleRecipeModelIngredient) then) =
      _$SingleRecipeModelIngredientCopyWithImpl<$Res,
          SingleRecipeModelIngredient>;
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<SingleRecipeModelIngredientFamily> family});
}

/// @nodoc
class _$SingleRecipeModelIngredientCopyWithImpl<$Res,
        $Val extends SingleRecipeModelIngredient>
    implements $SingleRecipeModelIngredientCopyWith<$Res> {
  _$SingleRecipeModelIngredientCopyWithImpl(this._value, this._then);

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
              as Option<SingleRecipeModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleRecipeModelIngredientCopyWith<$Res>
    implements $SingleRecipeModelIngredientCopyWith<$Res> {
  factory _$$_SingleRecipeModelIngredientCopyWith(
          _$_SingleRecipeModelIngredient value,
          $Res Function(_$_SingleRecipeModelIngredient) then) =
      __$$_SingleRecipeModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<SingleRecipeModelIngredientFamily> family});
}

/// @nodoc
class __$$_SingleRecipeModelIngredientCopyWithImpl<$Res>
    extends _$SingleRecipeModelIngredientCopyWithImpl<$Res,
        _$_SingleRecipeModelIngredient>
    implements _$$_SingleRecipeModelIngredientCopyWith<$Res> {
  __$$_SingleRecipeModelIngredientCopyWithImpl(
      _$_SingleRecipeModelIngredient _value,
      $Res Function(_$_SingleRecipeModelIngredient) _then)
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
    return _then(_$_SingleRecipeModelIngredient(
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
              as Option<SingleRecipeModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$_SingleRecipeModelIngredient implements _SingleRecipeModelIngredient {
  const _$_SingleRecipeModelIngredient(
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
  final Option<SingleRecipeModelIngredientFamily> family;

  @override
  String toString() {
    return 'SingleRecipeModelIngredient(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelIngredient &&
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
  _$$_SingleRecipeModelIngredientCopyWith<_$_SingleRecipeModelIngredient>
      get copyWith => __$$_SingleRecipeModelIngredientCopyWithImpl<
          _$_SingleRecipeModelIngredient>(this, _$identity);
}

abstract class _SingleRecipeModelIngredient
    implements SingleRecipeModelIngredient {
  const factory _SingleRecipeModelIngredient(
          {required final Option<Uri> imageUrl,
          required final String ingredientId,
          required final String slug,
          required final String displayedName,
          required final Option<double> amount,
          required final Option<String> unit,
          required final Option<SingleRecipeModelIngredientFamily> family}) =
      _$_SingleRecipeModelIngredient;

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
  Option<SingleRecipeModelIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelIngredientCopyWith<_$_SingleRecipeModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelIngredientFamilyCopyWith<SingleRecipeModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelIngredientFamilyCopyWith<$Res> {
  factory $SingleRecipeModelIngredientFamilyCopyWith(
          SingleRecipeModelIngredientFamily value,
          $Res Function(SingleRecipeModelIngredientFamily) then) =
      _$SingleRecipeModelIngredientFamilyCopyWithImpl<$Res,
          SingleRecipeModelIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$SingleRecipeModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends SingleRecipeModelIngredientFamily>
    implements $SingleRecipeModelIngredientFamilyCopyWith<$Res> {
  _$SingleRecipeModelIngredientFamilyCopyWithImpl(this._value, this._then);

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
abstract class _$$_SingleRecipeModelIngredientFamilyCopyWith<$Res>
    implements $SingleRecipeModelIngredientFamilyCopyWith<$Res> {
  factory _$$_SingleRecipeModelIngredientFamilyCopyWith(
          _$_SingleRecipeModelIngredientFamily value,
          $Res Function(_$_SingleRecipeModelIngredientFamily) then) =
      __$$_SingleRecipeModelIngredientFamilyCopyWithImpl<$Res>;
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
class __$$_SingleRecipeModelIngredientFamilyCopyWithImpl<$Res>
    extends _$SingleRecipeModelIngredientFamilyCopyWithImpl<$Res,
        _$_SingleRecipeModelIngredientFamily>
    implements _$$_SingleRecipeModelIngredientFamilyCopyWith<$Res> {
  __$$_SingleRecipeModelIngredientFamilyCopyWithImpl(
      _$_SingleRecipeModelIngredientFamily _value,
      $Res Function(_$_SingleRecipeModelIngredientFamily) _then)
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
    return _then(_$_SingleRecipeModelIngredientFamily(
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

class _$_SingleRecipeModelIngredientFamily
    implements _SingleRecipeModelIngredientFamily {
  const _$_SingleRecipeModelIngredientFamily(
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
    return 'SingleRecipeModelIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelIngredientFamily &&
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
  _$$_SingleRecipeModelIngredientFamilyCopyWith<
          _$_SingleRecipeModelIngredientFamily>
      get copyWith => __$$_SingleRecipeModelIngredientFamilyCopyWithImpl<
          _$_SingleRecipeModelIngredientFamily>(this, _$identity);
}

abstract class _SingleRecipeModelIngredientFamily
    implements SingleRecipeModelIngredientFamily {
  const factory _SingleRecipeModelIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$_SingleRecipeModelIngredientFamily;

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
  _$$_SingleRecipeModelIngredientFamilyCopyWith<
          _$_SingleRecipeModelIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelYield {
  bool get isInShoppingCart => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  List<SingleRecipeModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelYieldCopyWith<SingleRecipeModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelYieldCopyWith<$Res> {
  factory $SingleRecipeModelYieldCopyWith(SingleRecipeModelYield value,
          $Res Function(SingleRecipeModelYield) then) =
      _$SingleRecipeModelYieldCopyWithImpl<$Res, SingleRecipeModelYield>;
  @useResult
  $Res call(
      {bool isInShoppingCart,
      int servings,
      List<SingleRecipeModelIngredient> ingredients});
}

/// @nodoc
class _$SingleRecipeModelYieldCopyWithImpl<$Res,
        $Val extends SingleRecipeModelYield>
    implements $SingleRecipeModelYieldCopyWith<$Res> {
  _$SingleRecipeModelYieldCopyWithImpl(this._value, this._then);

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
              as List<SingleRecipeModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SingleRecipeModelYieldCopyWith<$Res>
    implements $SingleRecipeModelYieldCopyWith<$Res> {
  factory _$$_SingleRecipeModelYieldCopyWith(_$_SingleRecipeModelYield value,
          $Res Function(_$_SingleRecipeModelYield) then) =
      __$$_SingleRecipeModelYieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInShoppingCart,
      int servings,
      List<SingleRecipeModelIngredient> ingredients});
}

/// @nodoc
class __$$_SingleRecipeModelYieldCopyWithImpl<$Res>
    extends _$SingleRecipeModelYieldCopyWithImpl<$Res,
        _$_SingleRecipeModelYield>
    implements _$$_SingleRecipeModelYieldCopyWith<$Res> {
  __$$_SingleRecipeModelYieldCopyWithImpl(_$_SingleRecipeModelYield _value,
      $Res Function(_$_SingleRecipeModelYield) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInShoppingCart = null,
    Object? servings = null,
    Object? ingredients = null,
  }) {
    return _then(_$_SingleRecipeModelYield(
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
              as List<SingleRecipeModelIngredient>,
    ));
  }
}

/// @nodoc

class _$_SingleRecipeModelYield implements _SingleRecipeModelYield {
  const _$_SingleRecipeModelYield(
      {required this.isInShoppingCart,
      required this.servings,
      required final List<SingleRecipeModelIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final bool isInShoppingCart;
  @override
  final int servings;
  final List<SingleRecipeModelIngredient> _ingredients;
  @override
  List<SingleRecipeModelIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'SingleRecipeModelYield(isInShoppingCart: $isInShoppingCart, servings: $servings, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelYield &&
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
  _$$_SingleRecipeModelYieldCopyWith<_$_SingleRecipeModelYield> get copyWith =>
      __$$_SingleRecipeModelYieldCopyWithImpl<_$_SingleRecipeModelYield>(
          this, _$identity);
}

abstract class _SingleRecipeModelYield implements SingleRecipeModelYield {
  const factory _SingleRecipeModelYield(
          {required final bool isInShoppingCart,
          required final int servings,
          required final List<SingleRecipeModelIngredient> ingredients}) =
      _$_SingleRecipeModelYield;

  @override
  bool get isInShoppingCart;
  @override
  int get servings;
  @override
  List<SingleRecipeModelIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelYieldCopyWith<_$_SingleRecipeModelYield> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleRecipeModelTag {
  String get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleRecipeModelTagCopyWith<SingleRecipeModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleRecipeModelTagCopyWith<$Res> {
  factory $SingleRecipeModelTagCopyWith(SingleRecipeModelTag value,
          $Res Function(SingleRecipeModelTag) then) =
      _$SingleRecipeModelTagCopyWithImpl<$Res, SingleRecipeModelTag>;
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class _$SingleRecipeModelTagCopyWithImpl<$Res,
        $Val extends SingleRecipeModelTag>
    implements $SingleRecipeModelTagCopyWith<$Res> {
  _$SingleRecipeModelTagCopyWithImpl(this._value, this._then);

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
abstract class _$$_SingleRecipeModelTagCopyWith<$Res>
    implements $SingleRecipeModelTagCopyWith<$Res> {
  factory _$$_SingleRecipeModelTagCopyWith(_$_SingleRecipeModelTag value,
          $Res Function(_$_SingleRecipeModelTag) then) =
      __$$_SingleRecipeModelTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String slug, String displayedName});
}

/// @nodoc
class __$$_SingleRecipeModelTagCopyWithImpl<$Res>
    extends _$SingleRecipeModelTagCopyWithImpl<$Res, _$_SingleRecipeModelTag>
    implements _$$_SingleRecipeModelTagCopyWith<$Res> {
  __$$_SingleRecipeModelTagCopyWithImpl(_$_SingleRecipeModelTag _value,
      $Res Function(_$_SingleRecipeModelTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? displayedName = null,
  }) {
    return _then(_$_SingleRecipeModelTag(
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

class _$_SingleRecipeModelTag implements _SingleRecipeModelTag {
  const _$_SingleRecipeModelTag(
      {required this.id, required this.slug, required this.displayedName});

  @override
  final String id;
  @override
  final String slug;
  @override
  final String displayedName;

  @override
  String toString() {
    return 'SingleRecipeModelTag(id: $id, slug: $slug, displayedName: $displayedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleRecipeModelTag &&
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
  _$$_SingleRecipeModelTagCopyWith<_$_SingleRecipeModelTag> get copyWith =>
      __$$_SingleRecipeModelTagCopyWithImpl<_$_SingleRecipeModelTag>(
          this, _$identity);
}

abstract class _SingleRecipeModelTag implements SingleRecipeModelTag {
  const factory _SingleRecipeModelTag(
      {required final String id,
      required final String slug,
      required final String displayedName}) = _$_SingleRecipeModelTag;

  @override
  String get id;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  @JsonKey(ignore: true)
  _$$_SingleRecipeModelTagCopyWith<_$_SingleRecipeModelTag> get copyWith =>
      throw _privateConstructorUsedError;
}
