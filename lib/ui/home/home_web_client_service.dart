import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_web_client_service.freezed.dart';

abstract class HomeWebClientService {
  TaskEither<Exception, List<HomeWebClientModelRecipe>> fetchAllRecipes({
    required final String country,
    final Option<int> limit = const None<int>(),
    final Option<List<String>> tags = const None<List<String>>(),
    final Option<List<String>> cuisines = const None<List<String>>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  });
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  });
}

@freezed
class HomeWebClientModelRecipe with _$HomeWebClientModelRecipe {
  const factory HomeWebClientModelRecipe({
    required final String id,
    required final HomeWebClientModelDisplayedAttributes displayedAttributes,
    required final int difficulty,
    required final List<HomeWebClientModelIngredient> ingredients,
    required final List<HomeWebClientModelYield> yields,
    required final List<HomeWebClientModelTag> tags,
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
class HomeWebClientModelTag with _$HomeWebClientModelTag {
  const factory HomeWebClientModelTag({
    required final String id,
    required final String slug,
    required final String displayedName,
  }) = _HomeWebClientModelTag;
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
