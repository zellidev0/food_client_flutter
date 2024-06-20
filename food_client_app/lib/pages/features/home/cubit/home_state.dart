import 'package:flutter/material.dart';
import 'package:food_client/pages/common/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required final PagingController<int, HomeStateRecipe> paginationController,
    required final ViewState<List<HomeStateFilter>> availableFilters,
    required final List<Locale> recipeLocales,
  }) = _HomeState;
}

@freezed
class HomeStatePagination with _$HomeStatePagination {
  const factory HomeStatePagination({
    required final bool isCurrentlyFetching,
    required final int skip,
    required final int totalAmountOfRecipes,
  }) = _HomeStatePagination;
}

@freezed
class HomeStateRecipe with _$HomeStateRecipe {
  const factory HomeStateRecipe({
    required final String id,
    required final HomeStateDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeStateIngredient> ingredients,
    required final List<HomeStateYield> yields,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
    required final Uri imageUri,
  }) = _HomeStateRecipe;
}

@freezed
class HomeStateDisplayedAttributes with _$HomeStateDisplayedAttributes {
  const factory HomeStateDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _HomeStateDisplayedAttributes;
}

@freezed
class HomeStateIngredient with _$HomeStateIngredient {
  const factory HomeStateIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeStateIngredient;
}

@freezed
class HomeStateFilter with _$HomeStateFilter {
  const factory HomeStateFilter.tag({
    required final String id,
    required final String displayedName,
    required final String type,
    required final bool isSelected,
    required final Option<int> numberOfRecipes,
  }) = HomeStateFilterTag;

  const factory HomeStateFilter.cuisine({
    required final String id,
    required final String displayedName,
    required final String slug,
    required final Option<String> countryCode,
    required final bool isSelected,
    required final Option<int> numberOfRecipes,
  }) = HomeStateFilterCuisine;
}

@freezed
class HomeStateYield with _$HomeStateYield {
  const factory HomeStateYield({
    required final int yield,
    required final List<HomeStateYieldIngredient> yieldIngredient,
  }) = _HomeStateYield;
}

@freezed
class HomeStateYieldIngredient with _$HomeStateYieldIngredient {
  const factory HomeStateYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _HomeStateYieldIngredient;
}
