import 'package:food_client/ui/home/home_recipe_language_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_language_service.g.dart';

@Riverpod(keepAlive: true)
RecipeLanguageServiceAggregator recipeLanguageService(
  final RecipeLanguageServiceRef ref,
) =>
    RecipeLanguageService();

abstract class RecipeLanguageServiceAggregator
    implements HomeRecipeLanguageService {}

class RecipeLanguageService implements RecipeLanguageServiceAggregator {
  @override
  List<String> getSupportedRecipeLanguages() => <String>['DE'];
}
