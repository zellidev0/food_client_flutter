// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_fresh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HelloFreshModelRecipeApiRecipeResponse
    _$$_HelloFreshModelRecipeApiRecipeResponseFromJson(
            Map<String, dynamic> json) =>
        _$_HelloFreshModelRecipeApiRecipeResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelRecipe.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_HelloFreshModelRecipeApiRecipeResponseToJson(
        _$_HelloFreshModelRecipeApiRecipeResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_HelloFreshModelRecipeApiTagResponse
    _$$_HelloFreshModelRecipeApiTagResponseFromJson(
            Map<String, dynamic> json) =>
        _$_HelloFreshModelRecipeApiTagResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map(
                  (e) => HelloFreshModelTag.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_HelloFreshModelRecipeApiTagResponseToJson(
        _$_HelloFreshModelRecipeApiTagResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_HelloFreshModelRecipeApiCuisineResponse
    _$$_HelloFreshModelRecipeApiCuisineResponseFromJson(
            Map<String, dynamic> json) =>
        _$_HelloFreshModelRecipeApiCuisineResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelCuisine.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_HelloFreshModelRecipeApiCuisineResponseToJson(
        _$_HelloFreshModelRecipeApiCuisineResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_HelloFreshModelRecipeApiIngredientsResponse
    _$$_HelloFreshModelRecipeApiIngredientsResponseFromJson(
            Map<String, dynamic> json) =>
        _$_HelloFreshModelRecipeApiIngredientsResponse(
          total: json['total'] as int,
          take: json['take'] as int,
          count: json['count'] as int,
          skip: json['skip'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  HelloFreshModelIngredient.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_HelloFreshModelRecipeApiIngredientsResponseToJson(
        _$_HelloFreshModelRecipeApiIngredientsResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_HelloFreshModelTagsApiResponse _$$_HelloFreshModelTagsApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelTagsApiResponse(
      total: json['total'] as int,
      take: json['take'] as int,
      count: json['count'] as int,
      skip: json['skip'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => HelloFreshModelTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HelloFreshModelTagsApiResponseToJson(
        _$_HelloFreshModelTagsApiResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'take': instance.take,
      'count': instance.count,
      'skip': instance.skip,
      'items': instance.items,
    };

_$_HelloFreshModelRecipe _$$_HelloFreshModelRecipeFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelRecipe(
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

Map<String, dynamic> _$$_HelloFreshModelRecipeToJson(
        _$_HelloFreshModelRecipe instance) =>
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

_$_HelloFreshModelIngredient _$$_HelloFreshModelIngredientFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelIngredient(
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

Map<String, dynamic> _$$_HelloFreshModelIngredientToJson(
        _$_HelloFreshModelIngredient instance) =>
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

_$_HelloFreshModelRecipeTag _$$_HelloFreshModelRecipeTagFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelRecipeTag(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$_HelloFreshModelRecipeTagToJson(
        _$_HelloFreshModelRecipeTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'type': instance.type,
      'name': instance.name,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$_HelloFreshModelCuisine _$$_HelloFreshModelCuisineFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelCuisine(
      id: json['id'] as String,
      slug: json['slug'] as String,
      type: json['type'] as String,
      name: json['name'] as String,
      usage: json['usage'] as int,
      iconPath: Option<String>.fromJson(json['iconPath']),
    );

Map<String, dynamic> _$$_HelloFreshModelCuisineToJson(
        _$_HelloFreshModelCuisine instance) =>
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

_$_HelloFreshModelYield _$$_HelloFreshModelYieldFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelYield(
      yields: Option<int>.fromJson(json['yields']),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => HelloFreshModelYieldIngredient.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HelloFreshModelYieldToJson(
        _$_HelloFreshModelYield instance) =>
    <String, dynamic>{
      'yields': instance.yields.toJson(
        (value) => value,
      ),
      'ingredients': instance.ingredients,
    };

_$_HelloFreshModelStep _$$_HelloFreshModelStepFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelStep(
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

Map<String, dynamic> _$$_HelloFreshModelStepToJson(
        _$_HelloFreshModelStep instance) =>
    <String, dynamic>{
      'index': instance.index,
      'instructionsMarkdown': instance.instructionsMarkdown,
      'ingredients': instance.ingredients,
      'images': instance.images,
    };

_$_HelloFreshModelStepImage _$$_HelloFreshModelStepImageFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelStepImage(
      path: json['path'] as String,
      caption: json['caption'] as String,
    );

Map<String, dynamic> _$$_HelloFreshModelStepImageToJson(
        _$_HelloFreshModelStepImage instance) =>
    <String, dynamic>{
      'path': instance.path,
      'caption': instance.caption,
    };

_$_HelloFreshModelYieldIngredient _$$_HelloFreshModelYieldIngredientFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelYieldIngredient(
      id: json['id'] as String,
      amount: Option<num>.fromJson(json['amount']),
      unit: Option<String>.fromJson(json['unit']),
    );

Map<String, dynamic> _$$_HelloFreshModelYieldIngredientToJson(
        _$_HelloFreshModelYieldIngredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount.toJson(
        (value) => value,
      ),
      'unit': instance.unit.toJson(
        (value) => value,
      ),
    };

_$_HelloFreshModelTag _$$_HelloFreshModelTagFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelTag(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      numberOfRecipesByCountry:
          Map<String, int>.from(json['numberOfRecipesByCountry'] as Map),
    );

Map<String, dynamic> _$$_HelloFreshModelTagToJson(
        _$_HelloFreshModelTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'numberOfRecipesByCountry': instance.numberOfRecipesByCountry,
    };

_$_HelloFreshModelIngredientFamily _$$_HelloFreshModelIngredientFamilyFromJson(
        Map<String, dynamic> json) =>
    _$_HelloFreshModelIngredientFamily(
      id: json['id'] as String,
      type: json['type'] as String,
      iconPath: Option<String>.fromJson(json['iconPath']),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$_HelloFreshModelIngredientFamilyToJson(
        _$_HelloFreshModelIngredientFamily instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
      'name': instance.name,
      'slug': instance.slug,
    };
