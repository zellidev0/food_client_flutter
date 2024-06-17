// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebClientModelRecipeApiRecipeResponseImpl
    _$$WebClientModelRecipeApiRecipeResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WebClientModelRecipeApiRecipeResponseImpl(
          total: (json['total'] as num).toInt(),
          take: (json['take'] as num).toInt(),
          count: (json['count'] as num).toInt(),
          skip: (json['skip'] as num).toInt(),
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  WebClientModelRecipe.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WebClientModelRecipeApiRecipeResponseImplToJson(
        _$WebClientModelRecipeApiRecipeResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$WebClientModelRecipeApiTagResponseImpl
    _$$WebClientModelRecipeApiTagResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WebClientModelRecipeApiTagResponseImpl(
          total: (json['total'] as num).toInt(),
          take: (json['take'] as num).toInt(),
          count: (json['count'] as num).toInt(),
          skip: (json['skip'] as num).toInt(),
          items: (json['items'] as List<dynamic>)
              .map((e) => WebClientModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WebClientModelRecipeApiTagResponseImplToJson(
        _$WebClientModelRecipeApiTagResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$WebClientModelRecipeApiCuisineResponseImpl
    _$$WebClientModelRecipeApiCuisineResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WebClientModelRecipeApiCuisineResponseImpl(
          total: (json['total'] as num).toInt(),
          take: (json['take'] as num).toInt(),
          count: (json['count'] as num).toInt(),
          skip: (json['skip'] as num).toInt(),
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  WebClientModelCuisine.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WebClientModelRecipeApiCuisineResponseImplToJson(
        _$WebClientModelRecipeApiCuisineResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$WebClientModelRecipeApiIngredientsResponseImpl
    _$$WebClientModelRecipeApiIngredientsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$WebClientModelRecipeApiIngredientsResponseImpl(
          total: (json['total'] as num).toInt(),
          take: (json['take'] as num).toInt(),
          count: (json['count'] as num).toInt(),
          skip: (json['skip'] as num).toInt(),
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  WebClientModelIngredient.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WebClientModelRecipeApiIngredientsResponseImplToJson(
        _$WebClientModelRecipeApiIngredientsResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$WebClientModelTagsApiResponseImpl
    _$$WebClientModelTagsApiResponseImplFromJson(Map<String, dynamic> json) =>
        _$WebClientModelTagsApiResponseImpl(
          total: (json['total'] as num).toInt(),
          take: (json['take'] as num).toInt(),
          count: (json['count'] as num).toInt(),
          skip: (json['skip'] as num).toInt(),
          items: (json['items'] as List<dynamic>)
              .map((e) => WebClientModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WebClientModelTagsApiResponseImplToJson(
        _$WebClientModelTagsApiResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$WebClientModelRecipeImpl _$$WebClientModelRecipeImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelRecipeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      country: json['country'] as String,
      headline: json['headline'] as String,
      description: json['description'] as String,
      descriptionMarkdown: Option<String>.fromJson(json['descriptionMarkdown']),
      difficulty: (json['difficulty'] as num).toInt(),
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

Map<String, dynamic> _$$WebClientModelRecipeImplToJson(
        _$WebClientModelRecipeImpl instance) =>
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

_$WebClientModelIngredientImpl _$$WebClientModelIngredientImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelIngredientImpl(
      id: json['id'] as String,
      country: json['country'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      imagePath: Option<String>.fromJson(json['imagePath']),
      family: Option<WebClientModelIngredientFamily>.fromJson(json['family']),
    );

Map<String, dynamic> _$$WebClientModelIngredientImplToJson(
        _$WebClientModelIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'slug': instance.slug,
      'name': instance.name,
      'type': instance.type,
      'imagePath': instance.imagePath.toJson(
        (value) => value,
      ),
      'family': instance.family.toJson(
        (value) => value,
      ),
    };

_$WebClientModelRecipeTagImpl _$$WebClientModelRecipeTagImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelRecipeTagImpl(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$WebClientModelRecipeTagImplToJson(
        _$WebClientModelRecipeTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$WebClientModelCuisineImpl _$$WebClientModelCuisineImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelCuisineImpl(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      countryCode: json['countryCode'] as String,
      usage: (json['usage'] as num).toInt(),
      iconPath: Option<String>.fromJson(json['iconPath']),
    );

Map<String, dynamic> _$$WebClientModelCuisineImplToJson(
        _$WebClientModelCuisineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'countryCode': instance.countryCode,
      'usage': instance.usage,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
    };

_$WebClientModelYieldImpl _$$WebClientModelYieldImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelYieldImpl(
      yields: Option<int>.fromJson(json['yields']),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) =>
              WebClientModelYieldIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WebClientModelYieldImplToJson(
        _$WebClientModelYieldImpl instance) =>
    <String, dynamic>{
      'yields': instance.yields.toJson(
        (value) => value,
      ),
      'ingredients': instance.ingredients,
    };

_$WebClientModelStepImpl _$$WebClientModelStepImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelStepImpl(
      index: (json['index'] as num).toInt(),
      instructionsMarkdown: json['instructionsMarkdown'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              WebClientModelStepImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WebClientModelStepImplToJson(
        _$WebClientModelStepImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'instructionsMarkdown': instance.instructionsMarkdown,
      'ingredients': instance.ingredients,
      'images': instance.images,
    };

_$WebClientModelStepImageImpl _$$WebClientModelStepImageImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelStepImageImpl(
      path: json['path'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$$WebClientModelStepImageImplToJson(
        _$WebClientModelStepImageImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'caption': instance.caption,
    };

_$WebClientModelYieldIngredientImpl
    _$$WebClientModelYieldIngredientImplFromJson(Map<String, dynamic> json) =>
        _$WebClientModelYieldIngredientImpl(
          id: json['id'] as String,
          amount: Option<num>.fromJson(json['amount']),
          unit: Option<String>.fromJson(json['unit']),
        );

Map<String, dynamic> _$$WebClientModelYieldIngredientImplToJson(
        _$WebClientModelYieldIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount.toJson(
        (value) => value,
      ),
      'unit': instance.unit.toJson(
        (value) => value,
      ),
    };

_$WebClientModelTagImpl _$$WebClientModelTagImplFromJson(
        Map<String, dynamic> json) =>
    _$WebClientModelTagImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$WebClientModelTagImplToJson(
        _$WebClientModelTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$WebClientModelIngredientFamilyImpl
    _$$WebClientModelIngredientFamilyImplFromJson(Map<String, dynamic> json) =>
        _$WebClientModelIngredientFamilyImpl(
          id: json['id'] as String,
          type: json['type'] as String,
          iconPath: Option<String>.fromJson(json['iconPath']),
          name: json['name'] as String,
          slug: json['slug'] as String,
        );

Map<String, dynamic> _$$WebClientModelIngredientFamilyImplToJson(
        _$WebClientModelIngredientFamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
      'name': instance.name,
      'slug': instance.slug,
    };
