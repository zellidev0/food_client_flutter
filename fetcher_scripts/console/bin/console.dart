// ignore_for_file: avoid_print, always_specify_types, unreachable_from_main

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:console/hasura/hasura_graphql_service.dart';
import 'package:console/hello_fresh/hello_fresh_fetcher.dart';
import 'package:console/hello_fresh/hello_fresh_ingredients_combiner.dart';
import 'package:console/hello_fresh/hello_fresh_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';

void main() async {
  const bearerToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MDc4NTY4NDcsImlhdCI6MTcwNTIyNzEwNCwiaXNzIjoic2VuZiIsImp0aSI6IjdlMTExYjQ4LTMwNzUtNDA3MC1hYzBiLWMxMzNjZDNhMjQ1MSJ9.xOALeUgVp5e9bVWtyUgAEHpfBLYfTgtxaugs0a704BQ';
}

Future<void> fetchAllFromHelloFreshAndWriteToHasura({
  required final String bearerToken,
  required final String countryCode,
}) async {
  final HelloFreshModelRecipeApiRecipeResponse response =
      (await fetchAllFromHelloFresh(
    take: 0,
    skip: 0,
    bearerToken: bearerToken,
    countryCode: countryCode,
  ))
          .fold(
    (final Exception exception) => throw exception,
    (final HelloFreshModelRecipeApiRecipeResponse response) => response,
  );

  for (int i = 0; i <= response.total + 300; i += 200) {
    print('Fetching 200 and skipping $i');
    final Either<Exception, HelloFreshModelRecipeApiRecipeResponse> result =
        await fetchAllFromHelloFresh(
      take: 200,
      skip: i,
      bearerToken: bearerToken,
      countryCode: countryCode,
    );
    await result.fold(
      (final Exception error) async => print('Error: $error'),
      (final HelloFreshModelRecipeApiRecipeResponse response) async {
        final QueryResult<Object?> hasuraResult =
            await writeAllToHasura(response);
        print('Success: $hasuraResult');
      },
    );
    await Future<void>.delayed(const Duration(milliseconds: 1500));
  }
}

Future<Either<Exception, HelloFreshModelRecipeApiRecipeResponse>>
    fetchAllFromHelloFresh({
  required final String bearerToken,
  required final String countryCode,
  required final int take,
  required final int skip,
}) async =>
        await HelloFreshFetcher(bearerToken: bearerToken)
            .fetchRecipesWithEverything(
              country: countryCode,
              take: take,
              skip: skip,
            )
            .run();

Future<String> readFromFile({
  required final String fileName,
}) async =>
    await File('./assets/json/$fileName').readAsString();

Future<QueryResult<Object?>> writeAllSortingsToHasura() async =>
    await GraphQlBackendService().createSortings(
      sortings: await HelloFreshIngredientsFamilyCombiner.createGraphQlInput(),
    );

