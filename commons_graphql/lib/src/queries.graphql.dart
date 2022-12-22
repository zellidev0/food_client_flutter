import 'package:gql/ast.dart';

class Query$Recipes {
  Query$Recipes({
    required this.recipes,
    required this.$__typename,
  });

  factory Query$Recipes.fromJson(Map<String, dynamic> json) {
    final l$recipes = json['recipes'];
    final l$$__typename = json['__typename'];
    return Query$Recipes(
      recipes: (l$recipes as List<dynamic>)
          .map((e) =>
              Query$Recipes$recipes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Recipes$recipes> recipes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recipes = recipes;
    _resultData['recipes'] = l$recipes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recipes = recipes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$recipes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recipes = recipes;
    final lOther$recipes = other.recipes;
    if (l$recipes.length != lOther$recipes.length) {
      return false;
    }
    for (int i = 0; i < l$recipes.length; i++) {
      final l$recipes$entry = l$recipes[i];
      final lOther$recipes$entry = lOther$recipes[i];
      if (l$recipes$entry != lOther$recipes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes on Query$Recipes {
  CopyWith$Query$Recipes<Query$Recipes> get copyWith => CopyWith$Query$Recipes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Recipes<TRes> {
  factory CopyWith$Query$Recipes(
    Query$Recipes instance,
    TRes Function(Query$Recipes) then,
  ) = _CopyWithImpl$Query$Recipes;

  factory CopyWith$Query$Recipes.stub(TRes res) =
      _CopyWithStubImpl$Query$Recipes;

  TRes call({
    List<Query$Recipes$recipes>? recipes,
    String? $__typename,
  });
  TRes recipes(
      Iterable<Query$Recipes$recipes> Function(
              Iterable<CopyWith$Query$Recipes$recipes<Query$Recipes$recipes>>)
          _fn);
}

class _CopyWithImpl$Query$Recipes<TRes>
    implements CopyWith$Query$Recipes<TRes> {
  _CopyWithImpl$Query$Recipes(
    this._instance,
    this._then,
  );

  final Query$Recipes _instance;

  final TRes Function(Query$Recipes) _then;

  static const _undefined = {};

  TRes call({
    Object? recipes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes(
        recipes: recipes == _undefined || recipes == null
            ? _instance.recipes
            : (recipes as List<Query$Recipes$recipes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes recipes(
          Iterable<Query$Recipes$recipes> Function(
                  Iterable<
                      CopyWith$Query$Recipes$recipes<Query$Recipes$recipes>>)
              _fn) =>
      call(
          recipes:
              _fn(_instance.recipes.map((e) => CopyWith$Query$Recipes$recipes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Recipes<TRes>
    implements CopyWith$Query$Recipes<TRes> {
  _CopyWithStubImpl$Query$Recipes(this._res);

  TRes _res;

  call({
    List<Query$Recipes$recipes>? recipes,
    String? $__typename,
  }) =>
      _res;
  recipes(_fn) => _res;
}

const documentNodeQueryRecipes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Recipes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'recipes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'yields_json'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'steps'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'slug'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prepTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'imagePath'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'headline'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'difficulty'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'descriptionMarkdown'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'country'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bridge_recipes_tags'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tags'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'numberOfRecipesByCountry'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bridge_recipes_ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ingredients'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'imagePath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'country'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'family'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'slug'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'iconPath'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'bridge_recipes_cuisines'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'cuisines'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'iconPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'slug'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$Recipes$recipes {
  Query$Recipes$recipes({
    required this.yields_json,
    this.totalTime,
    this.steps,
    required this.slug,
    this.prepTime,
    required this.name,
    this.imagePath,
    required this.id,
    required this.headline,
    required this.difficulty,
    this.descriptionMarkdown,
    required this.description,
    required this.country,
    required this.bridge_recipes_tags,
    required this.bridge_recipes_ingredients,
    required this.bridge_recipes_cuisines,
    required this.$__typename,
  });

  factory Query$Recipes$recipes.fromJson(Map<String, dynamic> json) {
    final l$yields_json = json['yields_json'];
    final l$totalTime = json['totalTime'];
    final l$steps = json['steps'];
    final l$slug = json['slug'];
    final l$prepTime = json['prepTime'];
    final l$name = json['name'];
    final l$imagePath = json['imagePath'];
    final l$id = json['id'];
    final l$headline = json['headline'];
    final l$difficulty = json['difficulty'];
    final l$descriptionMarkdown = json['descriptionMarkdown'];
    final l$description = json['description'];
    final l$country = json['country'];
    final l$bridge_recipes_tags = json['bridge_recipes_tags'];
    final l$bridge_recipes_ingredients = json['bridge_recipes_ingredients'];
    final l$bridge_recipes_cuisines = json['bridge_recipes_cuisines'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes(
      yields_json: (l$yields_json as String),
      totalTime: (l$totalTime as String?),
      steps: (l$steps as String?),
      slug: (l$slug as String),
      prepTime: (l$prepTime as String?),
      name: (l$name as String),
      imagePath: (l$imagePath as String?),
      id: (l$id as String),
      headline: (l$headline as String),
      difficulty: (l$difficulty as int),
      descriptionMarkdown: (l$descriptionMarkdown as String?),
      description: (l$description as String),
      country: (l$country as String),
      bridge_recipes_tags: (l$bridge_recipes_tags as List<dynamic>)
          .map((e) => Query$Recipes$recipes$bridge_recipes_tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bridge_recipes_ingredients: (l$bridge_recipes_ingredients
              as List<dynamic>)
          .map((e) => Query$Recipes$recipes$bridge_recipes_ingredients.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      bridge_recipes_cuisines: (l$bridge_recipes_cuisines as List<dynamic>)
          .map((e) => Query$Recipes$recipes$bridge_recipes_cuisines.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String yields_json;

  final String? totalTime;

  final String? steps;

  final String slug;

  final String? prepTime;

  final String name;

  final String? imagePath;

  final String id;

  final String headline;

  final int difficulty;

  final String? descriptionMarkdown;

  final String description;

  final String country;

  final List<Query$Recipes$recipes$bridge_recipes_tags> bridge_recipes_tags;

  final List<Query$Recipes$recipes$bridge_recipes_ingredients>
      bridge_recipes_ingredients;

  final List<Query$Recipes$recipes$bridge_recipes_cuisines>
      bridge_recipes_cuisines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yields_json = yields_json;
    _resultData['yields_json'] = l$yields_json;
    final l$totalTime = totalTime;
    _resultData['totalTime'] = l$totalTime;
    final l$steps = steps;
    _resultData['steps'] = l$steps;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$prepTime = prepTime;
    _resultData['prepTime'] = l$prepTime;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imagePath = imagePath;
    _resultData['imagePath'] = l$imagePath;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$headline = headline;
    _resultData['headline'] = l$headline;
    final l$difficulty = difficulty;
    _resultData['difficulty'] = l$difficulty;
    final l$descriptionMarkdown = descriptionMarkdown;
    _resultData['descriptionMarkdown'] = l$descriptionMarkdown;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$bridge_recipes_tags = bridge_recipes_tags;
    _resultData['bridge_recipes_tags'] =
        l$bridge_recipes_tags.map((e) => e.toJson()).toList();
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    _resultData['bridge_recipes_ingredients'] =
        l$bridge_recipes_ingredients.map((e) => e.toJson()).toList();
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    _resultData['bridge_recipes_cuisines'] =
        l$bridge_recipes_cuisines.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yields_json = yields_json;
    final l$totalTime = totalTime;
    final l$steps = steps;
    final l$slug = slug;
    final l$prepTime = prepTime;
    final l$name = name;
    final l$imagePath = imagePath;
    final l$id = id;
    final l$headline = headline;
    final l$difficulty = difficulty;
    final l$descriptionMarkdown = descriptionMarkdown;
    final l$description = description;
    final l$country = country;
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yields_json,
      l$totalTime,
      l$steps,
      l$slug,
      l$prepTime,
      l$name,
      l$imagePath,
      l$id,
      l$headline,
      l$difficulty,
      l$descriptionMarkdown,
      l$description,
      l$country,
      Object.hashAll(l$bridge_recipes_tags.map((v) => v)),
      Object.hashAll(l$bridge_recipes_ingredients.map((v) => v)),
      Object.hashAll(l$bridge_recipes_cuisines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yields_json = yields_json;
    final lOther$yields_json = other.yields_json;
    if (l$yields_json != lOther$yields_json) {
      return false;
    }
    final l$totalTime = totalTime;
    final lOther$totalTime = other.totalTime;
    if (l$totalTime != lOther$totalTime) {
      return false;
    }
    final l$steps = steps;
    final lOther$steps = other.steps;
    if (l$steps != lOther$steps) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$prepTime = prepTime;
    final lOther$prepTime = other.prepTime;
    if (l$prepTime != lOther$prepTime) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$headline = headline;
    final lOther$headline = other.headline;
    if (l$headline != lOther$headline) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$descriptionMarkdown = descriptionMarkdown;
    final lOther$descriptionMarkdown = other.descriptionMarkdown;
    if (l$descriptionMarkdown != lOther$descriptionMarkdown) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$bridge_recipes_tags = bridge_recipes_tags;
    final lOther$bridge_recipes_tags = other.bridge_recipes_tags;
    if (l$bridge_recipes_tags.length != lOther$bridge_recipes_tags.length) {
      return false;
    }
    for (int i = 0; i < l$bridge_recipes_tags.length; i++) {
      final l$bridge_recipes_tags$entry = l$bridge_recipes_tags[i];
      final lOther$bridge_recipes_tags$entry = lOther$bridge_recipes_tags[i];
      if (l$bridge_recipes_tags$entry != lOther$bridge_recipes_tags$entry) {
        return false;
      }
    }
    final l$bridge_recipes_ingredients = bridge_recipes_ingredients;
    final lOther$bridge_recipes_ingredients = other.bridge_recipes_ingredients;
    if (l$bridge_recipes_ingredients.length !=
        lOther$bridge_recipes_ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$bridge_recipes_ingredients.length; i++) {
      final l$bridge_recipes_ingredients$entry =
          l$bridge_recipes_ingredients[i];
      final lOther$bridge_recipes_ingredients$entry =
          lOther$bridge_recipes_ingredients[i];
      if (l$bridge_recipes_ingredients$entry !=
          lOther$bridge_recipes_ingredients$entry) {
        return false;
      }
    }
    final l$bridge_recipes_cuisines = bridge_recipes_cuisines;
    final lOther$bridge_recipes_cuisines = other.bridge_recipes_cuisines;
    if (l$bridge_recipes_cuisines.length !=
        lOther$bridge_recipes_cuisines.length) {
      return false;
    }
    for (int i = 0; i < l$bridge_recipes_cuisines.length; i++) {
      final l$bridge_recipes_cuisines$entry = l$bridge_recipes_cuisines[i];
      final lOther$bridge_recipes_cuisines$entry =
          lOther$bridge_recipes_cuisines[i];
      if (l$bridge_recipes_cuisines$entry !=
          lOther$bridge_recipes_cuisines$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes on Query$Recipes$recipes {
  CopyWith$Query$Recipes$recipes<Query$Recipes$recipes> get copyWith =>
      CopyWith$Query$Recipes$recipes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Recipes$recipes<TRes> {
  factory CopyWith$Query$Recipes$recipes(
    Query$Recipes$recipes instance,
    TRes Function(Query$Recipes$recipes) then,
  ) = _CopyWithImpl$Query$Recipes$recipes;

  factory CopyWith$Query$Recipes$recipes.stub(TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes;

  TRes call({
    String? yields_json,
    String? totalTime,
    String? steps,
    String? slug,
    String? prepTime,
    String? name,
    String? imagePath,
    String? id,
    String? headline,
    int? difficulty,
    String? descriptionMarkdown,
    String? description,
    String? country,
    List<Query$Recipes$recipes$bridge_recipes_tags>? bridge_recipes_tags,
    List<Query$Recipes$recipes$bridge_recipes_ingredients>?
        bridge_recipes_ingredients,
    List<Query$Recipes$recipes$bridge_recipes_cuisines>?
        bridge_recipes_cuisines,
    String? $__typename,
  });
  TRes bridge_recipes_tags(
      Iterable<Query$Recipes$recipes$bridge_recipes_tags> Function(
              Iterable<
                  CopyWith$Query$Recipes$recipes$bridge_recipes_tags<
                      Query$Recipes$recipes$bridge_recipes_tags>>)
          _fn);
  TRes bridge_recipes_ingredients(
      Iterable<Query$Recipes$recipes$bridge_recipes_ingredients> Function(
              Iterable<
                  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<
                      Query$Recipes$recipes$bridge_recipes_ingredients>>)
          _fn);
  TRes bridge_recipes_cuisines(
      Iterable<Query$Recipes$recipes$bridge_recipes_cuisines> Function(
              Iterable<
                  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<
                      Query$Recipes$recipes$bridge_recipes_cuisines>>)
          _fn);
}

class _CopyWithImpl$Query$Recipes$recipes<TRes>
    implements CopyWith$Query$Recipes$recipes<TRes> {
  _CopyWithImpl$Query$Recipes$recipes(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes _instance;

  final TRes Function(Query$Recipes$recipes) _then;

  static const _undefined = {};

  TRes call({
    Object? yields_json = _undefined,
    Object? totalTime = _undefined,
    Object? steps = _undefined,
    Object? slug = _undefined,
    Object? prepTime = _undefined,
    Object? name = _undefined,
    Object? imagePath = _undefined,
    Object? id = _undefined,
    Object? headline = _undefined,
    Object? difficulty = _undefined,
    Object? descriptionMarkdown = _undefined,
    Object? description = _undefined,
    Object? country = _undefined,
    Object? bridge_recipes_tags = _undefined,
    Object? bridge_recipes_ingredients = _undefined,
    Object? bridge_recipes_cuisines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes(
        yields_json: yields_json == _undefined || yields_json == null
            ? _instance.yields_json
            : (yields_json as String),
        totalTime: totalTime == _undefined
            ? _instance.totalTime
            : (totalTime as String?),
        steps: steps == _undefined ? _instance.steps : (steps as String?),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        prepTime:
            prepTime == _undefined ? _instance.prepTime : (prepTime as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        imagePath: imagePath == _undefined
            ? _instance.imagePath
            : (imagePath as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        headline: headline == _undefined || headline == null
            ? _instance.headline
            : (headline as String),
        difficulty: difficulty == _undefined || difficulty == null
            ? _instance.difficulty
            : (difficulty as int),
        descriptionMarkdown: descriptionMarkdown == _undefined
            ? _instance.descriptionMarkdown
            : (descriptionMarkdown as String?),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        country: country == _undefined || country == null
            ? _instance.country
            : (country as String),
        bridge_recipes_tags:
            bridge_recipes_tags == _undefined || bridge_recipes_tags == null
                ? _instance.bridge_recipes_tags
                : (bridge_recipes_tags
                    as List<Query$Recipes$recipes$bridge_recipes_tags>),
        bridge_recipes_ingredients: bridge_recipes_ingredients == _undefined ||
                bridge_recipes_ingredients == null
            ? _instance.bridge_recipes_ingredients
            : (bridge_recipes_ingredients
                as List<Query$Recipes$recipes$bridge_recipes_ingredients>),
        bridge_recipes_cuisines: bridge_recipes_cuisines == _undefined ||
                bridge_recipes_cuisines == null
            ? _instance.bridge_recipes_cuisines
            : (bridge_recipes_cuisines
                as List<Query$Recipes$recipes$bridge_recipes_cuisines>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bridge_recipes_tags(
          Iterable<Query$Recipes$recipes$bridge_recipes_tags> Function(
                  Iterable<
                      CopyWith$Query$Recipes$recipes$bridge_recipes_tags<
                          Query$Recipes$recipes$bridge_recipes_tags>>)
              _fn) =>
      call(
          bridge_recipes_tags: _fn(_instance.bridge_recipes_tags
              .map((e) => CopyWith$Query$Recipes$recipes$bridge_recipes_tags(
                    e,
                    (i) => i,
                  ))).toList());
  TRes bridge_recipes_ingredients(
          Iterable<Query$Recipes$recipes$bridge_recipes_ingredients> Function(
                  Iterable<
                      CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<
                          Query$Recipes$recipes$bridge_recipes_ingredients>>)
              _fn) =>
      call(
          bridge_recipes_ingredients: _fn(_instance.bridge_recipes_ingredients
              .map((e) =>
                  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients(
                    e,
                    (i) => i,
                  ))).toList());
  TRes bridge_recipes_cuisines(
          Iterable<Query$Recipes$recipes$bridge_recipes_cuisines> Function(
                  Iterable<
                      CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<
                          Query$Recipes$recipes$bridge_recipes_cuisines>>)
              _fn) =>
      call(
          bridge_recipes_cuisines: _fn(_instance.bridge_recipes_cuisines.map(
              (e) => CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Recipes$recipes<TRes>
    implements CopyWith$Query$Recipes$recipes<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes(this._res);

  TRes _res;

  call({
    String? yields_json,
    String? totalTime,
    String? steps,
    String? slug,
    String? prepTime,
    String? name,
    String? imagePath,
    String? id,
    String? headline,
    int? difficulty,
    String? descriptionMarkdown,
    String? description,
    String? country,
    List<Query$Recipes$recipes$bridge_recipes_tags>? bridge_recipes_tags,
    List<Query$Recipes$recipes$bridge_recipes_ingredients>?
        bridge_recipes_ingredients,
    List<Query$Recipes$recipes$bridge_recipes_cuisines>?
        bridge_recipes_cuisines,
    String? $__typename,
  }) =>
      _res;
  bridge_recipes_tags(_fn) => _res;
  bridge_recipes_ingredients(_fn) => _res;
  bridge_recipes_cuisines(_fn) => _res;
}

class Query$Recipes$recipes$bridge_recipes_tags {
  Query$Recipes$recipes$bridge_recipes_tags({
    this.tags,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_tags.fromJson(
      Map<String, dynamic> json) {
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_tags(
      tags: l$tags == null
          ? null
          : Query$Recipes$recipes$bridge_recipes_tags$tags.fromJson(
              (l$tags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recipes$recipes$bridge_recipes_tags$tags? tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tags = tags;
    _resultData['tags'] = l$tags?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes$bridge_recipes_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != lOther$tags) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_tags
    on Query$Recipes$recipes$bridge_recipes_tags {
  CopyWith$Query$Recipes$recipes$bridge_recipes_tags<
          Query$Recipes$recipes$bridge_recipes_tags>
      get copyWith => CopyWith$Query$Recipes$recipes$bridge_recipes_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_tags<TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_tags(
    Query$Recipes$recipes$bridge_recipes_tags instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_tags) then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_tags.stub(TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags;

  TRes call({
    Query$Recipes$recipes$bridge_recipes_tags$tags? tags,
    String? $__typename,
  });
  CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> get tags;
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_tags<TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_tags _instance;

  final TRes Function(Query$Recipes$recipes$bridge_recipes_tags) _then;

  static const _undefined = {};

  TRes call({
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_tags(
        tags: tags == _undefined
            ? _instance.tags
            : (tags as Query$Recipes$recipes$bridge_recipes_tags$tags?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags.stub(
            _then(_instance))
        : CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags(
            local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_tags<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags(this._res);

  TRes _res;

  call({
    Query$Recipes$recipes$bridge_recipes_tags$tags? tags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> get tags =>
      CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags.stub(_res);
}

class Query$Recipes$recipes$bridge_recipes_tags$tags {
  Query$Recipes$recipes$bridge_recipes_tags$tags({
    required this.type,
    required this.slug,
    required this.numberOfRecipesByCountry,
    required this.name,
    required this.id,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_tags$tags.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$slug = json['slug'];
    final l$numberOfRecipesByCountry = json['numberOfRecipesByCountry'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_tags$tags(
      type: (l$type as String),
      slug: (l$slug as String),
      numberOfRecipesByCountry: (l$numberOfRecipesByCountry as String),
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String slug;

  final String numberOfRecipesByCountry;

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    _resultData['numberOfRecipesByCountry'] = l$numberOfRecipesByCountry;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$slug = slug;
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$slug,
      l$numberOfRecipesByCountry,
      l$name,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes$bridge_recipes_tags$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$numberOfRecipesByCountry = numberOfRecipesByCountry;
    final lOther$numberOfRecipesByCountry = other.numberOfRecipesByCountry;
    if (l$numberOfRecipesByCountry != lOther$numberOfRecipesByCountry) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_tags$tags
    on Query$Recipes$recipes$bridge_recipes_tags$tags {
  CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<
          Query$Recipes$recipes$bridge_recipes_tags$tags>
      get copyWith => CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags(
    Query$Recipes$recipes$bridge_recipes_tags$tags instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_tags$tags) then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags$tags;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags$tags;

  TRes call({
    String? type,
    String? slug,
    String? numberOfRecipesByCountry,
    String? name,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_tags$tags(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_tags$tags _instance;

  final TRes Function(Query$Recipes$recipes$bridge_recipes_tags$tags) _then;

  static const _undefined = {};

  TRes call({
    Object? type = _undefined,
    Object? slug = _undefined,
    Object? numberOfRecipesByCountry = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_tags$tags(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        numberOfRecipesByCountry: numberOfRecipesByCountry == _undefined ||
                numberOfRecipesByCountry == null
            ? _instance.numberOfRecipesByCountry
            : (numberOfRecipesByCountry as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_tags$tags<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_tags$tags(this._res);

  TRes _res;

  call({
    String? type,
    String? slug,
    String? numberOfRecipesByCountry,
    String? name,
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Recipes$recipes$bridge_recipes_ingredients {
  Query$Recipes$recipes$bridge_recipes_ingredients({
    this.ingredients,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$ingredients = json['ingredients'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_ingredients(
      ingredients: l$ingredients == null
          ? null
          : Query$Recipes$recipes$bridge_recipes_ingredients$ingredients
              .fromJson((l$ingredients as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients?
      ingredients;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ingredients = ingredients;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ingredients,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes$bridge_recipes_ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients != lOther$ingredients) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_ingredients
    on Query$Recipes$recipes$bridge_recipes_ingredients {
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<
          Query$Recipes$recipes$bridge_recipes_ingredients>
      get copyWith => CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients(
    Query$Recipes$recipes$bridge_recipes_ingredients instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_ingredients) then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients;

  TRes call({
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients? ingredients,
    String? $__typename,
  });
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<TRes>
      get ingredients;
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_ingredients _instance;

  final TRes Function(Query$Recipes$recipes$bridge_recipes_ingredients) _then;

  static const _undefined = {};

  TRes call({
    Object? ingredients = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_ingredients(
        ingredients: ingredients == _undefined
            ? _instance.ingredients
            : (ingredients
                as Query$Recipes$recipes$bridge_recipes_ingredients$ingredients?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<TRes>
      get ingredients {
    final local$ingredients = _instance.ingredients;
    return local$ingredients == null
        ? CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients
            .stub(_then(_instance))
        : CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
            local$ingredients, (e) => call(ingredients: e));
  }
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients(this._res);

  TRes _res;

  call({
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients? ingredients,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<TRes>
      get ingredients =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients
              .stub(_res);
}

class Query$Recipes$recipes$bridge_recipes_ingredients$ingredients {
  Query$Recipes$recipes$bridge_recipes_ingredients$ingredients({
    required this.type,
    required this.slug,
    required this.name,
    this.imagePath,
    required this.id,
    required this.country,
    this.family,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_ingredients$ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$imagePath = json['imagePath'];
    final l$id = json['id'];
    final l$country = json['country'];
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
      type: (l$type as String),
      slug: (l$slug as String),
      name: (l$name as String),
      imagePath: (l$imagePath as String?),
      id: (l$id as String),
      country: (l$country as String),
      family: l$family == null
          ? null
          : Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
              .fromJson((l$family as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String slug;

  final String name;

  final String? imagePath;

  final String id;

  final String country;

  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family?
      family;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imagePath = imagePath;
    _resultData['imagePath'] = l$imagePath;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$slug = slug;
    final l$name = name;
    final l$imagePath = imagePath;
    final l$id = id;
    final l$country = country;
    final l$family = family;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$slug,
      l$name,
      l$imagePath,
      l$id,
      l$country,
      l$family,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Recipes$recipes$bridge_recipes_ingredients$ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients
    on Query$Recipes$recipes$bridge_recipes_ingredients$ingredients {
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
          Query$Recipes$recipes$bridge_recipes_ingredients$ingredients>
      get copyWith =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
    TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_ingredients$ingredients)
        then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients;

  TRes call({
    String? type,
    String? slug,
    String? name,
    String? imagePath,
    String? id,
    String? country,
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family? family,
    String? $__typename,
  });
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
      TRes> get family;
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
        TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
            TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients _instance;

  final TRes Function(
      Query$Recipes$recipes$bridge_recipes_ingredients$ingredients) _then;

  static const _undefined = {};

  TRes call({
    Object? type = _undefined,
    Object? slug = _undefined,
    Object? name = _undefined,
    Object? imagePath = _undefined,
    Object? id = _undefined,
    Object? country = _undefined,
    Object? family = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        imagePath: imagePath == _undefined
            ? _instance.imagePath
            : (imagePath as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        country: country == _undefined || country == null
            ? _instance.country
            : (country as String),
        family: family == _undefined
            ? _instance.family
            : (family
                as Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
      TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
            .stub(_then(_instance))
        : CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
        TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients<
            TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients(
      this._res);

  TRes _res;

  call({
    String? type,
    String? slug,
    String? name,
    String? imagePath,
    String? id,
    String? country,
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family? family,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
          TRes>
      get family =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
              .stub(_res);
}

class Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family {
  Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family({
    required this.type,
    required this.slug,
    required this.name,
    required this.id,
    this.iconPath,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$iconPath = json['iconPath'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
      type: (l$type as String),
      slug: (l$slug as String),
      name: (l$name as String),
      id: (l$id as String),
      iconPath: (l$iconPath as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String slug;

  final String name;

  final String id;

  final String? iconPath;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$iconPath = iconPath;
    _resultData['iconPath'] = l$iconPath;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$slug = slug;
    final l$name = name;
    final l$id = id;
    final l$iconPath = iconPath;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$slug,
      l$name,
      l$id,
      l$iconPath,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
    on Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family {
  CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
          Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family>
      get copyWith =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
    TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
    Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
        instance,
    TRes Function(
            Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family)
        then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family;

  TRes call({
    String? type,
    String? slug,
    String? name,
    String? id,
    String? iconPath,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
        TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
            TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family
      _instance;

  final TRes Function(
          Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family)
      _then;

  static const _undefined = {};

  TRes call({
    Object? type = _undefined,
    Object? slug = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? iconPath = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        iconPath:
            iconPath == _undefined ? _instance.iconPath : (iconPath as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
        TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family<
            TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_ingredients$ingredients$family(
      this._res);

  TRes _res;

  call({
    String? type,
    String? slug,
    String? name,
    String? id,
    String? iconPath,
    String? $__typename,
  }) =>
      _res;
}

class Query$Recipes$recipes$bridge_recipes_cuisines {
  Query$Recipes$recipes$bridge_recipes_cuisines({
    this.cuisines,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$cuisines = json['cuisines'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_cuisines(
      cuisines: l$cuisines == null
          ? null
          : Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.fromJson(
              (l$cuisines as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recipes$recipes$bridge_recipes_cuisines$cuisines? cuisines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cuisines = cuisines;
    _resultData['cuisines'] = l$cuisines?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cuisines = cuisines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cuisines,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes$bridge_recipes_cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cuisines = cuisines;
    final lOther$cuisines = other.cuisines;
    if (l$cuisines != lOther$cuisines) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_cuisines
    on Query$Recipes$recipes$bridge_recipes_cuisines {
  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<
          Query$Recipes$recipes$bridge_recipes_cuisines>
      get copyWith => CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines(
    Query$Recipes$recipes$bridge_recipes_cuisines instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_cuisines) then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines;

  TRes call({
    Query$Recipes$recipes$bridge_recipes_cuisines$cuisines? cuisines,
    String? $__typename,
  });
  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes>
      get cuisines;
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_cuisines _instance;

  final TRes Function(Query$Recipes$recipes$bridge_recipes_cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? cuisines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_cuisines(
        cuisines: cuisines == _undefined
            ? _instance.cuisines
            : (cuisines
                as Query$Recipes$recipes$bridge_recipes_cuisines$cuisines?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes>
      get cuisines {
    final local$cuisines = _instance.cuisines;
    return local$cuisines == null
        ? CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.stub(
            _then(_instance))
        : CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
            local$cuisines, (e) => call(cuisines: e));
  }
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines<TRes>
    implements CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines(this._res);

  TRes _res;

  call({
    Query$Recipes$recipes$bridge_recipes_cuisines$cuisines? cuisines,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes>
      get cuisines =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.stub(
              _res);
}

class Query$Recipes$recipes$bridge_recipes_cuisines$cuisines {
  Query$Recipes$recipes$bridge_recipes_cuisines$cuisines({
    this.iconPath,
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$iconPath = json['iconPath'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$slug = json['slug'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
      iconPath: (l$iconPath as String?),
      id: (l$id as String),
      name: (l$name as String),
      slug: (l$slug as String),
      type: (l$type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? iconPath;

  final String id;

  final String name;

  final String slug;

  final String type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$iconPath = iconPath;
    _resultData['iconPath'] = l$iconPath;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$iconPath = iconPath;
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$iconPath,
      l$id,
      l$name,
      l$slug,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes$bridge_recipes_cuisines$cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$iconPath = iconPath;
    final lOther$iconPath = other.iconPath;
    if (l$iconPath != lOther$iconPath) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines
    on Query$Recipes$recipes$bridge_recipes_cuisines$cuisines {
  CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<
          Query$Recipes$recipes$bridge_recipes_cuisines$cuisines>
      get copyWith =>
          CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<
    TRes> {
  factory CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
    Query$Recipes$recipes$bridge_recipes_cuisines$cuisines instance,
    TRes Function(Query$Recipes$recipes$bridge_recipes_cuisines$cuisines) then,
  ) = _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines;

  factory CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes> {
  _CopyWithImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes$bridge_recipes_cuisines$cuisines _instance;

  final TRes Function(Query$Recipes$recipes$bridge_recipes_cuisines$cuisines)
      _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
        iconPath:
            iconPath == _undefined ? _instance.iconPath : (iconPath as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<
        TRes>
    implements
        CopyWith$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
      this._res);

  TRes _res;

  call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
    String? $__typename,
  }) =>
      _res;
}
