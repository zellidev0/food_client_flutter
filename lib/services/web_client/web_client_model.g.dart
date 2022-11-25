// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WebClientModelRecipeApiRecipeResponse
    _$$_WebClientModelRecipeApiRecipeResponseFromJson(
            Map<String, dynamic> json) =>
        _$_WebClientModelRecipeApiRecipeResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  WebClientModelRecipe.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_WebClientModelRecipeApiRecipeResponseToJson(
        _$_WebClientModelRecipeApiRecipeResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_WebClientModelRecipeApiTagResponse
    _$$_WebClientModelRecipeApiTagResponseFromJson(Map<String, dynamic> json) =>
        _$_WebClientModelRecipeApiTagResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) => WebClientModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_WebClientModelRecipeApiTagResponseToJson(
        _$_WebClientModelRecipeApiTagResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_WebClientModelRecipeApiCuisineResponse
    _$$_WebClientModelRecipeApiCuisineResponseFromJson(
            Map<String, dynamic> json) =>
        _$_WebClientModelRecipeApiCuisineResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  WebClientModelCuisine.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_WebClientModelRecipeApiCuisineResponseToJson(
        _$_WebClientModelRecipeApiCuisineResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_WebClientModelTagsApiResponse _$$_WebClientModelTagsApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelTagsApiResponse(
      total: json['total'] as int,
      take: json['take'] as int,
      count: json['count'] as int,
      skip: json['skip'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => WebClientModelTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WebClientModelTagsApiResponseToJson(
        _$_WebClientModelTagsApiResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_WebClientModelRecipe _$$_WebClientModelRecipeFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelRecipe(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      country: json['country'] as String,
      headline: json['headline'] as String,
      description: json['description'] as String,
      descriptionMarkdown: Option<String>.fromJson(json['descriptionMarkdown']),
      difficulty: json['difficulty'] as int,
      prepTime: Option<String>.fromJson(json['prepTime']),
      totalTime: Option<String>.fromJson(json['totalTime']),
      imagePath: Option<String>.fromJson(json['imagePath']),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) =>
              WebClientModelIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      yields: (json['yields'] as List<dynamic>)
          .map((e) => WebClientModelYield.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) =>
              WebClientModelRecipeTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => WebClientModelStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      cuisines: (json['cuisines'] as List<dynamic>)
          .map((e) => WebClientModelCuisine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WebClientModelRecipeToJson(
        _$_WebClientModelRecipe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'country': instance.country,
      'headline': instance.headline,
      'description': instance.description,
      'descriptionMarkdown': instance.descriptionMarkdown.toJson(
        (value) => value,
      ),
      'difficulty': instance.difficulty,
      'prepTime': instance.prepTime.toJson(
        (value) => value,
      ),
      'totalTime': instance.totalTime.toJson(
        (value) => value,
      ),
      'imagePath': instance.imagePath.toJson(
        (value) => value,
      ),
      'ingredients': instance.ingredients,
      'yields': instance.yields,
      'tags': instance.tags,
      'steps': instance.steps,
      'cuisines': instance.cuisines,
    };

_$_WebClientModelIngredient _$$_WebClientModelIngredientFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelIngredient(
      id: json['id'] as String,
      country: json['country'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      imagePath: Option<String>.fromJson(json['imagePath']),
    );

Map<String, dynamic> _$$_WebClientModelIngredientToJson(
        _$_WebClientModelIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'slug': instance.slug,
      'name': instance.name,
      'type': instance.type,
      'imagePath': instance.imagePath.toJson(
        (value) => value,
      ),
    };

_$_WebClientModelRecipeTag _$$_WebClientModelRecipeTagFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelRecipeTag(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      preferences: (json['preferences'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$_WebClientModelRecipeTagToJson(
        _$_WebClientModelRecipeTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'preferences': instance.preferences,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$_WebClientModelCuisine _$$_WebClientModelCuisineFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelCuisine(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      usage: json['usage'] as int,
      iconPath: Option<String>.fromJson(json['iconPath']),
    );

Map<String, dynamic> _$$_WebClientModelCuisineToJson(
        _$_WebClientModelCuisine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'usage': instance.usage,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
    };

_$_WebClientModelYield _$$_WebClientModelYieldFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelYield(
      yield: Option<int>.fromJson(json['yield']),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) =>
              WebClientModelYieldIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WebClientModelYieldToJson(
        _$_WebClientModelYield instance) =>
    <String, dynamic>{
      'yield': instance.yield.toJson(
        (value) => value,
      ),
      'ingredients': instance.ingredients,
    };

_$_WebClientModelStep _$$_WebClientModelStepFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelStep(
      index: json['index'] as int,
      instructionsMarkdown: json['instructionsMarkdown'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_WebClientModelStepToJson(
        _$_WebClientModelStep instance) =>
    <String, dynamic>{
      'index': instance.index,
      'instructionsMarkdown': instance.instructionsMarkdown,
      'ingredients': instance.ingredients,
    };

_$_WebClientModelStepImage _$$_WebClientModelStepImageFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelStepImage(
      path: json['path'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$$_WebClientModelStepImageToJson(
        _$_WebClientModelStepImage instance) =>
    <String, dynamic>{
      'path': instance.path,
      'caption': instance.caption,
    };

_$_WebClientModelYieldIngredient _$$_WebClientModelYieldIngredientFromJson(
        Map<String, dynamic> json) =>
    _$_WebClientModelYieldIngredient(
      id: json['id'] as String,
      amount: Option<num>.fromJson(json['amount']),
      unit: Option<String>.fromJson(json['unit']),
    );

Map<String, dynamic> _$$_WebClientModelYieldIngredientToJson(
        _$_WebClientModelYieldIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount.toJson(
        (value) => value,
      ),
      'unit': instance.unit.toJson(
        (value) => value,
      ),
    };

_$_WebClientModelTag _$$_WebClientModelTagFromJson(Map<String, dynamic> json) =>
    _$_WebClientModelTag(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$_WebClientModelTagToJson(
        _$_WebClientModelTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };
