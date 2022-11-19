import 'package:food_client/home/home_model.dart';
import 'package:food_client/home/home_view.dart';
import 'package:food_client/providers.dart';
import 'package:fpdart/fpdart.dart';

class HomeControllerImplementation extends HomeController {
  // ignore: unused_field
  late final HomeWebClientService _webClientService;
  // ignore: unused_field
  late final HomeRecipeParserService _recipeParserService;

  @override
  HomeModel build() {
    _webClientService = ref.watch(homeWebClientServiceProvider);
    _recipeParserService = ref.watch(homeRecipeParserServiceProvider);
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
