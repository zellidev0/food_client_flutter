// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food_client/home/home_recipe_parser.dart';
import 'package:food_client/profile/single_recipe_controller.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_parser_service.g.dart';

@riverpod
RecipeParserService recipeParserService(
  final RecipeParserServiceRef ref,
) =>
    RecipeParserServiceImplementation();

abstract class RecipeParserService
    implements HomeRecipeParserService, SingleRecipeRecipeParserService {}

class RecipeParserServiceImplementation extends RecipeParserService {
  @override
  Either<Exception, List<HomeRecipeParserModelRecipe>> parseRecipes({
    required final Map<String, Object?> payload,
  }) =>
      _parseAllRecipes(payload: payload);

  Either<Exception, List<HomeRecipeParserModelRecipe>> _parseAllRecipes({
    required final Map<String, Object?> payload,
  }) =>
      Either<Exception, List<HomeRecipeParserModelRecipe>>.tryCatch(
        () => (payload['items'] as List<dynamic>)
            .map(
              (final Object? item) => Map<String, Object?>.from(
                jsonDecode(jsonEncode(item)),
              ),
            )
            .map(
              (final Map<String, Object?> recipe) =>
                  _parseSingleRecipe(singleRecipePayload: recipe),
            )
            .where(
              (
                final Either<Exception, HomeRecipeParserModelRecipe>
                    parsedRecipe,
              ) =>
                  parsedRecipe.fold(
                (final Exception l) {
                  debugPrint(l.toString());
                  return false;
                },
                (final HomeRecipeParserModelRecipe r) => true,
              ),
            )
            .whereType<Right<Exception, HomeRecipeParserModelRecipe>>()
            .map(
              (final Right<Exception, HomeRecipeParserModelRecipe> e) =>
                  e.value,
            )
            .toList(),
        (final Object error, final StackTrace s) => Exception(
          'Failed to parse recipes: $error',
        ),
      );

  Either<Exception, HomeRecipeParserModelRecipe> _parseSingleRecipe({
    required final Map<String, Object?> singleRecipePayload,
  }) =>
      Either<Exception, HomeRecipeParserModelRecipe>.tryCatch(
        () => HomeRecipeParserModelRecipe(
          id: singleRecipePayload['id'] as String,
          displayedAttributes: HomeRecipeParserModelDisplayedAttributes(
            name: singleRecipePayload['name'] as String,
            headline: singleRecipePayload['headline'] as String,
            description: singleRecipePayload['description'] as String,
            descriptionMarkdown:
                singleRecipePayload['descriptionMarkdown'] as String,
          ),
          ingredients: (singleRecipePayload['ingredients'] as List<Object?>)
              .map(
                (final Object? ingredient) => Map<String, Object?>.from(
                  jsonDecode(jsonEncode(ingredient)),
                ),
              )
              .map(
                (final Map<String, Object?> ingredient) =>
                    HomeRecipeParserModelIngredient(
                  id: ingredient['id'] as String,
                  slug: ingredient['slug'] as String,
                  displayedName: ingredient['name'] as String,
                ),
              )
              .toList(),
          yields: (singleRecipePayload['yields'] as List<Object?>)
              .map(
                (final Object? yield) =>
                    Map<String, Object>.from(jsonDecode(jsonEncode(yield))),
              )
              .map(
                (final Map<String, Object> yield) => HomeRecipeParserModelYield(
                  yield: yield['yields'] as int,
                  yieldIngredient: (yield['ingredients'] as List<Object?>)
                      .map(
                        (final Object? tag) => Map<String, Object?>.from(
                          jsonDecode(jsonEncode(tag)),
                        ),
                      )
                      .map(
                        (final Map<String, Object?> ingredient) =>
                            HomeRecipeParserModelYieldIngredient(
                          id: ingredient['id'] as String,
                          amount: optionOf(ingredient['amount'] as double?),
                          unit: optionOf(ingredient['unit'] as String?),
                        ),
                      )
                      .toList(),
                ),
              )
              .toList(),
          difficulty: singleRecipePayload['difficulty'] as int,
          tags: (singleRecipePayload['tags'] as List<Object?>)
              .map(
                (final Object? tag) => tag as Map<String, Object?>,
              )
              .map(
                (final Map<String, Object?> tag) => HomeRecipeParserModelTag(
                  id: tag['id'] as String,
                  slug: tag['slug'] as String,
                  displayedName: tag['name'] as String,
                ),
              )
              .toList(),
          imagePath: optionOf(singleRecipePayload['imagePath'] as String?)
              .filter((final String path) => path.isNotEmpty)
              .map(Uri.parse),
        ),
        (final Object error, final StackTrace stackTrace) =>
            Exception('Error decoding payload: $error, $stackTrace'),
      );
}
