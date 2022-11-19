import 'package:food_client/home/home_model.dart';
import 'package:food_client/home/home_view.dart';
import 'package:food_client/providers.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_model.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_service.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class HomeControllerImplementation extends HomeController {
  @override
  HomeModel build() {
    final HomeWebClientService x = ref.watch(homeWebClientServiceProvider);
    final HomeRecipeParserService y = ref.watch(
      homeRecipeParserServiceProvider,
    );
    return HomeModel();
  }

  @override
  Option<bool> doSomething() {
    throw UnimplementedError();
  }

  @override
  Option<bool> doSomethingElse() {
    throw UnimplementedError();
  }
}

abstract class HomeWebClientService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes();
}

abstract class HomeRecipeParserService {
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes();
}
