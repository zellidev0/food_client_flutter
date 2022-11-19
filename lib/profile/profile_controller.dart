import 'package:food_client/profile/profile_model.dart';
import 'package:food_client/profile/profile_view.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_model.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_service.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class ProfileControllerImplementation extends ProfileController {
  @override
  ProfileModel build() {
    // ref
    //   ..watch(webClientServiceProvider)
    //   ..watch(recipeParserServiceProvider);
    return ProfileModel();
  }
}

abstract class ProfileRecipeParserService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings();
}

abstract class ProfileWebClientService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings();
}
