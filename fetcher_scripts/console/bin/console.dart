// ignore_for_file: avoid_print, always_specify_types, unreachable_from_main

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:console/hello_fresh_fetcher.dart';
import 'package:console/hello_fresh_ingredients_combiner.dart';
import 'package:console/hello_fresh_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';

void main() async {
  // await fetchAllFromHasura();

  final QueryResult<Object?> result = await writeAllSortingsToHasura(
    input: await HelloFreshIngredientsFamilyCombiner.createGraphQlInput(),
  );
  print(result);

  // final HelloFreshModelRecipeApiRecipeResponse response =
  //     (await fetchAllFromHelloFresh(take: 0, skip: 0)).fold(
  //   (final Exception exception) => throw exception,
  //   (final HelloFreshModelRecipeApiRecipeResponse response) => response,
  // );
  //
  // print('Total: ${response.total}');
  // for (int i = 0; i <= response.total + 300; i += 200) {
  //   print('Fetching 200 and skipping $i');
  //   final Either<Exception, HelloFreshModelRecipeApiRecipeResponse> result =
  //       await fetchAllFromHelloFresh(take: 200, skip: i);
  //   await result.fold(
  //     (final Exception error) async => print('Error: $error'),
  //     (final HelloFreshModelRecipeApiRecipeResponse response) async {
  //       final QueryResult<Object?> hasuraResult =
  //           await writeAllToHasura(response);
  //       print('Success: $hasuraResult');
  //     },
  //   );
  //   await Future<void>.delayed(const Duration(milliseconds: 1500));
  // }

  // String input =
  //     await File('./assets/json/example_hf_recipe.json').readAsString();
}

Future<QueryResult<Object?>> writeAllSortingsToHasura({
  required final List<Input$ingredients_sortings_insert_input> input,
}) async =>
    await GraphQlBackendService().createSortings(
      sortings: input,
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
        (final tag) => Input$tags_insert_input(
          id: tag.id,
          name: tag.name,
          numberOfRecipesByCountry: jsonEncode(tag.numberOfRecipesByCountry),
          slug: tag.slug,
          type: tag.type,
        ),
      )
      .toList();

  final List<Input$cuisines_insert_input> cuisines = response.items
      .flatMap((final HelloFreshModelRecipe recipe) => recipe.cuisines)
      .map(
        (final cuisine) => Input$cuisines_insert_input(
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
        (final HelloFreshModelRecipe recipe) =>
            recipe.tags.map((final tag) => Tuple2(recipe.id, tag.id)),
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
            (final HelloFreshModelRecipe recipe) => recipe.cuisines
                .map((final cuisine) => Tuple2(recipe.id, cuisine.id)),
          )
          .map(
            (final recipeIdAndTagId) =>
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

Future<Either<Exception, HelloFreshModelRecipeApiRecipeResponse>>
    fetchAllFromHelloFresh({
  required final int take,
  required final int skip,
}) async =>
        await HelloFreshFetcher()
            .fetchRecipes(country: 'AT', take: take, skip: skip)
            .run();

class GraphQlBackendService {
  final GraphQLClient _client;

  GraphQlBackendService()
      : _client = GraphQLClient(
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          link: HttpLink(
            'https://super-chigger-54.hasura.app/v1/graphql',
            defaultHeaders: <String, String>{
              'x-hasura-admin-secret':
                  '479mMb5g4g5zESHV2Xp2xGEixaD0X7YdeOFMFdRcz0ADeRrRrW0nc1mQbb1haeE5',
            },
          ),
          cache: GraphQLCache(),
        );

  Future<QueryResult<Object?>> createRecipe({
    required final List<Input$ingredient_family_insert_input> families,
    required final List<Input$ingredients_insert_input> ingredients,
    required final List<Input$tags_insert_input> tags,
    required final List<Input$cuisines_insert_input> cuisines,
    required final List<Input$recipes_insert_input> recipes,
    required final List<Input$bridge_recipes_tags_insert_input> recipesTags,
    required final List<Input$bridge_recipes_ingredients_insert_input>
        recipesIngredients,
    required final List<Input$bridge_recipes_cuisines_insert_input>
        recipesCuisines,
  }) async {
    final Variables$Mutation$CreateRecipes variables =
        Variables$Mutation$CreateRecipes(
      families: families,
      ingredients: ingredients,
      tags: tags,
      cuisines: cuisines,
      recipes: recipes,
      recipes_tags: recipesTags,
      recipes_ingredients: recipesIngredients,
      recipes_cuisines: recipesCuisines,
    );

    final MutationOptions options = MutationOptions(
      document: documentNodeMutationCreateRecipes,
      variables: variables.toJson(),
    );
    return await _client.mutate(options);
  }

  Future<QueryResult<Object?>> createSortings({
    required final List<Input$ingredients_sortings_insert_input> sortings,
  }) async {
    final Variables$Mutation$AddIngredientsSorting variables =
        Variables$Mutation$AddIngredientsSorting(
      input: sortings,
    );

    final MutationOptions options = MutationOptions(
      document: documentNodeMutationAddIngredientsSorting,
      variables: variables.toJson(),
    );
    return await _client.mutate(options);
  }
}
