import 'package:food_client/commons/error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_web_client_service.freezed.dart';
part 'ingredients_sorting_web_client_service.g.dart';

abstract class IngredientsSortingWebClientService {
  TaskEither<MyError, List<IngredientsSortingWebClientModelIngredientSorting>>
      fetchIngredientsSorting();
}

@freezed
class IngredientsSortingWebClientModelIngredientFamily
    with _$IngredientsSortingWebClientModelIngredientFamily {
  const factory IngredientsSortingWebClientModelIngredientFamily.helloFresh({
    required final String helloFreshId,
    required final Option<Uri> iconPath,
  }) = IngredientsSortingWebClientModelIngredientFamilyHelloFresh;
}

@freezed
class IngredientsSortingWebClientModelIngredientSorting
    with _$IngredientsSortingWebClientModelIngredientSorting {
  const factory IngredientsSortingWebClientModelIngredientSorting({
    required final String type,
    required final String name,
    required final Option<Uri> iconPath,
    required final List<String> ingredientFamilyIds,
  }) = _IngredientsSortingWebClientModelIngredientSorting;

  factory IngredientsSortingWebClientModelIngredientSorting.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$IngredientsSortingWebClientModelIngredientSortingFromJson(json);
}
