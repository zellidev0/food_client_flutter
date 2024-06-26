import 'package:food_client/commons/view_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required final PagingController<int, HomeModelRecipe> pagingController,
    required final ViewState<List<HomeModelRecipe>> recipes,
    required final ViewState<List<HomeModelFilter>> filters,
  }) = _HomeModel;
}

@freezed
class HomeModelPagination with _$HomeModelPagination {
  const factory HomeModelPagination({
    required final bool isCurrentlyFetching,
    required final int skip,
    required final int totalAmountOfRecipes,
  }) = _HomeModelPagination;
}

@freezed
class HomeModelRecipe with _$HomeModelRecipe {
  const factory HomeModelRecipe({
    required final String id,
    required final HomeModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeModelIngredient> ingredients,
    required final List<HomeModelYield> yields,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
    required final Uri imageUri,
  }) = _HomeModelRecipe;
}

@freezed
class HomeModelDisplayedAttributes with _$HomeModelDisplayedAttributes {
  const factory HomeModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _HomeModelDisplayedAttributes;
}

@freezed
class HomeModelIngredient with _$HomeModelIngredient {
  const factory HomeModelIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeModelIngredient;
}

@freezed
class HomeModelFilter with _$HomeModelFilter {
  const factory HomeModelFilter.tag({
    required final String id,
    required final String displayedName,
    required final String type,
    required final bool isSelected,
    required final Option<int> numberOfRecipes,
  }) = HomeModelFilterTag;

  const factory HomeModelFilter.cuisine({
    required final String id,
    required final String displayedName,
    required final String slug,
    required final Option<String> countryCode,
    required final bool isSelected,
    required final Option<int> numberOfRecipes,
  }) = HomeModelFilterCuisine;
}

@freezed
class HomeModelYield with _$HomeModelYield {
  const factory HomeModelYield({
    required final int yield,
    required final List<HomeModelYieldIngredient> yieldIngredient,
  }) = _HomeModelYield;
}

@freezed
class HomeModelYieldIngredient with _$HomeModelYieldIngredient {
  const factory HomeModelYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _HomeModelYieldIngredient;
}
