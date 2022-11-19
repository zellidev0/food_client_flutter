import 'package:food_client/home/home_controller.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:fpdart/fpdart.dart';

abstract class RecipeParserServiceAggregator
    implements HomeRecipeParserService, ProfileRecipeParserService {}

class RecipeParserService extends RecipeParserServiceAggregator {
  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes() {
    throw UnimplementedError();
  }

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings() {
    throw UnimplementedError();
  }
}
