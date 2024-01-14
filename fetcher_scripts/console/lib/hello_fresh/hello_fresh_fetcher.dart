import 'dart:core';

import 'package:console/hello_fresh/hello_fresh_model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrofit/retrofit.dart';

part 'hello_fresh_fetcher.g.dart';

@RestApi(baseUrl: '')
abstract class RestClient {
  factory RestClient(final Dio dio, {final String baseUrl}) = _RestClient;

  @GET('/recipes/search')
  Future<HelloFreshModelRecipeApiRecipeResponse> getRecipes({
    @Query('country') required final String country,
    @Query('ingredient') final List<String>? ingredients,
    @Query('cuisine') final String? cuisine,
    @Query('tag') final String? tags,
    @Query('q') final String? query,
    @Query('take') final int? take,
    @Query('skip') final int? skip,
  });

  @GET('/recipes/{id}')
  Future<HelloFreshModelRecipe> getSingleRecipe({
    @Path('id') required final String id,
  });

  @GET('/tags')
  Future<HelloFreshModelRecipeApiTagResponse> getTags({
    @Query('country') required final String country,
    @Query('take') final int? take,
  });

  @GET('/cuisines')
  Future<HelloFreshModelRecipeApiCuisineResponse> getCuisines({
    @Query('country') required final String country,
    @Query('take') final int? take,
  });

  @GET('/ingredients')
  Future<HelloFreshModelRecipeApiIngredientsResponse> getIngredients({
    @Query('country') required final String country,
    @Query('take') final int? take,
    @Query('skip') final int? skip,
  });
}

class HelloFreshFetcher {
  final String apiBaseUrl;
  final String bearerToken;
  final RestClient client;

  HelloFreshFetcher({
    this.apiBaseUrl = 'https://www.hellofresh.de/gw/api',
    required this.bearerToken,
  }) : client = RestClient(
          Dio(
            BaseOptions(
              headers: <String, String>{
                'Authorization': 'Bearer $bearerToken',
              },
            ),
          ),
          baseUrl: apiBaseUrl,
        );

  TaskEither<Exception,
      HelloFreshModelRecipeApiRecipeResponse> fetchRecipesWithEverything({
    required final String country,
    required final int take,
    required final int skip,
    final Option<List<String>> tags = const None<List<String>>(),
    final Option<String> cuisine = const None<String>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      TaskEither<Exception, HelloFreshModelRecipeApiRecipeResponse>.tryCatch(
        () async => await client.getRecipes(
          country: country,
          take: take,
          skip: skip,
          tags: _combineFiltersForApi(filters: tags).toNullable(),
          cuisine: cuisine.toNullable(),
          ingredients: ingredients.toNullable(),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch recipes: $error, $stacktrace',
        ),
      );

  TaskEither<Exception, HelloFreshModelRecipeApiTagResponse> fetchAllTags({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, HelloFreshModelRecipeApiTagResponse>.tryCatch(
        () async => await client.getTags(
          country: country,
          take: take.toNullable(),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch tags: $error, $stacktrace',
        ),
      );

  TaskEither<Exception, HelloFreshModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, HelloFreshModelRecipe>.tryCatch(
        () async => await client.getSingleRecipe(id: recipeId),
        (final Object error, final _) => Exception(
          'Failed to fetch recipe with id: $recipeId: $error',
        ),
      );

  TaskEither<Exception,
      HelloFreshModelRecipeApiCuisineResponse> fetchAllCuisines({
    required final String country,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, HelloFreshModelRecipeApiCuisineResponse>.tryCatch(
        () async => await client.getCuisines(
          country: country,
          take: take.toNullable(),
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch cuisines: $error',
        ),
      );

  TaskEither<Exception, HelloFreshModelRecipeApiIngredientsResponse>
      fetchAllIngredientFamilies({
    required final String country,
    final Option<int> take = const None<int>(),
    final Option<int> skip = const None<int>(),
  }) =>
          TaskEither<Exception,
              HelloFreshModelRecipeApiIngredientsResponse>.tryCatch(
            () async => await client.getIngredients(
              country: country,
              take: take.toNullable(),
              skip: skip.toNullable(),
            ),
            (final Object error, final StackTrace stacktrace) => Exception(
              'Failed to fetch ingredients: $error, $stacktrace',
            ),
          );
}

Option<String> _combineFiltersForApi({
  required final Option<List<String>> filters,
}) =>
    filters.map(
      (final List<String> allFilters) => allFilters.join(','),
    );
