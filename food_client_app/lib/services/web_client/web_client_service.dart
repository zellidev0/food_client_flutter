import 'dart:convert';
import 'dart:core';

import 'package:collection/collection.dart';
import 'package:commons_graphql/commons_graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_client/pages/common/error.dart';
import 'package:food_client/pages/features/ingredients_sorting/services/web_service/ingredients_sorting_web_client_service.dart';
import 'package:food_client/pages/features/single_recipe/services/web_service/single_recipe_web_client_service.dart';
import 'package:food_client/services/web_client/general_web_client_service.dart';
import 'package:food_client/services/web_client/mixins/single_recipe_web_client_service_mixin.dart';
import 'package:food_client/services/web_client/web_client_model.dart';
import 'package:food_client/pages/features/home/services/home_web_client_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

const String hasuraSecretHeader =
    '479mMb5g4g5zESHV2Xp2xGEixaD0X7YdeOFMFdRcz0ADeRrRrW0nc1mQbb1haeE5';

TaskEither<MyError, List<IngredientsSortingWebClientModelIngredientSorting>>
    mapIngredientsSortingResponse(
  final QueryResult<Query$GetIngredientSortings> response,
) =>
        TaskEither<MyError,
            List<IngredientsSortingWebClientModelIngredientSorting>>.tryCatch(
          () async => optionOf(response.parsedData)
              .map(
                (final Query$GetIngredientSortings sortings) =>
                    sortings.ingredients_sortings
                        .map(
                          (
                            final Query$GetIngredientSortings$ingredients_sortings
                                sorting,
                          ) =>
                              IngredientsSortingWebClientModelIngredientSorting(
                            type: sorting.type,
                            name: sorting.name,
                            ingredientFamilyIds: (jsonDecode(
                              sorting.ingredientFamilyIds,
                            ) as List<dynamic>)
                                // ignore: cast_nullable_to_non_nullable
                                .map((final Object? id) => id as String)
                                .toList(),
                            iconPath: optionOf(sorting.iconPath).map(Uri.parse),
                          ),
                        )
                        .toList(),
              )
              .getOrElse(
                () => throw Exception(),
              ),
          MyError.fromErrorAndStackTrace,
        );

List<HomeWebClientModelYield> mapRecipeYields({
  required final String yieldsJson,
}) =>
    Option<List<Map<String, Object?>>>.tryCatch(
      () => jsonDecode(yieldsJson) as List<Map<String, Object?>>,
    )
        .map(
          (final List<Map<String, Object?>> yields) =>
              yields.map(WebClientModelYield.fromJson),
        )
        .map(
          (final Iterable<WebClientModelYield> yields) => yields
              .map(
                (final WebClientModelYield yield) => yield.yields
                    .map(
                      (final int servings) => mapToHomeWebClientModelYield(
                        servings: servings,
                        yield: yield,
                      ),
                    )
                    .toNullable(),
              )
              .whereNotNull()
              .toList(),
        )
        .getOrElse(() => <HomeWebClientModelYield>[]);

HomeWebClientModelCuisine mapToHomeWebClientModelCuisine(
  final Query$GetCuisines$cuisines cuisine,
) =>
    HomeWebClientModelCuisine(
      id: cuisine.id,
      slug: cuisine.slug,
      countryCode: optionOf(cuisine.country_code),
      iconPath: optionOf(cuisine.iconPath).map(Uri.parse),
      displayedName: cuisine.name,
      numberOfRecipes: optionOf(
        cuisine.bridge_recipes_cuisines_aggregate.aggregate?.count,
      ),
    );

HomeWebClientModelDisplayedAttributes
    mapToHomeWebClientModelDisplayedAttributes(
  final Query$Recipes$recipes recipe,
) =>
        HomeWebClientModelDisplayedAttributes(
          name: recipe.name,
          headline: recipe.headline,
          description: recipe.description,
          descriptionMarkdown: optionOf(recipe.descriptionMarkdown),
        );

HomeWebClientModelIngredient mapToHomeWebClientModelIngredient(
  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients ingredient,
) =>
    HomeWebClientModelIngredient(
      id: ingredient.id,
      slug: ingredient.slug,
      displayedName: ingredient.name,
    );

HomeWebClientModelRecipePagination mapToHomeWebClientModelRecipePagination({
  required final int skip,
  required final int take,
  required final Query$Recipes parsedData,
}) =>
    HomeWebClientModelRecipePagination(
      skip: skip,
      take: take,
      total: optionOf(
        parsedData.recipes_aggregate.aggregate?.count,
      ),
    );

