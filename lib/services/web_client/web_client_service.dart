import 'dart:core';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/ui/home/home_web_client_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrofit/retrofit.dart';

part 'web_client_service.g.dart';

abstract class WebClientServiceAggregator
    implements HomeWebClientService, SingleRecipeWebClientService {}

@RestApi(baseUrl: '')
abstract class RestClient {
  factory RestClient(final Dio dio, {final String baseUrl}) = _RestClient;

  @GET('/recipes/search')
  Future<WebClientModelRecipeApiRecipeResponse> getRecipes({
    @Query('country') required final String country,
    @Query('ingredient') final List<String>? ingredients,
    @Query('cuisine') final List<String>? cuisines,
    @Query('tag') final List<String>? tags,
    @Query('q') final String? query,
    @Query('take') final int? take,
    @Query('skip') final int? skip,
  });

  @GET('/recipes/{id}')
  Future<WebClientModelRecipe> getSingleRecipe({
    @Path('id') required final String id,
  });

  @GET('/tags')
  Future<WebClientModelRecipeApiTagResponse> getTags({
    @Query('country') required final String country,
    @Query('take') final int? take,
  });

  @GET('/cuisines')
  Future<WebClientModelRecipeApiCuisineResponse> getCuisines({
    @Query('country') required final String country,
    @Query('take') final int? take,
  });
}

class WebClientService implements WebClientServiceAggregator {
  static const String apiBaseUrl1 = 'https://www.hellofresh.de/gw/api';
  static const Map<String, String> headers = <String, String>{
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
  };
  final RestClient client = RestClient(
    Dio(BaseOptions(headers: headers)),
    baseUrl: apiBaseUrl1,
  );

  @override
  TaskEither<Exception, HomeWebClientModelRecipeResponse> fetchRecipes({
    required final String country,
    required final int take,
    required final int skip,
    final Option<List<String>> tags = const None<List<String>>(),
    final Option<List<String>> cuisines = const None<List<String>>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      TaskEither<Exception, WebClientModelRecipeApiRecipeResponse>.tryCatch(
        () async => await client.getRecipes(
          country: country,
          take: take,
          skip: skip,
          tags: tags.toNullable(),
          cuisines: cuisines.toNullable(),
          ingredients: ingredients.toNullable(),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch recipes: $error, $stacktrace',
        ),
      ).map(
        (final WebClientModelRecipeApiRecipeResponse response) =>
            HomeWebClientModelRecipeResponse(
          pagination: HomeWebClientModelRecipePagination(
            skip: response.skip,
            take: response.take,
            total: response.total,
          ),
          recipes: _mapToHomeWebClientModelRecipe(
            response: response,
            country: country,
          ),
        ),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, WebClientModelRecipeApiTagResponse>.tryCatch(
        () async => await client.getTags(
          country: country,
          take: take.toNullable(),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch tags: $error, $stacktrace',
        ),
      ).map(
        (final WebClientModelRecipeApiTagResponse response) => response.items
            .map(
              (final WebClientModelTag tag) => HomeWebClientModelTag(
                id: tag.id,
                type: tag.type,
                displayedName: tag.name,
                numberOfRecipes: optionOf(
                  tag.numberOfRecipesByCountry[country],
                ).getOrElse(() => 0),
              ),
            )
            .toList(),
      );

  @override
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, WebClientModelRecipe>.tryCatch(
        () async => await client.getSingleRecipe(id: recipeId),
        (final Object error, final _) => Exception(
          'Failed to fetch recipe with id: $recipeId: $error',
        ),
      ).map(
        (final WebClientModelRecipe responseRecipe) =>
            _mapToSingleRecipeWebClientModelRecipe(
          recipe: responseRecipe,
        ),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelCuisine>> fetchAllCuisines({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, WebClientModelRecipeApiCuisineResponse>.tryCatch(
        () async => await client.getCuisines(
          country: country,
          take: take.toNullable(),
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch cuisines: $error',
        ),
      ).map(
        (final WebClientModelRecipeApiCuisineResponse response) =>
            response.items
                .map(
                  (final WebClientModelCuisine cuisine) =>
                      HomeWebClientModelCuisine(
                    id: cuisine.id,
                    slug: cuisine.slug,
                    iconPath: cuisine.iconPath.map(Uri.parse),
                    displayedName: cuisine.name,
                    numberOfRecipes: cuisine.usage,
                  ),
                )
                .toList(),
      );

  @override
  TaskEither<Exception, HomeWebClientModelPagination> fetchRecipePagination({
    required final String country,
  }) =>
      TaskEither<Exception, WebClientModelRecipeApiRecipeResponse>.tryCatch(
        () async => await client.getRecipes(
          country: country,
          take: 0,
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch recipe pagination: $error, $stacktrace',
        ),
      ).map(
        (final WebClientModelRecipeApiRecipeResponse response) =>
            HomeWebClientModelPagination(
          total: response.total,
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
            (final WebClientModelYield yield) => yield.yields.map(
              (final int serving) => SingleRecipeWebClientModelYield(
                servings: serving,
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
                          ingredientId: ingredient.id,
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
              imagePath: optionOf(step.images.firstOrNull).map(
                (final WebClientModelStepImage image) => Uri.parse(image.path),
              ),
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
                  (final WebClientModelYield yield) => yield.yields.map(
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
                    type: tag.type,
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
