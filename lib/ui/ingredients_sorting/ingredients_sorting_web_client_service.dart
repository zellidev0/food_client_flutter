import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients_sorting_web_client_service.freezed.dart';

abstract class IngredientsSortingWebClientService {
  TaskEither<Exception, List<IngredientsSortingWebClientModelIngredientFamily>>
      fetchAllIngredientFamilies({
    required final String country,
    final Option<int> take = const None<int>(),
    final Option<int> skip = const None<int>(),
  });
}

@freezed
class IngredientsSortingWebClientModelIngredientFamily
    with _$IngredientsSortingWebClientModelIngredientFamily {
  const factory IngredientsSortingWebClientModelIngredientFamily({
    required final String id,
    required final String type,
    required final Option<Uri> iconPath,
    required final String name,
    required final String slug,
  }) = _IngredientsSortingWebClientModelIngredientFamily;
}
