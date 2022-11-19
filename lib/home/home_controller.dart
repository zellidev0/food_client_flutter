import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:food_client/home/home_model.dart';
import 'package:food_client/home/home_recipe_parser.dart';
import 'package:food_client/home/home_view.dart';
import 'package:food_client/home/home_web_client_service.dart';
import 'package:food_client/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.g.dart';

@riverpod
class HomeControllerImplementation extends _$HomeControllerImplementation implements HomeController {
  late final HomeWebClientService _webClientService;
  late final HomeRecipeParserService _recipeParserService;

  @override
  HomeModel build() {
    _webClientService = ref.watch(homeWebClientServiceProvider);
    _recipeParserService = ref.watch(homeRecipeParserServiceProvider);

    // ignore: unused_local_variable
    final TaskEither<Exception, HomeRecipeParserModel> payload =
        _webClientService.fetchAllRecipes().flatMap(
              (final Map<String, dynamic> payload) =>
                  _recipeParserService.parseRecipes(
                payload: payload,
              ),
            );
    unawaited(
      payload.run().then(
            (final Either<Exception, HomeRecipeParserModel> e) =>
                debugPrint(e.toString()),
          ),
    );

    return const HomeModel(temp: true);
  }
}
