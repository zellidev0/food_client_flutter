// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_sorting_web_client_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientsSortingWebClientModelIngredientSorting
    _$$_IngredientsSortingWebClientModelIngredientSortingFromJson(
            Map<String, dynamic> json) =>
        _$_IngredientsSortingWebClientModelIngredientSorting(
          type: json['type'] as String,
          name: json['name'] as String,
          iconPath: Option<Uri>.fromJson(json['iconPath']),
          ingredientFamilyIds: (json['ingredientFamilyIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$$_IngredientsSortingWebClientModelIngredientSortingToJson(
            _$_IngredientsSortingWebClientModelIngredientSorting instance) =>
        <String, dynamic>{
          'type': instance.type,
          'name': instance.name,
          'iconPath': instance.iconPath.toJson(
            (value) => value.toString(),
          ),
          'ingredientFamilyIds': instance.ingredientFamilyIds,
        };
