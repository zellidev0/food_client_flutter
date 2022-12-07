import 'package:food_client/ui/home/home_recipe_language_service.dart';

abstract class RecipeLanguageServiceAggregator
    implements HomeRecipeLanguageService {}

class RecipeLanguageService implements RecipeLanguageServiceAggregator {
  @override
  List<String> getSupportedRecipeLanguages() => <String>['DE'];
}
