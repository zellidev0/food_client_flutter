// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  ViewState<CartStateData> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({ViewState<CartStateData> data});

  $ViewStateCopyWith<CartStateData, $Res> get data;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewState<CartStateData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<CartStateData, $Res> get data {
    return $ViewStateCopyWith<CartStateData, $Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<CartStateData> data});

  @override
  $ViewStateCopyWith<CartStateData, $Res> get data;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CartStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewState<CartStateData>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl({required this.data});

  @override
  final ViewState<CartStateData> data;

  @override
  String toString() {
    return 'CartState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({required final ViewState<CartStateData> data}) =
      _$CartStateImpl;

  @override
  ViewState<CartStateData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateData {
  List<CartStateRecipe> get recipes => throw _privateConstructorUsedError;
  List<CartStateIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  bool get combineIngredients => throw _privateConstructorUsedError;
  CartStateSorting get sorting => throw _privateConstructorUsedError;
  List<CartStateSortingUnit> get sortingUnits =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateDataCopyWith<CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateDataCopyWith<$Res> {
  factory $CartStateDataCopyWith(
          CartStateData value, $Res Function(CartStateData) then) =
      _$CartStateDataCopyWithImpl<$Res, CartStateData>;
  @useResult
  $Res call(
      {List<CartStateRecipe> recipes,
      List<CartStateIngredient> ingredients,
      bool combineIngredients,
      CartStateSorting sorting,
      List<CartStateSortingUnit> sortingUnits});

  $CartStateSortingCopyWith<$Res> get sorting;
}

/// @nodoc
class _$CartStateDataCopyWithImpl<$Res, $Val extends CartStateData>
    implements $CartStateDataCopyWith<$Res> {
  _$CartStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
    Object? sorting = null,
    Object? sortingUnits = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartStateRecipe>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartStateIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as CartStateSorting,
      sortingUnits: null == sortingUnits
          ? _value.sortingUnits
          : sortingUnits // ignore: cast_nullable_to_non_nullable
              as List<CartStateSortingUnit>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartStateSortingCopyWith<$Res> get sorting {
    return $CartStateSortingCopyWith<$Res>(_value.sorting, (value) {
      return _then(_value.copyWith(sorting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateDataImplCopyWith<$Res>
    implements $CartStateDataCopyWith<$Res> {
  factory _$$CartStateDataImplCopyWith(
          _$CartStateDataImpl value, $Res Function(_$CartStateDataImpl) then) =
      __$$CartStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartStateRecipe> recipes,
      List<CartStateIngredient> ingredients,
      bool combineIngredients,
      CartStateSorting sorting,
      List<CartStateSortingUnit> sortingUnits});

  @override
  $CartStateSortingCopyWith<$Res> get sorting;
}

/// @nodoc
class __$$CartStateDataImplCopyWithImpl<$Res>
    extends _$CartStateDataCopyWithImpl<$Res, _$CartStateDataImpl>
    implements _$$CartStateDataImplCopyWith<$Res> {
  __$$CartStateDataImplCopyWithImpl(
      _$CartStateDataImpl _value, $Res Function(_$CartStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
    Object? sorting = null,
    Object? sortingUnits = null,
  }) {
    return _then(_$CartStateDataImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartStateRecipe>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartStateIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as CartStateSorting,
      sortingUnits: null == sortingUnits
          ? _value._sortingUnits
          : sortingUnits // ignore: cast_nullable_to_non_nullable
              as List<CartStateSortingUnit>,
    ));
  }
}

/// @nodoc

class _$CartStateDataImpl implements _CartStateData {
  const _$CartStateDataImpl(
      {required final List<CartStateRecipe> recipes,
      required final List<CartStateIngredient> ingredients,
      required this.combineIngredients,
      required this.sorting,
      required final List<CartStateSortingUnit> sortingUnits})
      : _recipes = recipes,
        _ingredients = ingredients,
        _sortingUnits = sortingUnits;

  final List<CartStateRecipe> _recipes;
  @override
  List<CartStateRecipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<CartStateIngredient> _ingredients;
  @override
  List<CartStateIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final bool combineIngredients;
  @override
  final CartStateSorting sorting;
  final List<CartStateSortingUnit> _sortingUnits;
  @override
  List<CartStateSortingUnit> get sortingUnits {
    if (_sortingUnits is EqualUnmodifiableListView) return _sortingUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortingUnits);
  }

  @override
  String toString() {
    return 'CartStateData(recipes: $recipes, ingredients: $ingredients, combineIngredients: $combineIngredients, sorting: $sorting, sortingUnits: $sortingUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateDataImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.combineIngredients, combineIngredients) ||
                other.combineIngredients == combineIngredients) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            const DeepCollectionEquality()
                .equals(other._sortingUnits, _sortingUnits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_ingredients),
      combineIngredients,
      sorting,
      const DeepCollectionEquality().hash(_sortingUnits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateDataImplCopyWith<_$CartStateDataImpl> get copyWith =>
      __$$CartStateDataImplCopyWithImpl<_$CartStateDataImpl>(this, _$identity);
}

abstract class _CartStateData implements CartStateData {
  const factory _CartStateData(
          {required final List<CartStateRecipe> recipes,
          required final List<CartStateIngredient> ingredients,
          required final bool combineIngredients,
          required final CartStateSorting sorting,
          required final List<CartStateSortingUnit> sortingUnits}) =
      _$CartStateDataImpl;

  @override
  List<CartStateRecipe> get recipes;
  @override
  List<CartStateIngredient> get ingredients;
  @override
  bool get combineIngredients;
  @override
  CartStateSorting get sorting;
  @override
  List<CartStateSortingUnit> get sortingUnits;
  @override
  @JsonKey(ignore: true)
  _$$CartStateDataImplCopyWith<_$CartStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateSorting {
  List<String> get ingredientIds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartStateSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateSortingSelectedUnit value) unit,
    required TResult Function(CartStateSortingCustom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingSelectedUnit value)? unit,
    TResult? Function(CartStateSortingCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateSortingSelectedUnit value)? unit,
    TResult Function(CartStateSortingCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateSortingCopyWith<CartStateSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateSortingCopyWith<$Res> {
  factory $CartStateSortingCopyWith(
          CartStateSorting value, $Res Function(CartStateSorting) then) =
      _$CartStateSortingCopyWithImpl<$Res, CartStateSorting>;
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class _$CartStateSortingCopyWithImpl<$Res, $Val extends CartStateSorting>
    implements $CartStateSortingCopyWith<$Res> {
  _$CartStateSortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_value.copyWith(
      ingredientIds: null == ingredientIds
          ? _value.ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateSortingSelectedUnitImplCopyWith<$Res>
    implements $CartStateSortingCopyWith<$Res> {
  factory _$$CartStateSortingSelectedUnitImplCopyWith(
          _$CartStateSortingSelectedUnitImpl value,
          $Res Function(_$CartStateSortingSelectedUnitImpl) then) =
      __$$CartStateSortingSelectedUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateSortingUnit active, List<String> ingredientIds});

  $CartStateSortingUnitCopyWith<$Res> get active;
}

/// @nodoc
class __$$CartStateSortingSelectedUnitImplCopyWithImpl<$Res>
    extends _$CartStateSortingCopyWithImpl<$Res,
        _$CartStateSortingSelectedUnitImpl>
    implements _$$CartStateSortingSelectedUnitImplCopyWith<$Res> {
  __$$CartStateSortingSelectedUnitImplCopyWithImpl(
      _$CartStateSortingSelectedUnitImpl _value,
      $Res Function(_$CartStateSortingSelectedUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? ingredientIds = null,
  }) {
    return _then(_$CartStateSortingSelectedUnitImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as CartStateSortingUnit,
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartStateSortingUnitCopyWith<$Res> get active {
    return $CartStateSortingUnitCopyWith<$Res>(_value.active, (value) {
      return _then(_value.copyWith(active: value));
    });
  }
}

/// @nodoc

class _$CartStateSortingSelectedUnitImpl
    implements CartStateSortingSelectedUnit {
  const _$CartStateSortingSelectedUnitImpl(
      {required this.active, required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  @override
  final CartStateSortingUnit active;
  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartStateSorting.unit(active: $active, ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateSortingSelectedUnitImpl &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, active, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateSortingSelectedUnitImplCopyWith<
          _$CartStateSortingSelectedUnitImpl>
      get copyWith => __$$CartStateSortingSelectedUnitImplCopyWithImpl<
          _$CartStateSortingSelectedUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartStateSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return unit(active, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return unit?.call(active, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(active, ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateSortingSelectedUnit value) unit,
    required TResult Function(CartStateSortingCustom value) custom,
  }) {
    return unit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingSelectedUnit value)? unit,
    TResult? Function(CartStateSortingCustom value)? custom,
  }) {
    return unit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateSortingSelectedUnit value)? unit,
    TResult Function(CartStateSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(this);
    }
    return orElse();
  }
}

abstract class CartStateSortingSelectedUnit implements CartStateSorting {
  const factory CartStateSortingSelectedUnit(
          {required final CartStateSortingUnit active,
          required final List<String> ingredientIds}) =
      _$CartStateSortingSelectedUnitImpl;

  CartStateSortingUnit get active;
  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartStateSortingSelectedUnitImplCopyWith<
          _$CartStateSortingSelectedUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartStateSortingCustomImplCopyWith<$Res>
    implements $CartStateSortingCopyWith<$Res> {
  factory _$$CartStateSortingCustomImplCopyWith(
          _$CartStateSortingCustomImpl value,
          $Res Function(_$CartStateSortingCustomImpl) then) =
      __$$CartStateSortingCustomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class __$$CartStateSortingCustomImplCopyWithImpl<$Res>
    extends _$CartStateSortingCopyWithImpl<$Res, _$CartStateSortingCustomImpl>
    implements _$$CartStateSortingCustomImplCopyWith<$Res> {
  __$$CartStateSortingCustomImplCopyWithImpl(
      _$CartStateSortingCustomImpl _value,
      $Res Function(_$CartStateSortingCustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_$CartStateSortingCustomImpl(
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartStateSortingCustomImpl implements CartStateSortingCustom {
  const _$CartStateSortingCustomImpl(
      {required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartStateSorting.custom(ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateSortingCustomImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateSortingCustomImplCopyWith<_$CartStateSortingCustomImpl>
      get copyWith => __$$CartStateSortingCustomImplCopyWithImpl<
          _$CartStateSortingCustomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartStateSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return custom(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return custom?.call(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateSortingSelectedUnit value) unit,
    required TResult Function(CartStateSortingCustom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartStateSortingSelectedUnit value)? unit,
    TResult? Function(CartStateSortingCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateSortingSelectedUnit value)? unit,
    TResult Function(CartStateSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CartStateSortingCustom implements CartStateSorting {
  const factory CartStateSortingCustom(
          {required final List<String> ingredientIds}) =
      _$CartStateSortingCustomImpl;

  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartStateSortingCustomImplCopyWith<_$CartStateSortingCustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateSortingUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CartStateSortingIngredientFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateSortingUnitCopyWith<CartStateSortingUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateSortingUnitCopyWith<$Res> {
  factory $CartStateSortingUnitCopyWith(CartStateSortingUnit value,
          $Res Function(CartStateSortingUnit) then) =
      _$CartStateSortingUnitCopyWithImpl<$Res, CartStateSortingUnit>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartStateSortingIngredientFamily> ingredientFamilies});
}

/// @nodoc
class _$CartStateSortingUnitCopyWithImpl<$Res,
        $Val extends CartStateSortingUnit>
    implements $CartStateSortingUnitCopyWith<$Res> {
  _$CartStateSortingUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
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
      ingredientFamilies: null == ingredientFamilies
          ? _value.ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartStateSortingIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateSortingUnitImplCopyWith<$Res>
    implements $CartStateSortingUnitCopyWith<$Res> {
  factory _$$CartStateSortingUnitImplCopyWith(_$CartStateSortingUnitImpl value,
          $Res Function(_$CartStateSortingUnitImpl) then) =
      __$$CartStateSortingUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartStateSortingIngredientFamily> ingredientFamilies});
}

/// @nodoc
class __$$CartStateSortingUnitImplCopyWithImpl<$Res>
    extends _$CartStateSortingUnitCopyWithImpl<$Res, _$CartStateSortingUnitImpl>
    implements _$$CartStateSortingUnitImplCopyWith<$Res> {
  __$$CartStateSortingUnitImplCopyWithImpl(_$CartStateSortingUnitImpl _value,
      $Res Function(_$CartStateSortingUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$CartStateSortingUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartStateSortingIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$CartStateSortingUnitImpl implements _CartStateSortingUnit {
  const _$CartStateSortingUnitImpl(
      {required this.id,
      required this.name,
      required final List<CartStateSortingIngredientFamily> ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
  @override
  final String name;
  final List<CartStateSortingIngredientFamily> _ingredientFamilies;
  @override
  List<CartStateSortingIngredientFamily> get ingredientFamilies {
    if (_ingredientFamilies is EqualUnmodifiableListView)
      return _ingredientFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'CartStateSortingUnit(id: $id, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateSortingUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateSortingUnitImplCopyWith<_$CartStateSortingUnitImpl>
      get copyWith =>
          __$$CartStateSortingUnitImplCopyWithImpl<_$CartStateSortingUnitImpl>(
              this, _$identity);
}

abstract class _CartStateSortingUnit implements CartStateSortingUnit {
  const factory _CartStateSortingUnit(
      {required final String id,
      required final String name,
      required final List<CartStateSortingIngredientFamily>
          ingredientFamilies}) = _$CartStateSortingUnitImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CartStateSortingIngredientFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$CartStateSortingUnitImplCopyWith<_$CartStateSortingUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateSortingIngredientFamily {
  String get name => throw _privateConstructorUsedError;
  List<String> get familyIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateSortingIngredientFamilyCopyWith<CartStateSortingIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateSortingIngredientFamilyCopyWith<$Res> {
  factory $CartStateSortingIngredientFamilyCopyWith(
          CartStateSortingIngredientFamily value,
          $Res Function(CartStateSortingIngredientFamily) then) =
      _$CartStateSortingIngredientFamilyCopyWithImpl<$Res,
          CartStateSortingIngredientFamily>;
  @useResult
  $Res call({String name, List<String> familyIds});
}

/// @nodoc
class _$CartStateSortingIngredientFamilyCopyWithImpl<$Res,
        $Val extends CartStateSortingIngredientFamily>
    implements $CartStateSortingIngredientFamilyCopyWith<$Res> {
  _$CartStateSortingIngredientFamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyIds = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyIds: null == familyIds
          ? _value.familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateSortingIngredientFamilyImplCopyWith<$Res>
    implements $CartStateSortingIngredientFamilyCopyWith<$Res> {
  factory _$$CartStateSortingIngredientFamilyImplCopyWith(
          _$CartStateSortingIngredientFamilyImpl value,
          $Res Function(_$CartStateSortingIngredientFamilyImpl) then) =
      __$$CartStateSortingIngredientFamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> familyIds});
}

/// @nodoc
class __$$CartStateSortingIngredientFamilyImplCopyWithImpl<$Res>
    extends _$CartStateSortingIngredientFamilyCopyWithImpl<$Res,
        _$CartStateSortingIngredientFamilyImpl>
    implements _$$CartStateSortingIngredientFamilyImplCopyWith<$Res> {
  __$$CartStateSortingIngredientFamilyImplCopyWithImpl(
      _$CartStateSortingIngredientFamilyImpl _value,
      $Res Function(_$CartStateSortingIngredientFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyIds = null,
  }) {
    return _then(_$CartStateSortingIngredientFamilyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartStateSortingIngredientFamilyImpl
    implements _CartStateSortingIngredientFamily {
  const _$CartStateSortingIngredientFamilyImpl(
      {required this.name, required final List<String> familyIds})
      : _familyIds = familyIds;

  @override
  final String name;
  final List<String> _familyIds;
  @override
  List<String> get familyIds {
    if (_familyIds is EqualUnmodifiableListView) return _familyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  String toString() {
    return 'CartStateSortingIngredientFamily(name: $name, familyIds: $familyIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateSortingIngredientFamilyImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_familyIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateSortingIngredientFamilyImplCopyWith<
          _$CartStateSortingIngredientFamilyImpl>
      get copyWith => __$$CartStateSortingIngredientFamilyImplCopyWithImpl<
          _$CartStateSortingIngredientFamilyImpl>(this, _$identity);
}

abstract class _CartStateSortingIngredientFamily
    implements CartStateSortingIngredientFamily {
  const factory _CartStateSortingIngredientFamily(
          {required final String name, required final List<String> familyIds}) =
      _$CartStateSortingIngredientFamilyImpl;

  @override
  String get name;
  @override
  List<String> get familyIds;
  @override
  @JsonKey(ignore: true)
  _$$CartStateSortingIngredientFamilyImplCopyWith<
          _$CartStateSortingIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateRecipe {
  String get title => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateRecipeCopyWith<CartStateRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateRecipeCopyWith<$Res> {
  factory $CartStateRecipeCopyWith(
          CartStateRecipe value, $Res Function(CartStateRecipe) then) =
      _$CartStateRecipeCopyWithImpl<$Res, CartStateRecipe>;
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class _$CartStateRecipeCopyWithImpl<$Res, $Val extends CartStateRecipe>
    implements $CartStateRecipeCopyWith<$Res> {
  _$CartStateRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateRecipeImplCopyWith<$Res>
    implements $CartStateRecipeCopyWith<$Res> {
  factory _$$CartStateRecipeImplCopyWith(_$CartStateRecipeImpl value,
          $Res Function(_$CartStateRecipeImpl) then) =
      __$$CartStateRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class __$$CartStateRecipeImplCopyWithImpl<$Res>
    extends _$CartStateRecipeCopyWithImpl<$Res, _$CartStateRecipeImpl>
    implements _$$CartStateRecipeImplCopyWith<$Res> {
  __$$CartStateRecipeImplCopyWithImpl(
      _$CartStateRecipeImpl _value, $Res Function(_$CartStateRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CartStateRecipeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$CartStateRecipeImpl implements _CartStateRecipe {
  const _$CartStateRecipeImpl(
      {required this.title,
      required this.recipeId,
      required this.serving,
      required this.imageUrl});

  @override
  final String title;
  @override
  final String recipeId;
  @override
  final int serving;
  @override
  final Option<Uri> imageUrl;

  @override
  String toString() {
    return 'CartStateRecipe(title: $title, recipeId: $recipeId, serving: $serving, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateRecipeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, recipeId, serving, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateRecipeImplCopyWith<_$CartStateRecipeImpl> get copyWith =>
      __$$CartStateRecipeImplCopyWithImpl<_$CartStateRecipeImpl>(
          this, _$identity);
}

abstract class _CartStateRecipe implements CartStateRecipe {
  const factory _CartStateRecipe(
      {required final String title,
      required final String recipeId,
      required final int serving,
      required final Option<Uri> imageUrl}) = _$CartStateRecipeImpl;

  @override
  String get title;
  @override
  String get recipeId;
  @override
  int get serving;
  @override
  Option<Uri> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CartStateRecipeImplCopyWith<_$CartStateRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateIngredient {
  CartStateIngredientInfo get ingredient => throw _privateConstructorUsedError;
  bool get isTickedOff => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateIngredientCopyWith<CartStateIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateIngredientCopyWith<$Res> {
  factory $CartStateIngredientCopyWith(
          CartStateIngredient value, $Res Function(CartStateIngredient) then) =
      _$CartStateIngredientCopyWithImpl<$Res, CartStateIngredient>;
  @useResult
  $Res call({CartStateIngredientInfo ingredient, bool isTickedOff});

  $CartStateIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$CartStateIngredientCopyWithImpl<$Res, $Val extends CartStateIngredient>
    implements $CartStateIngredientCopyWith<$Res> {
  _$CartStateIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartStateIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartStateIngredientInfoCopyWith<$Res> get ingredient {
    return $CartStateIngredientInfoCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateIngredientImplCopyWith<$Res>
    implements $CartStateIngredientCopyWith<$Res> {
  factory _$$CartStateIngredientImplCopyWith(_$CartStateIngredientImpl value,
          $Res Function(_$CartStateIngredientImpl) then) =
      __$$CartStateIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateIngredientInfo ingredient, bool isTickedOff});

  @override
  $CartStateIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$CartStateIngredientImplCopyWithImpl<$Res>
    extends _$CartStateIngredientCopyWithImpl<$Res, _$CartStateIngredientImpl>
    implements _$$CartStateIngredientImplCopyWith<$Res> {
  __$$CartStateIngredientImplCopyWithImpl(_$CartStateIngredientImpl _value,
      $Res Function(_$CartStateIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_$CartStateIngredientImpl(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartStateIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartStateIngredientImpl implements _CartStateIngredient {
  const _$CartStateIngredientImpl(
      {required this.ingredient, required this.isTickedOff});

  @override
  final CartStateIngredientInfo ingredient;
  @override
  final bool isTickedOff;

  @override
  String toString() {
    return 'CartStateIngredient(ingredient: $ingredient, isTickedOff: $isTickedOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateIngredientImpl &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, isTickedOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateIngredientImplCopyWith<_$CartStateIngredientImpl> get copyWith =>
      __$$CartStateIngredientImplCopyWithImpl<_$CartStateIngredientImpl>(
          this, _$identity);
}

abstract class _CartStateIngredient implements CartStateIngredient {
  const factory _CartStateIngredient(
      {required final CartStateIngredientInfo ingredient,
      required final bool isTickedOff}) = _$CartStateIngredientImpl;

  @override
  CartStateIngredientInfo get ingredient;
  @override
  bool get isTickedOff;
  @override
  @JsonKey(ignore: true)
  _$$CartStateIngredientImplCopyWith<_$CartStateIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateIngredientInfo {
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  List<String> get recipeIds => throw _privateConstructorUsedError;
  Option<CartStateIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateIngredientInfoCopyWith<CartStateIngredientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateIngredientInfoCopyWith<$Res> {
  factory $CartStateIngredientInfoCopyWith(CartStateIngredientInfo value,
          $Res Function(CartStateIngredientInfo) then) =
      _$CartStateIngredientInfoCopyWithImpl<$Res, CartStateIngredientInfo>;
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds,
      Option<CartStateIngredientFamily> family});
}

/// @nodoc
class _$CartStateIngredientInfoCopyWithImpl<$Res,
        $Val extends CartStateIngredientInfo>
    implements $CartStateIngredientInfoCopyWith<$Res> {
  _$CartStateIngredientInfoCopyWithImpl(this._value, this._then);

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
    Object? recipeIds = null,
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
      recipeIds: null == recipeIds
          ? _value.recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartStateIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateIngredientInfoImplCopyWith<$Res>
    implements $CartStateIngredientInfoCopyWith<$Res> {
  factory _$$CartStateIngredientInfoImplCopyWith(
          _$CartStateIngredientInfoImpl value,
          $Res Function(_$CartStateIngredientInfoImpl) then) =
      __$$CartStateIngredientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds,
      Option<CartStateIngredientFamily> family});
}

/// @nodoc
class __$$CartStateIngredientInfoImplCopyWithImpl<$Res>
    extends _$CartStateIngredientInfoCopyWithImpl<$Res,
        _$CartStateIngredientInfoImpl>
    implements _$$CartStateIngredientInfoImplCopyWith<$Res> {
  __$$CartStateIngredientInfoImplCopyWithImpl(
      _$CartStateIngredientInfoImpl _value,
      $Res Function(_$CartStateIngredientInfoImpl) _then)
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
    Object? recipeIds = null,
    Object? family = null,
  }) {
    return _then(_$CartStateIngredientInfoImpl(
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
      recipeIds: null == recipeIds
          ? _value._recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartStateIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$CartStateIngredientInfoImpl implements _CartStateIngredientInfo {
  const _$CartStateIngredientInfoImpl(
      {required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required final List<String> recipeIds,
      required this.family})
      : _recipeIds = recipeIds;

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
  final List<String> _recipeIds;
  @override
  List<String> get recipeIds {
    if (_recipeIds is EqualUnmodifiableListView) return _recipeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeIds);
  }

  @override
  final Option<CartStateIngredientFamily> family;

  @override
  String toString() {
    return 'CartStateIngredientInfo(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, recipeIds: $recipeIds, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateIngredientInfoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other._recipeIds, _recipeIds) &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      ingredientId,
      slug,
      displayedName,
      amount,
      unit,
      const DeepCollectionEquality().hash(_recipeIds),
      family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateIngredientInfoImplCopyWith<_$CartStateIngredientInfoImpl>
      get copyWith => __$$CartStateIngredientInfoImplCopyWithImpl<
          _$CartStateIngredientInfoImpl>(this, _$identity);
}

abstract class _CartStateIngredientInfo implements CartStateIngredientInfo {
  const factory _CartStateIngredientInfo(
          {required final Option<Uri> imageUrl,
          required final String ingredientId,
          required final String slug,
          required final String displayedName,
          required final Option<double> amount,
          required final Option<String> unit,
          required final List<String> recipeIds,
          required final Option<CartStateIngredientFamily> family}) =
      _$CartStateIngredientInfoImpl;

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
  List<String> get recipeIds;
  @override
  Option<CartStateIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$CartStateIngredientInfoImplCopyWith<_$CartStateIngredientInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartStateIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateIngredientFamilyCopyWith<CartStateIngredientFamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateIngredientFamilyCopyWith<$Res> {
  factory $CartStateIngredientFamilyCopyWith(CartStateIngredientFamily value,
          $Res Function(CartStateIngredientFamily) then) =
      _$CartStateIngredientFamilyCopyWithImpl<$Res, CartStateIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$CartStateIngredientFamilyCopyWithImpl<$Res,
        $Val extends CartStateIngredientFamily>
    implements $CartStateIngredientFamilyCopyWith<$Res> {
  _$CartStateIngredientFamilyCopyWithImpl(this._value, this._then);

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
abstract class _$$CartStateIngredientFamilyImplCopyWith<$Res>
    implements $CartStateIngredientFamilyCopyWith<$Res> {
  factory _$$CartStateIngredientFamilyImplCopyWith(
          _$CartStateIngredientFamilyImpl value,
          $Res Function(_$CartStateIngredientFamilyImpl) then) =
      __$$CartStateIngredientFamilyImplCopyWithImpl<$Res>;
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
class __$$CartStateIngredientFamilyImplCopyWithImpl<$Res>
    extends _$CartStateIngredientFamilyCopyWithImpl<$Res,
        _$CartStateIngredientFamilyImpl>
    implements _$$CartStateIngredientFamilyImplCopyWith<$Res> {
  __$$CartStateIngredientFamilyImplCopyWithImpl(
      _$CartStateIngredientFamilyImpl _value,
      $Res Function(_$CartStateIngredientFamilyImpl) _then)
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
    return _then(_$CartStateIngredientFamilyImpl(
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

class _$CartStateIngredientFamilyImpl implements _CartStateIngredientFamily {
  const _$CartStateIngredientFamilyImpl(
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
    return 'CartStateIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateIngredientFamilyImpl &&
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
  _$$CartStateIngredientFamilyImplCopyWith<_$CartStateIngredientFamilyImpl>
      get copyWith => __$$CartStateIngredientFamilyImplCopyWithImpl<
          _$CartStateIngredientFamilyImpl>(this, _$identity);
}

abstract class _CartStateIngredientFamily implements CartStateIngredientFamily {
  const factory _CartStateIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$CartStateIngredientFamilyImpl;

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
  _$$CartStateIngredientFamilyImplCopyWith<_$CartStateIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
