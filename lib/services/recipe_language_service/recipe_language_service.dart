import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:food_client/ui/home/home_navigation_service.dart';
import 'package:food_client/ui/home/home_recipe_language_service.dart';
import 'package:food_client/ui/home/home_view.dart';
import 'package:food_client/ui/single_recipe/single_recipe_navigation_service.dart';
import 'package:food_client/ui/single_recipe/single_recipe_view.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_language_service.g.dart';

@Riverpod(keepAlive: true)
RecipeLanguageServiceAggregator recipeLanguageService(
  final RecipeLanguageServiceRef ref,
) =>
    RecipeLanguageService();

abstract class RecipeLanguageServiceAggregator
    implements HomeRecipeLanguageService {}

class RecipeLanguageService implements RecipeLanguageServiceAggregator {
  @override
  List<String> getSupportedRecipeLanguages() => <String>['DE'];
}
