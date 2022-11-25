import 'dart:convert';
import 'dart:core';

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
  final Uri apiBaseUrl = Uri.parse('https://www.hellofresh.de/gw/api');
  final Map<String, String> headers = <String, String>{
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
  };

  @override
  TaskEither<Exception, List<HomeWebClientModelRecipe>> fetchAllRecipes({
    required final String country,
    final Option<int> limit = const None<int>(),
    final Option<List<String>> tags = const None<List<String>>(),
    final Option<List<String>> cuisines = const None<List<String>>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(
          _recipesQueryApiUrl(
            country: country,
            limit: limit,
          ),
          headers: headers,
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch recipes: $error',
        ),
      ).flatMap(
        (final String response) =>
            Either<Exception, WebClientModelRecipeApiRecipeResponse>.tryCatch(
          () => WebClientModelRecipeApiRecipeResponse.fromJson(
            jsonDecode(response),
          ),
          (final Object error, final StackTrace stacktrace) => Exception(
            'Failed to parse response: $error, $stacktrace',
          ),
        )
                .map(
                  (final WebClientModelRecipeApiRecipeResponse response) =>
                      _mapToHomeWebClientModelRecipe(
                    response: response,
                    country: country,
                  ),
                )
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(
          _tagsApiUrl(
            country: country,
            take: take,
          ),
          headers: headers,
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch recipes: $error',
        ),
      ).flatMap(
        (final String response) =>
            Either<Exception, WebClientModelRecipeApiTagResponse>.tryCatch(
          () =>
              WebClientModelRecipeApiTagResponse.fromJson(jsonDecode(response)),
          (final Object error, final StackTrace stacktrace) => Exception(
            'Failed to parse response: $error, $stacktrace',
          ),
        )
                .map(
                  (final WebClientModelRecipeApiTagResponse response) =>
                      response.items
                          .map(
                            (final WebClientModelTag tag) =>
                                HomeWebClientModelTag(
                              id: tag.id,
                              slug: tag.slug,
                              displayedName: tag.name,
                              numberOfRecipes: optionOf(
                                tag.numberOfRecipesByCountry[country],
                              ).getOrElse(() => 0),
                            ),
                          )
                          .toList(),
                )
                .toTaskEither(),
      );

  @override
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(
          _singleRecipeApiUrl(recipeId: recipeId),
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
  @override
  TaskEither<Exception, List<HomeWebClientModelCuisine>> fetchAllCuisines({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(
          _cuisinesApiUrl(
            country: country,
            take: take,
          ),
          headers: headers,
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch recipes: $error',
        ),
      ).flatMap(
        (final String response) =>
            Either<Exception, WebClientModelRecipeApiCuisineResponse>.tryCatch(
          () => WebClientModelRecipeApiCuisineResponse.fromJson(
            jsonDecode(response),
          ),
          (final Object error, final StackTrace stacktrace) => Exception(
            'Failed to parse response: $error, $stacktrace',
          ),
        )
                .map(
                  (final WebClientModelRecipeApiCuisineResponse response) =>
                      response.items
                          .map(
                            (final WebClientModelCuisine cuisine) =>
                                HomeWebClientModelCuisine(
                              id: cuisine.id,
                              slug: cuisine.slug,
                              type: cuisine.type,
                              iconPath: cuisine.iconPath.map(Uri.parse),
                              displayedName: cuisine.name,
                              numberOfRecipes: cuisine.usage,
                            ),
                          )
                          .toList(),
                )
                .toTaskEither(),
      );

  Uri get _recipesApiUrl => Uri.parse('${apiBaseUrl.toString()}/recipes');
  Uri _tagsApiUrl({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      Uri.parse('${apiBaseUrl.toString()}/tags').replace(
        queryParameters: buildQueryParams(
          map: <String, Either<Option<String>, Option<List<String>>>>{
            'country': Either<Option<String>, Option<List<String>>>.left(
              some(country),
            ),
            'take': Either<Option<String>, Option<List<String>>>.left(
              take.map((final int amount) => amount.toString()),
            ),
          },
        ),
      );

  Uri _cuisinesApiUrl({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      Uri.parse('${apiBaseUrl.toString()}/cuisines').replace(
        queryParameters: buildQueryParams(
          map: <String, Either<Option<String>, Option<List<String>>>>{
            'country': Either<Option<String>, Option<List<String>>>.left(
              some(country),
            ),
            'take': Either<Option<String>, Option<List<String>>>.left(
              take.map((final int amount) => amount.toString()),
            ),
          },
        ),
      );

  Uri _singleRecipeApiUrl({required final String recipeId}) =>
      Uri.parse('$_recipesApiUrl/$recipeId');

  Uri _recipesQueryApiUrl({
    required final String country,
    final Option<int> limit = const None<int>(),
    final Option<List<String>> tags = const None<List<String>>(),
    final Option<List<String>> cuisines = const None<List<String>>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      Uri.parse('$_recipesApiUrl/search').replace(
        queryParameters: buildQueryParams(
          map: <String, Either<Option<String>, Option<List<String>>>>{
            'country': Either<Option<String>, Option<List<String>>>.left(
              some(country),
            ),
            'limit': Either<Option<String>, Option<List<String>>>.left(
              limit.map((final int amount) => amount.toString()),
            ),
            'tags': Either<Option<String>, Option<List<String>>>.right(tags),
            'ingredient': Either<Option<String>, Option<List<String>>>.right(
              ingredients,
            ),
            'cuisines': Either<Option<String>, Option<List<String>>>.right(
              cuisines,
            ),
            'q': Either<Option<String>, Option<List<String>>>.left(searchTerm),
          },
        ),
      );

  Map<String, String> buildQueryParams({
    required final Map<String, Either<Option<String>, Option<List<String>>>>
        map,
  }) =>
      Map<String, String>.fromEntries(
        map.entries
            .map(
              (
                final MapEntry<String,
                        Either<Option<String>, Option<List<String>>>>
                    entry,
              ) =>
                  entry.value.fold(
                (final Option<String> l) => l.fold(
                  none<MapEntry<String, String>>,
                  (final String string) => some<MapEntry<String, String>>(
                    MapEntry<String, String>(entry.key, string),
                  ),
                ),
                (final Option<List<String>> r) => r.fold(
                  none<MapEntry<String, String>>,
                  (final List<String> list) => some<MapEntry<String, String>>(
                    MapEntry<String, String>(
                        entry.key,
                        list.reduce(
                            (final String a, final String b) => '$a,$b')),
                  ),
                ),
              ),
            )
            .toList()
            .whereType<Some<MapEntry<String, String>>>()
            .map(
              (final Some<MapEntry<String, String>> mapEntry) => mapEntry.value,
            ),
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
            (final WebClientModelRecipeTag tag) =>
                SingleRecipeWebClientModelTag(
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
  required final WebClientModelRecipeApiRecipeResponse response,
  required final String country,
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
                  (final WebClientModelRecipeTag tag) => HomeWebClientModelTag(
                    id: tag.id,
                    slug: tag.slug,
                    displayedName: tag.name,
                    numberOfRecipes:
                        optionOf(tag.numberOfRecipesByCountry[country])
                            .getOrElse(() => 0),
                  ),
                )
                .toList(),
            imagePath: recipe.imagePath.map(Uri.parse),
            cuisines: recipe.cuisines
                .map(
                  (final WebClientModelCuisine cuisine) =>
                      HomeWebClientModelCuisine(
                    id: cuisine.id,
                    slug: cuisine.slug,
                    displayedName: cuisine.name,
                    type: cuisine.type,
                    iconPath: cuisine.iconPath.map(Uri.parse),
                    numberOfRecipes: cuisine.usage,
                  ),
                )
                .toList(),
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
