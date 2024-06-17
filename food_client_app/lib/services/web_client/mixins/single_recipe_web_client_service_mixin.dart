import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_client_service.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'single_recipe_web_client_service_mixin_utils.dart';

mixin SingleRecipeWebClientServiceMixin
    implements SingleRecipeWebClientService {
  late GraphQLClient client;
  @override
  TaskEither<Exception, SingleRecipeWebClientModelRecipe> fetchSingleRecipe({
    required final String recipeId,
  }) =>
      TaskEither<Exception, QueryResult<Query$SingleRecipe>>.tryCatch(
        () async => await client.query(
          QueryOptions<Query$SingleRecipe>(
            parserFn: Query$SingleRecipe.fromJson,
            document: documentNodeQuerySingleRecipe,
            variables: <String, Object>{'id': recipeId},
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch single recipe: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$SingleRecipe> response) =>
            optionOf(response.parsedData)
                .flatMap(
                  (final Query$SingleRecipe parsedData) =>
                      optionOf(parsedData.recipes_by_pk).map(
                    (Query$SingleRecipe$recipes_by_pk recipe) =>
                        _mapToSingleRecipeWebClientModelRecipe(
                      recipe: recipe,
                    ),
                  ),
                )
                .toEither(() => Exception('Failed to fetch recipes: $response'))
                .toTaskEither(),
      );
}
