// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_fresh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HelloFreshModelRecipeApiRecipeResponseImpl
    _$$HelloFreshModelRecipeApiRecipeResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$HelloFreshModelRecipeApiRecipeResponseImpl(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelRecipe.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HelloFreshModelRecipeApiRecipeResponseImplToJson(
        _$HelloFreshModelRecipeApiRecipeResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$HelloFreshModelRecipeApiTagResponseImpl
    _$$HelloFreshModelRecipeApiTagResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$HelloFreshModelRecipeApiTagResponseImpl(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map(
                  (e) => HelloFreshModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HelloFreshModelRecipeApiTagResponseImplToJson(
        _$HelloFreshModelRecipeApiTagResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$HelloFreshModelRecipeApiCuisineResponseImpl
    _$$HelloFreshModelRecipeApiCuisineResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$HelloFreshModelRecipeApiCuisineResponseImpl(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelCuisine.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HelloFreshModelRecipeApiCuisineResponseImplToJson(
        _$HelloFreshModelRecipeApiCuisineResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$HelloFreshModelRecipeApiIngredientsResponseImpl
    _$$HelloFreshModelRecipeApiIngredientsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$HelloFreshModelRecipeApiIngredientsResponseImpl(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelIngredient.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HelloFreshModelRecipeApiIngredientsResponseImplToJson(
        _$HelloFreshModelRecipeApiIngredientsResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$HelloFreshModelTagsApiResponseImpl
    _$$HelloFreshModelTagsApiResponseImplFromJson(Map<String, dynamic> json) =>
        _$HelloFreshModelTagsApiResponseImpl(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map(
                  (e) => HelloFreshModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HelloFreshModelTagsApiResponseImplToJson(
        _$HelloFreshModelTagsApiResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$HelloFreshModelRecipeImpl _$$HelloFreshModelRecipeImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelRecipeImpl(
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
              HelloFreshModelIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      yields: (json['yields'] as List<dynamic>)
          .map((e) => HelloFreshModelYield.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) =>
              HelloFreshModelRecipeTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => HelloFreshModelStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      cuisines: (json['cuisines'] as List<dynamic>)
          .map(
              (e) => HelloFreshModelCuisine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HelloFreshModelRecipeImplToJson(
        _$HelloFreshModelRecipeImpl instance) =>
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

_$HelloFreshModelIngredientImpl _$$HelloFreshModelIngredientImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelIngredientImpl(
      id: json['id'] as String,
      country: json['country'] as String,
      slug: json['slug'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      imagePath: Option<String>.fromJson(json['imagePath']),
      family: json['family'] == null
          ? null
          : HelloFreshModelIngredientFamily.fromJson(
              json['family'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HelloFreshModelIngredientImplToJson(
        _$HelloFreshModelIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'slug': instance.slug,
      'name': instance.name,
      'type': instance.type,
      'imagePath': instance.imagePath.toJson(
        (value) => value,
      ),
      'family': instance.family,
    };

_$HelloFreshModelRecipeTagImpl _$$HelloFreshModelRecipeTagImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelRecipeTagImpl(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      numberOfRecipesByCountry:
          Option<Map<String, int>>.fromJson(json['numberOfRecipesByCountry']),
    );

Map<String, dynamic> _$$HelloFreshModelRecipeTagImplToJson(
        _$HelloFreshModelRecipeTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry.toJson(
        (value) => value,
      ),
    };

_$HelloFreshModelCuisineImpl _$$HelloFreshModelCuisineImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelCuisineImpl(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      usage: Option<int>.fromJson(json['usage']),
      iconPath: Option<String>.fromJson(json['iconPath']),
    );

Map<String, dynamic> _$$HelloFreshModelCuisineImplToJson(
        _$HelloFreshModelCuisineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'usage': instance.usage.toJson(
        (value) => value,
      ),
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
    };

_$HelloFreshModelYieldImpl _$$HelloFreshModelYieldImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelYieldImpl(
      yields: Option<int>.fromJson(json['yields']),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => HelloFreshModelYieldIngredient.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HelloFreshModelYieldImplToJson(
        _$HelloFreshModelYieldImpl instance) =>
    <String, dynamic>{
      'yields': instance.yields.toJson(
        (value) => value,
      ),
      'ingredients': instance.ingredients,
    };

_$HelloFreshModelStepImpl _$$HelloFreshModelStepImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelStepImpl(
      index: json['index'] as int,
      instructionsMarkdown: json['instructionsMarkdown'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) =>
              HelloFreshModelStepImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HelloFreshModelStepImplToJson(
        _$HelloFreshModelStepImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'instructionsMarkdown': instance.instructionsMarkdown,
      'ingredients': instance.ingredients,
      'images': instance.images,
    };

_$HelloFreshModelStepImageImpl _$$HelloFreshModelStepImageImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelStepImageImpl(
      path: json['path'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$$HelloFreshModelStepImageImplToJson(
        _$HelloFreshModelStepImageImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'caption': instance.caption,
    };

_$HelloFreshModelYieldIngredientImpl
    _$$HelloFreshModelYieldIngredientImplFromJson(Map<String, dynamic> json) =>
        _$HelloFreshModelYieldIngredientImpl(
          id: json['id'] as String,
          amount: Option<num>.fromJson(json['amount']),
          unit: Option<String>.fromJson(json['unit']),
        );

Map<String, dynamic> _$$HelloFreshModelYieldIngredientImplToJson(
        _$HelloFreshModelYieldIngredientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount.toJson(
        (value) => value,
      ),
      'unit': instance.unit.toJson(
        (value) => value,
      ),
    };

_$HelloFreshModelTagImpl _$$HelloFreshModelTagImplFromJson(
        Map<String, dynamic> json) =>
    _$HelloFreshModelTagImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$HelloFreshModelTagImplToJson(
        _$HelloFreshModelTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$HelloFreshModelIngredientFamilyImpl
    _$$HelloFreshModelIngredientFamilyImplFromJson(Map<String, dynamic> json) =>
        _$HelloFreshModelIngredientFamilyImpl(
          id: json['id'] as String,
          type: json['type'] as String,
          iconPath: Option<String>.fromJson(json['iconPath']),
          name: json['name'] as String,
          slug: json['slug'] as String,
        );

Map<String, dynamic> _$$HelloFreshModelIngredientFamilyImplToJson(
        _$HelloFreshModelIngredientFamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
      'name': instance.name,
      'slug': instance.slug,
    };
