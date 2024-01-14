import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:commons_graphql/commons_graphql.dart';

class HelloFreshIngredientsFamilyCombiner {
  static Future<List<Input$ingredients_sortings_insert_input>> createGraphQlInput() async {
    final String input =
        await File('./assets/json/all_sortings.json').readAsString();
    final List<Map<String, Object?>> decoded = (jsonDecode(input) as List<dynamic>)
        // ignore: cast_nullable_to_non_nullable
        .map((final Object? e) => e as Map<String, Object?>)
        .toList();

    final List<Input$ingredients_sortings_insert_input> families = decoded
        .map(
          (final Map<String, Object?> toInsert) =>
              Input$ingredients_sortings_insert_input(
            name: toInsert['name']! as String,
            type: toInsert['type']! as String,
            ingredientFamilyIds: jsonEncode(toInsert['ingredientFamilyIds']),
            iconPath: toInsert['iconPath'] as String?,
          ),
        )
        .toList();
    return families;
  }
}
