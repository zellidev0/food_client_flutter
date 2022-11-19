import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/home/home_controller.dart';
import 'package:food_client/home/home_view.dart';
import 'package:food_client/services/recipe_parser/recipe_parser_service.dart';
import 'package:food_client/services/web_client/web_client_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
HomeWebClientService homeWebClientService(
  final HomeWebClientServiceRef ref,
) =>
    WebClientService();

@riverpod
HomeRecipeParserService homeRecipeParserService(
  final HomeRecipeParserServiceRef ref,
) =>
    RecipeParserService();
