import 'package:console/graphql/mutations.graphql.dart';
import 'package:console/graphql/queries.graphql.dart';
import 'package:console/graphql/schema.graphql.dart';
import 'package:graphql/client.dart';

void main() async {
  // final data = fetchDataFromSomewhereMaybeOuterSpace();

  // final Query$Recipes parsedData = Query$Recipes.fromJson(data);
  // final name = parsedData.fetchPerson?.name;

  // final parsedData = QueryR;
  // final name = parsedData.fetchPerson?.name;
  // print(name);

  // QueryResult<Query$Recipes> result =
  //     await GraphQlBackendService().fetchRecipes(country: 'DE');
  // print(result);

  var res = await GraphQlBackendService().createRecipe();
  print(res);
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

  Future<QueryResult<Object?>> createRecipe() async {
    Variables$Mutation$CreateRecipes variables =
        Variables$Mutation$CreateRecipes(
      families: [
        Input$ingredient_family_insert_input(
          iconPath: 'family_iconPath',
          id: 'family_id',
          name: 'family_name',
          slug: 'family_slug',
          type: 'family_type',
        ),
      ],
      ingredients: [
        Input$ingredients_insert_input(
          $_family: 'family_id',
          country: 'ing_country',
          id: 'ing_id',
          imagePath: 'ing_imagePath',
          name: 'ing_name',
          slug: 'ing_slug',
          type: 'ing_type',
        ),
      ],
    );

    final MutationOptions options = MutationOptions(
      document: documentNodeMutationCreateRecipes,
      variables: variables.toJson(),
    );
    return (await _client.mutate(options));
  }
}
