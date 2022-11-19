import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_recipe_parser.freezed.dart';

abstract class HomeRecipeParserService {
  TaskEither<Exception, HomeRecipeParserModel> parseRecipes({
    required final Map<String, dynamic> payload,
  });
}

@freezed
class HomeRecipeParserModel with _$HomeRecipeParserModel {
  const factory HomeRecipeParserModel({
    required final bool temp,
  }) = _HomeRecipeParserModel;
}
