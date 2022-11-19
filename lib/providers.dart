import 'package:food_client/home/home_recipe_parser.dart';
import 'package:food_client/home/home_web_client_service.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

WebClientService buildWebClientService() => WebClientService(
      useMockValues: true,
    );

@riverpod
HomeWebClientService homeWebClientService(
  final HomeWebClientServiceRef ref,
) =>
    buildWebClientService();

@riverpod
ProfileWebClientService profileWebClientService(
  final ProfileWebClientServiceRef ref,
) =>
    buildWebClientService();

@riverpod
HomeRecipeParserService homeRecipeParserService(
  final HomeRecipeParserServiceRef ref,
) =>
    RecipeParserService();

@riverpod
ProfileRecipeParserService profileRecipeParserService(
  final ProfileRecipeParserServiceRef ref,
) =>
    RecipeParserService();
