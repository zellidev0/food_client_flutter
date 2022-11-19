import 'package:food_client/home/home_controller.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_model.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'recipe_parser_service.g.dart';

abstract class RecipeParserServiceAggregator implements HomeRecipeParserService,  ProfileRecipeParserService {

}

class RecipeParserService extends RecipeParserServiceAggregator {
  @override
  RecipeParserModel build() => RecipeParserModel();

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes() {
    // TODO: implement fetchAllRecipes
    throw UnimplementedError();
  }

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings() {
    // TODO: implement fetchAllThings
    throw UnimplementedError();
  }
}
