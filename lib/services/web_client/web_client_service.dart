import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'web_client_service.g.dart';

@riverpod
WebClientServiceAggregator webClientService(
  final WebClientServiceRef ref,
) =>
    WebClientService();

abstract class WebClientServiceAggregator
    implements HomeWebClientService, SingleRecipeWebClientService {}

class WebClientService implements WebClientServiceAggregator {
  final Uri baseUrl = Uri.parse('https://www.hellofresh.de/gw/api/recipes');
  final Map<String, String> headers = <String, String>{
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
  };

  @override
  TaskEither<Exception, List<HomeWebClientModelRecipe>> fetchAllRecipes() =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(baseUrl, headers: headers),
        (final Object error, final _) => Exception(
          'Failed to fetch recipes: $error',
        ),
      ).flatMap(
        (final String response) =>
            Either<Exception, WebClientModelApiResponse>.tryCatch(
          () => WebClientModelApiResponse.fromJson(jsonDecode(response)),
          (final Object error, final StackTrace stacktrace) => Exception(
            'Failed to parse response: $error, $stacktrace',
          ),
        )
                .map(
                  (final WebClientModelApiResponse response) =>
                      _mapToHomeWebClientModelRecipe(response: response),
                )
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(
          baseUrl.replace(path: '${baseUrl.path}/$recipeId'),
          headers: headers,
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch recipe with id: $recipeId: $error',
        ),
      ).flatMap(
        (final String response) =>
            Either<Exception, WebClientModelRecipe>.tryCatch(
          () => WebClientModelRecipe.fromJson(jsonDecode(response)),
          (final Object error, final _) => Exception(
            'Failed to parse response: $error',
          ),
        )
                .map(
                  (final WebClientModelRecipe responseRecipe) =>
                      _mapToSingleRecipeWebClientModelRecipe(
                    recipe: responseRecipe,
                  ),
                )
                .toTaskEither(),
      );
}

SingleRecipeWebClientModelRecipe _mapToSingleRecipeWebClientModelRecipe({
  required final WebClientModelRecipe recipe,
}) =>
    SingleRecipeWebClientModelRecipe(
      id: recipe.id,
      displayedAttributes: SingleRecipeWebClientModelDisplayedAttributes(
        name: recipe.name,
        headline: recipe.headline,
        description: recipe.description,
        descriptionMarkdown: recipe.descriptionMarkdown,
      ),
      difficulty: recipe.difficulty,
      yields: recipe.yields
          .map(
            (final WebClientModelYield yield) => yield.yield.map(
              (final int servings) => SingleRecipeWebClientModelYield(
                yield: servings,
                ingredients: yield.ingredients
                    .map(
                      (final WebClientModelYieldIngredient ingredient) =>
                          optionOf(
                        recipe.ingredients.firstWhereOrNull(
                          (
                            final WebClientModelIngredient otherIngredient,
                          ) =>
                              otherIngredient.id == ingredient.id,
                        ),
                      ).map(
                        (final WebClientModelIngredient otherIngredient) =>
                            SingleRecipeWebClientModelIngredient(
                          id: ingredient.id,
                          amount: ingredient.amount.map(
                            (final num number) => number.toDouble(),
                          ),
                          unit: ingredient.unit,
                          imagePath: otherIngredient.imagePath.map(Uri.parse),
                          slug: otherIngredient.slug,
                          displayedName: otherIngredient.name,
                        ),
                      ),
                    )
                    .whereType<Some<SingleRecipeWebClientModelIngredient>>()
                    .map(
                      (
                        final Some<SingleRecipeWebClientModelIngredient>
                            ingredient,
                      ) =>
                          ingredient.value,
                    )
                    .toList(),
              ),
            ),
          )
          .whereType<Some<SingleRecipeWebClientModelYield>>()
          .map(
            (final Some<SingleRecipeWebClientModelYield> yield) => yield.value,
          )
          .toList(),
      tags: recipe.tags
          .map(
            (final WebClientModelTag tag) => SingleRecipeWebClientModelTag(
              id: tag.id,
              slug: tag.slug,
              displayedName: tag.name,
            ),
          )
          .toList(),
      imagePath: recipe.imagePath.map(Uri.parse),
      steps: recipe.steps
          .map(
            (final WebClientModelStep step) => SingleRecipeWebClientModelStep(
              instructionMarkdown: step.instructionsMarkdown,
              imagePath: none(),
            ),
          )
          .toList(),
    );

List<HomeWebClientModelRecipe> _mapToHomeWebClientModelRecipe({
  required final WebClientModelApiResponse response,
}) =>
    response.items
        .map(
          (final WebClientModelRecipe recipe) => HomeWebClientModelRecipe(
            id: recipe.id,
            displayedAttributes: HomeWebClientModelDisplayedAttributes(
              name: recipe.name,
              headline: recipe.headline,
              description: recipe.description,
              descriptionMarkdown: recipe.descriptionMarkdown,
            ),
            difficulty: recipe.difficulty,
            ingredients: recipe.ingredients
                .map(
                  (final WebClientModelIngredient ingredient) =>
                      HomeWebClientModelIngredient(
                    id: ingredient.id,
                    slug: ingredient.slug,
                    displayedName: ingredient.name,
                  ),
                )
                .toList(),
            yields: recipe.yields
                .map(
                  (final WebClientModelYield yield) => yield.yield.map(
                    (final int servings) => HomeWebClientModelYield(
                      yield: servings,
                      yieldIngredient: yield.ingredients
                          .map(
                            (final WebClientModelYieldIngredient ingredient) =>
                                HomeWebClientModelYieldIngredient(
                              id: ingredient.id,
                              amount: ingredient.amount.map(
                                (final num number) => number.toDouble(),
                              ),
                              unit: ingredient.unit,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                )
                .whereType<Some<HomeWebClientModelYield>>()
                .map(
                  (final Some<HomeWebClientModelYield> yield) => yield.value,
                )
                .toList(),
            tags: recipe.tags
                .map(
                  (final WebClientModelTag tag) => HomeWebClientModelTag(
                    id: tag.id,
                    slug: tag.slug,
                    displayedName: tag.name,
                  ),
                )
                .toList(),
            imagePath: recipe.imagePath.map(Uri.parse),
          ),
        )
        .toList();

// void main(List<String> arguments) async {
//   var url = 'https://www.hellofresh.de/gw/api/recipes?take=XXX&skip=YYY';
//   var json = [];
//
//   for (int i = 0; i < 186339; i += 1) {
//     var response = await http.get(
//       Uri.parse(url
//           .replaceAll('XXX', 50.toString())
//           .replaceAll('YYY', (i * 50).toString())),
//       headers: {
//         'Authorization':
//         'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
//       },
//     );
//     await File('recipes/recipes_${i * 50}.json').writeAsString(
//       response.body,
//     );
//   }
//
//   exit(0);
// }
