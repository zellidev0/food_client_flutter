import 'package:commons_graphql/commons_graphql.dart';

import 'package:graphql/client.dart';

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

    // ignore: always_specify_types
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

    // ignore: always_specify_types
    final MutationOptions options = MutationOptions(
      document: documentNodeMutationAddIngredientsSorting,
      variables: variables.toJson(),
    );
    return await _client.mutate(options);
  }
}
