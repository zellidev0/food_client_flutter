import 'package:food_client/home/home_recipe_parser.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:fpdart/fpdart.dart';

abstract class RecipeParserServiceAggregator
    implements HomeRecipeParserService, ProfileRecipeParserService {}

class RecipeParserService extends RecipeParserServiceAggregator {
  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings() {
    throw UnimplementedError();
  }

  @override
  TaskEither<Exception, HomeRecipeParserModel> parseRecipes({
    required final Map<String, dynamic> payload,
  }) {
    throw UnimplementedError();
  }
}
