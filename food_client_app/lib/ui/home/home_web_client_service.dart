import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_web_client_service.freezed.dart';

abstract class HomeWebClientService {
  TaskEither<Exception, HomeWebClientModelRecipeResponse> fetchRecipes({
    required final String country,
    required final int take,
    required final int skip,
    final Option<List<String>> tagIds = const None<List<String>>(),
    final Option<String> cuisineId = const None<String>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  });
  TaskEither<Exception, List<HomeWebClientModelCuisine>> fetchAllCuisines({
    required final String country,
    final Option<int> take = const None<int>(),
  });
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  });
}

@freezed
class HomeWebClientModelRecipeResponse with _$HomeWebClientModelRecipeResponse {
  const factory HomeWebClientModelRecipeResponse({
    required final HomeWebClientModelRecipePagination pagination,
    required final List<HomeWebClientModelRecipe> recipes,
  }) = _HomeWebClientModelRecipeResponse;
}

@freezed
class HomeWebClientModelRecipePagination with _$HomeWebClientModelRecipePagination {
  const factory HomeWebClientModelRecipePagination({
    required final int skip,
    required final int take,
    required final Option<int> total,
  }) = _HomeWebClientModelRecipePagination;
}


@freezed
class HomeWebClientModelRecipe with _$HomeWebClientModelRecipe {
  const factory HomeWebClientModelRecipe({
    required final String id,
    required final HomeWebClientModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeWebClientModelIngredient> ingredients,
    required final List<HomeWebClientModelYield> yields,
    required final List<String> tagIds,
    required final List<String> cuisineIds,
    required final Option<Uri> imagePath,
  }) = _HomeWebClientModelRecipe;
}

@freezed
class HomeWebClientModelDisplayedAttributes
    with _$HomeWebClientModelDisplayedAttributes {
  const factory HomeWebClientModelDisplayedAttributes({
    required final String name,
    required final String headline,
    required final String description,
    required final Option<String> descriptionMarkdown,
  }) = _HomeWebClientModelDisplayedAttributes;
}

@freezed
class HomeWebClientModelIngredient with _$HomeWebClientModelIngredient {
  const factory HomeWebClientModelIngredient({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeWebClientModelIngredient;
}

@freezed
class HomeWebClientModelPagination with _$HomeWebClientModelPagination {
  const factory HomeWebClientModelPagination({
    required final int total,
  }) = _HomeWebClientModelPagination;
}

@freezed
class HomeWebClientModelTag with _$HomeWebClientModelTag {
  const factory HomeWebClientModelTag({
    required final String id,
    required final String type,
    required final String displayedName,
    required final Option<int> numberOfRecipes,
  }) = _HomeWebClientModelTag;
}

@freezed
class HomeWebClientModelCuisine with _$HomeWebClientModelCuisine {
  const factory HomeWebClientModelCuisine({
    required final String id,
    required final Option<Uri> iconPath,
    required final String displayedName,
    required final String slug,
    required final Option<int> numberOfRecipes,
  }) = _HomeWebClientModelCuisine;
}

@freezed
class HomeWebClientModelYield with _$HomeWebClientModelYield {
  const factory HomeWebClientModelYield({
    required final int yield,
    required final List<HomeWebClientModelYieldIngredient> yieldIngredient,
  }) = _HomeWebClientModelYield;
}

@freezed
class HomeWebClientModelYieldIngredient
    with _$HomeWebClientModelYieldIngredient {
  const factory HomeWebClientModelYieldIngredient({
    required final String id,
    required final Option<double> amount,
    required final Option<String> unit,
  }) = _HomeWebClientModelYieldIngredient;
}