HomeWebClientModelTag mapToHomeWebClientModelTag(
  final Query$GetTags$tags tag,
) =>
    HomeWebClientModelTag(
      id: tag.id,
      type: tag.type,
      displayedName: tag.name,
      numberOfRecipes: optionOf(
        tag.bridge_recipes_tags_aggregate.aggregate?.count,
      ),
    );

HomeWebClientModelYield mapToHomeWebClientModelYield({
  required final int servings,
  required final WebClientModelYield yield,
}) =>
    HomeWebClientModelYield(
      yield: servings,
      yieldIngredient: yield.ingredients
          .map(mapToHomeWebClientModelYieldIngredient)
          .toList(),
    );

HomeWebClientModelYieldIngredient mapToHomeWebClientModelYieldIngredient(
  final WebClientModelYieldIngredient ingredient,
) =>
    HomeWebClientModelYieldIngredient(
      id: ingredient.id,
      amount: ingredient.amount.map((final num number) => number.toDouble()),
      unit: ingredient.unit,
    );

List<HomeWebClientModelRecipe> _mapToHomeWebClientModelRecipe({
  required final List<Query$Recipes$recipes> recipesResponse,
  required final List<Locale> recipeLocales,
}) =>
    recipesResponse
        .map(
          (final Query$Recipes$recipes recipe) => HomeWebClientModelRecipe(
            id: recipe.id,
            displayedAttributes:
                mapToHomeWebClientModelDisplayedAttributes(recipe),
            difficulty: recipe.difficulty,
            ingredients: recipe.bridge_recipes_ingredients
                .map(
                  (
                    final Query$Recipes$recipes$bridge_recipes_ingredients
                        ingredients,
                  ) =>
                      optionOf(ingredients.ingredients)
                          .map(mapToHomeWebClientModelIngredient)
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
            yields: mapRecipeYields(yieldsJson: recipe.yields_json),
            tagIds: recipe.bridge_recipes_tags
                .map(
                  (final Query$Recipes$recipes$bridge_recipes_tags tags) =>
                      optionOf(tags.tags)
                          .map(
                            (
                              final Query$Recipes$recipes$bridge_recipes_tags$tags
                                  tag,
                            ) =>
                                tag.id,
                          )
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
            imagePath: optionOf(recipe.imagePath).map(Uri.parse),
            cuisineIds: recipe.bridge_recipes_cuisines
                .map(
                  (
                    final Query$Recipes$recipes$bridge_recipes_cuisines
                        cuisines,
                  ) =>
                      optionOf(cuisines.cuisines)
                          .map(
                            (
                              final Query$Recipes$recipes$bridge_recipes_cuisines$cuisines
                                  cuisine,
                            ) =>
                                cuisine.id,
                          )
                          .toNullable(),
                )
                .whereNotNull()
                .toList(),
          ),
        )
        .toList();

abstract class WebClientService extends Cubit<Unit>
    implements WebClientServiceAggregator {
  WebClientService(super.initialState);
}

class WebClientServiceImplementation extends WebClientService
    with SingleRecipeWebClientServiceMixin {
  final GraphQLClient client;
  WebClientServiceImplementation._()
      : client = GraphQLClient(
          defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.networkOnly),
          ),
          cache: GraphQLCache(),
          link: HttpLink(
            'https://super-chigger-54.hasura.app/v1/graphql',
            defaultHeaders: <String, String>{
              'x-hasura-admin-secret': hasuraSecretHeader,
            },
          ),
        ),
        super(unit);

  factory WebClientServiceImplementation.instance() =>
      WebClientServiceImplementation._();

  @override
  TaskEither<Exception, Uri> buildShareUrl({
    required final String recipeSlug,
    required final String recipeId,
  }) =>
      TaskEither<Exception, Uri>.tryCatch(
        () async => Uri.parse(
          'https://www.hellofresh.de/recipes/$recipeSlug-$recipeId',
        ),
        (final Object error, final StackTrace stackTrace) => Exception(
          'Failed to build share url, error:$error, stackTrace: $stackTrace',
        ),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelCuisine>> fetchCuisines({
    required final List<Locale> recipeLocales,
    final Option<int> take = const None<int>(),
  }) =>
      TaskEither<Exception, QueryResult<Query$GetCuisines>>.tryCatch(
        () async => await client.query(
          QueryOptions<Query$GetCuisines>(
            parserFn: Query$GetCuisines.fromJson,
            document: documentNodeQueryGetCuisines,
          ),
        ),
        (final Object error, final _) => Exception(
          'Failed to fetch cuisines: $error',
        ),
      ).flatMap(
        (final QueryResult<Query$GetCuisines> response) => optionOf(
          response.parsedData,
        )
            .map(
              (final Query$GetCuisines parsedData) => parsedData.cuisines
                  .map(mapToHomeWebClientModelCuisine)
                  .toList(),
            )
            .toEither(() => Exception('No parsed data for cuisines: $response'))
            .toTaskEither(),
      );

  @override
  TaskEither<Exception, List<HomeWebClientModelTag>> fetchTags({
    final Option<int> take = const None<int>(),
    required final List<Locale> recipeLocales,
  }) =>
      TaskEither<Exception, QueryResult<Query$GetTags>>.tryCatch(
        () async => await client.query(
          QueryOptions<Query$GetTags>(
            parserFn: Query$GetTags.fromJson,
            document: documentNodeQueryGetTags,
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch tags: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$GetTags> response) =>
            optionOf(response.parsedData)
                .map(
                  (final Query$GetTags parsedData) =>
                      parsedData.tags.map(mapToHomeWebClientModelTag).toList(),
                )
                .toEither(() => Exception('No parsed data for tags: $response'))
                .toTaskEither(),
      );

  @override
  TaskEither<MyError, List<IngredientsSortingWebClientModelIngredientSorting>>
      fetchIngredientsSorting() => TaskEither<MyError,
              QueryResult<Query$GetIngredientSortings>>.tryCatch(
            () async => await client.query(
              QueryOptions<Query$GetIngredientSortings>(
                parserFn: Query$GetIngredientSortings.fromJson,
                document: documentNodeQueryGetIngredientSortings,
              ),
            ),
            MyError.fromErrorAndStackTrace,
          ).flatMap(mapIngredientsSortingResponse);

  @override
  TaskEither<Exception, HomeWebClientModelRecipeResponse> fetchRecipes({
    required final int take,
    required final int skip,
    required final List<Locale> recipeLocales,
    final Option<List<String>> tagIds = const None<List<String>>(),
    final Option<String> cuisineId = const None<String>(),
    final Option<List<String>> ingredients = const None<List<String>>(),
    final Option<String> searchTerm = const None<String>(),
  }) =>
      TaskEither<Exception, QueryResult<Query$Recipes>>.tryCatch(
        () async => await client.query(
          QueryOptions<Query$Recipes>(
            parserFn: Query$Recipes.fromJson,
            document: documentNodeQueryRecipes,
            variables: <String, Object>{
              'offset': skip,
              'limit': take,
              'recipes_bool_expr': Input$recipes_bool_exp(
                $_and: <Input$recipes_bool_exp>[
                  Input$recipes_bool_exp(
                    country: Input$String_comparison_exp(
                      $_eq: recipeLocales.firstOption
                          .map((final _) => _.languageCode)
                          .getOrElse(() {
                        debugPrint('No recipe locale defined');
                        return 'de';
                      }),
                    ),
                  ),
                  Input$recipes_bool_exp(
                    bridge_recipes_cuisines: cuisineId.fold(
                      () => null,
                      (final String realCuisineId) =>
                          Input$bridge_recipes_cuisines_bool_exp(
                        $_cuisine_id: Input$String_comparison_exp(
                          $_eq: realCuisineId,
                        ),
                      ),
                    ),
                  ),
                  Input$recipes_bool_exp(
                    $_and: tagIds.fold(
                      () => null,
                      (final List<String> realTagIds) => realTagIds
                          .map(
                            (final String realTagId) => Input$recipes_bool_exp(
                              bridge_recipes_tags:
                                  Input$bridge_recipes_tags_bool_exp(
                                $_tag_id: Input$String_comparison_exp(
                                  $_eq: realTagId,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            },
          ),
        ),
        (final Object error, final StackTrace stacktrace) => Exception(
          'Failed to fetch recipes: $error, $stacktrace',
        ),
      ).flatMap(
        (final QueryResult<Query$Recipes> response) =>
            optionOf(response.parsedData)
                .map(
                  (final Query$Recipes parsedData) =>
                      HomeWebClientModelRecipeResponse(
                    pagination: mapToHomeWebClientModelRecipePagination(
                      skip: skip,
                      take: take,
                      parsedData: parsedData,
                    ),
                    recipes: _mapToHomeWebClientModelRecipe(
                      recipesResponse: parsedData.recipes,
                      recipeLocales: recipeLocales,
                    ),
                  ),
                )
                .toEither(
                  () => Exception('Failed to fetch recipes: $response'),
                )
                .toTaskEither(),
      );
}

abstract class WebClientServiceAggregator
    implements
        GeneralWebClientService,
        HomeWebClientService,
        SingleRecipeWebClientService,
        IngredientsSortingWebClientService {}