Future<QueryResult<Object?>> writeAllToHasura(
  final HelloFreshModelRecipeApiRecipeResponse response,
) async {
  final List<Input$ingredient_family_insert_input> families = response.items
      .flatMap(
        (final HelloFreshModelRecipe recipe) => recipe.ingredients.map(
          (final HelloFreshModelIngredient ingredient) => ingredient.family,
        ),
      )
      .whereNotNull()
      .map(
        (final HelloFreshModelIngredientFamily family) =>
            Input$ingredient_family_insert_input(
          iconPath: family.iconPath.toNullable(),
          id: family.id,
          name: family.name,
          slug: family.slug,
          type: family.type,
        ),
      )
      .toList();

  final List<Input$ingredients_insert_input> ingredients = response.items
      .flatMap((final HelloFreshModelRecipe recipe) => recipe.ingredients)
      .map(
        (final HelloFreshModelIngredient ingredient) =>
            Input$ingredients_insert_input(
          id: ingredient.id,
          name: ingredient.name,
          slug: ingredient.slug,
          type: ingredient.type,
          $_family: ingredient.family?.id,
          country: ingredient.country,
          imagePath: ingredient.imagePath.toNullable(),
        ),
      )
      .toList();

  final List<Input$tags_insert_input> tags = response.items
      .flatMap((final HelloFreshModelRecipe recipe) => recipe.tags)
      .map(
        (final HelloFreshModelRecipeTag tag) => Input$tags_insert_input(
          id: tag.id,
          name: tag.name,
          numberOfRecipesByCountry:
              jsonEncode(tag.numberOfRecipesByCountry.toNullable()),
          slug: tag.slug,
          type: tag.type,
        ),
      )
      .toList();

  final List<Input$cuisines_insert_input> cuisines = response.items
      .flatMap((final HelloFreshModelRecipe recipe) => recipe.cuisines)
      .map(
        (final HelloFreshModelCuisine cuisine) => Input$cuisines_insert_input(
          iconPath: cuisine.iconPath.toNullable(),
          id: cuisine.id,
          name: cuisine.name,
          slug: cuisine.slug,
          type: cuisine.type,
        ),
      )
      .toList();

  final List<Input$recipes_insert_input> recipes = response.items
      .map((final HelloFreshModelRecipe recipe) => recipe)
      .map(
        (final HelloFreshModelRecipe recipe) => Input$recipes_insert_input(
          country: recipe.country,
          description: recipe.description,
          descriptionMarkdown: recipe.descriptionMarkdown.toNullable(),
          difficulty: recipe.difficulty,
          headline: recipe.headline,
          id: recipe.id,
          imagePath: recipe.imagePath.toNullable(),
          name: recipe.name,
          prepTime: recipe.prepTime.toNullable(),
          slug: recipe.slug,
          steps: jsonEncode(recipe.steps),
          totalTime: recipe.totalTime.toNullable(),
          yields_json: jsonEncode(recipe.yields),
        ),
      )
      .toList();

  final List<Input$bridge_recipes_tags_insert_input> recipeTags = response.items
      .flatMap(
        (final HelloFreshModelRecipe recipe) => recipe.tags.map(
          (final HelloFreshModelRecipeTag tag) => Tuple2(recipe.id, tag.id),
        ),
      )
      .map(
        (final Tuple2<String, String> recipeIdAndTagId) =>
            Input$bridge_recipes_tags_insert_input(
          $_recipe_id: recipeIdAndTagId.first,
          $_tag_id: recipeIdAndTagId.second,
        ),
      )
      .toList();

  final List<Input$bridge_recipes_cuisines_insert_input> recipeCuisines =
      response.items
          .flatMap(
            (final HelloFreshModelRecipe recipe) => recipe.cuisines.map(
              (final HelloFreshModelCuisine cuisine) =>
                  Tuple2(recipe.id, cuisine.id),
            ),
          )
          .map(
            (final Tuple2<String, String> recipeIdAndTagId) =>
                Input$bridge_recipes_cuisines_insert_input(
              $_recipe_id: recipeIdAndTagId.first,
              $_cuisine_id: recipeIdAndTagId.second,
            ),
          )
          .toList();

  final List<Input$bridge_recipes_ingredients_insert_input> recipeIngredients =
      response.items
          .flatMap(
            (final HelloFreshModelRecipe recipe) => recipe.ingredients.map(
              (final HelloFreshModelIngredient ingredient) =>
                  Tuple2(recipe.id, ingredient.id),
            ),
          )
          .map(
            (final Tuple2<String, String> recipeIdAndTagId) =>
                Input$bridge_recipes_ingredients_insert_input(
              $_recipe_id: recipeIdAndTagId.first,
              $_ingredient_id: recipeIdAndTagId.second,
            ),
          )
          .toList();

  return await GraphQlBackendService().createRecipe(
    families: families,
    ingredients: ingredients,
    tags: tags,
    cuisines: cuisines,
    recipes: recipes,
    recipesTags: recipeTags,
    recipesCuisines: recipeCuisines,
    recipesIngredients: recipeIngredients,
  );
}
