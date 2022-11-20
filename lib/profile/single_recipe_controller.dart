import 'package:food_client/profile/single_recipe_model.dart';
import 'package:food_client/profile/single_recipe_view.dart';
import 'package:food_client/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'single_recipe_controller.g.dart';

@riverpod
class SingleRecipeControllerImplementation extends _$SingleRecipeControllerImplementation implements SingleRecipeController {
  // ignore: unused_field
  late final SingleRecipeRecipeParserService _recipeParserService;
  // ignore: unused_field
  late final SingleRecipeWebClientService _webClientService;

  @override
  SingleRecipeModel build() {
    _recipeParserService = ref.watch(profileRecipeParserServiceProvider);
    _webClientService = ref.watch(profileWebClientServiceProvider);
    return SingleRecipeModel();
  }
}

abstract class SingleRecipeRecipeParserService {
}

abstract class SingleRecipeWebClientService {
}
