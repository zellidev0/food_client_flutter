import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:console/hello_fresh_fetcher.dart';
import 'package:console/hello_fresh_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';

void main() async {
  fetchAllFromHasura();

  HelloFreshModelRecipeApiRecipeResponse response =
      (await fetchAllFromHelloFresh(take: 0, skip: 0)).fold(
    (Exception exception) => throw exception,
    (HelloFreshModelRecipeApiRecipeResponse response) => response,
  );
m
  print('Total: ${response.total}');
  for (int i = 0; i <= response.total + 300; i += 200) {
    print('Fetching 200 and skipping $i');
    Either<Exception, HelloFreshModelRecipeApiRecipeResponse> result =
        await fetchAllFromHelloFresh(take: 200, skip: i);
    await result.fold(
      (Exception error) async => print('Error: $error'),
      (HelloFreshModelRecipeApiRecipeResponse response) async {
        QueryResult<Object?> hasuraResult = await writeAllToHasura(response);
        print('Success: $hasuraResult');
      },
    );
    await Future.delayed(Duration(milliseconds: 1500));
  }

  // String input =
  //     await File('./assets/json/example_hf_recipe.json').readAsString();
}

Future<QueryResult<Object?>> writeAllToHasura(
    HelloFreshModelRecipeApiRecipeResponse response) async {
  List<Input$ingredient_family_insert_input> families = response.items
      .flatMap((HelloFreshModelRecipe recipe) =>
          recipe.ingredients.map((ingredient) => ingredient.family))
      .whereNotNull()
      .map(
        (HelloFreshModelIngredientFamily family) =>
            Input$ingredient_family_insert_input(
          iconPath: family.iconPath.toNullable(),
          id: family.id,
          name: family.name,
          slug: family.slug,
          type: family.type,
        ),
      )
      .toList();

  List<Input$ingredients_insert_input> ingredients = response.items
      .flatMap((HelloFreshModelRecipe recipe) => recipe.ingredients)
      .map(
        (HelloFreshModelIngredient ingredient) =>
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

  List<Input$tags_insert_input> tags = response.items
      .flatMap((HelloFreshModelRecipe recipe) => recipe.tags)
      .map(
        (tag) => Input$tags_insert_input(
          id: tag.id,
          name: tag.name,
          numberOfRecipesByCountry: jsonEncode(tag.numberOfRecipesByCountry),
          slug: tag.slug,
          type: tag.type,
        ),
      )
      .toList();

  List<Input$cuisines_insert_input> cuisines = response.items
      .flatMap((HelloFreshModelRecipe recipe) => recipe.cuisines)
      .map(
        (cuisine) => Input$cuisines_insert_input(
          iconPath: cuisine.iconPath.toNullable(),
          id: cuisine.id,
          name: cuisine.name,
          slug: cuisine.slug,
          type: cuisine.type,
        ),
      )
      .toList();

  List<Input$recipes_insert_input> recipes = response.items
      .map((HelloFreshModelRecipe recipe) => recipe)
      .map(
        (HelloFreshModelRecipe recipe) => Input$recipes_insert_input(
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

  List<Input$bridge_recipes_tags_insert_input> recipeTags = response.items
      .flatMap((HelloFreshModelRecipe recipe) =>
          recipe.tags.map((tag) => Tuple2(recipe.id, tag.id)))
      .map(
        (Tuple2<String, String> recipeIdAndTagId) =>
            Input$bridge_recipes_tags_insert_input(
          $_recipe_id: recipeIdAndTagId.first,
          $_tag_id: recipeIdAndTagId.second,
        ),
      )
      .toList();

  List<Input$bridge_recipes_cuisines_insert_input> recipeCuisines = response
      .items
      .flatMap((HelloFreshModelRecipe recipe) =>
          recipe.cuisines.map((cuisine) => Tuple2(recipe.id, cuisine.id)))
      .map(
        (recipeIdAndTagId) => Input$bridge_recipes_cuisines_insert_input(
          $_recipe_id: recipeIdAndTagId.first,
          $_cuisine_id: recipeIdAndTagId.second,
        ),
      )
      .toList();

  List<Input$bridge_recipes_ingredients_insert_input> recipeIngredients =
      response.items
          .flatMap((HelloFreshModelRecipe recipe) => recipe.ingredients
              .map((ingredient) => Tuple2(recipe.id, ingredient.id)))
          .map(
            (recipeIdAndTagId) => Input$bridge_recipes_ingredients_insert_input(
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
  required int take,
  required int skip,
}) async {
  return await HelloFreshFetcher()
      .fetchRecipes(country: 'AT', take: take, skip: skip)
      .run();
}

Future<Map<String, dynamic>?> fetchAllFromHasura() async {
  QueryResult<Query$Recipes> result =
      await GraphQlBackendService().fetchRecipes(country: 'DE');
  return result.data;
}

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
            defaultHeaders: {
              'x-hasura-admin-secret':
                  '479mMb5g4g5zESHV2Xp2xGEixaD0X7YdeOFMFdRcz0ADeRrRrW0nc1mQbb1haeE5',
            },
          ),
          cache: GraphQLCache(),
        );

  Future<QueryResult<Query$Recipes>> fetchRecipes({
    required String country,
  }) async {
    String query = r''' 
    query Recipes($country: String) {
      recipes(where: {country: {_eq: $country}}) {
        id
        headline
        imagePath
        country
        description
        descriptionMarkdown
        difficulty
        name
        prepTime
        slug
        steps
        totalTime
        yields_json
        bridge_recipes_tags {
          tags {
            name
            numberOfRecipesByCountry
            slug
            id
            type
          }
        }
        bridge_recipes_ingredients {
          ingredients {
            _family
            country
            id
            imagePath
            name
            slug
            type
          }
        }
      }
    }
    ''';
    var options = QueryOptions(
      parserFn: (Map<String, dynamic> map) => Query$Recipes.fromJson(
        map['orderSummary'],
      ),
      document: gql(query),
      variables: <String, dynamic>{
        'country': country,
      },
    );

    return await _client.query(options);
  }

  Future<QueryResult<Object?>> createRecipe({
    required List<Input$ingredient_family_insert_input> families,
    required List<Input$ingredients_insert_input> ingredients,
    required List<Input$tags_insert_input> tags,
    required List<Input$cuisines_insert_input> cuisines,
    required List<Input$recipes_insert_input> recipes,
    required List<Input$bridge_recipes_tags_insert_input> recipesTags,
    required List<Input$bridge_recipes_ingredients_insert_input>
        recipesIngredients,
    required List<Input$bridge_recipes_cuisines_insert_input> recipesCuisines,
  }) async {
    Variables$Mutation$CreateRecipes variables =
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
    return (await _client.mutate(options));
  }
}
