import 'package:gql/ast.dart';

class Variables$Query$Recipes {
  factory Variables$Query$Recipes({
    String? country,
    int? limit,
    int? offset,
  }) =>
      Variables$Query$Recipes._({
        if (country != null) r'country': country,
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$Recipes._(this._$data);

  factory Variables$Query$Recipes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$Recipes._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get country => (_$data['country'] as String?);
  int? get limit => (_$data['limit'] as int?);
  int? get offset => (_$data['offset'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Recipes<Variables$Query$Recipes> get copyWith =>
      CopyWith$Variables$Query$Recipes(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Recipes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Recipes<TRes> {
  factory CopyWith$Variables$Query$Recipes(
    Variables$Query$Recipes instance,
    TRes Function(Variables$Query$Recipes) then,
  ) = _CopyWithImpl$Variables$Query$Recipes;

  factory CopyWith$Variables$Query$Recipes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Recipes;

  TRes call({
    String? country,
    int? limit,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$Recipes<TRes>
    implements CopyWith$Variables$Query$Recipes<TRes> {
  _CopyWithImpl$Variables$Query$Recipes(
    this._instance,
    this._then,
  );

  final Variables$Query$Recipes _instance;

  final TRes Function(Variables$Query$Recipes) _then;

  static const _undefined = {};

  TRes call({
    Object? country = _undefined,
    Object? limit = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Variables$Query$Recipes._({
        ..._instance._$data,
        if (country != _undefined) 'country': (country as String?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Recipes<TRes>
    implements CopyWith$Variables$Query$Recipes<TRes> {
  _CopyWithStubImpl$Variables$Query$Recipes(this._res);

  TRes _res;

  call({
    String? country,
    int? limit,
    int? offset,
  }) =>
      _res;
}

class Query$Recipes {
  Query$Recipes({
    required this.recipes,
    required this.recipes_aggregate,
    required this.$__typename,
  });

  factory Query$Recipes.fromJson(Map<String, dynamic> json) {
    final l$recipes = json['recipes'];
    final l$recipes_aggregate = json['recipes_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$Recipes(
      recipes: (l$recipes as List<dynamic>)
          .map((e) =>
              Query$Recipes$recipes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      recipes_aggregate: Query$Recipes$recipes_aggregate.fromJson(
          (l$recipes_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Recipes$recipes> recipes;

  final Query$Recipes$recipes_aggregate recipes_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recipes = recipes;
    _resultData['recipes'] = l$recipes.map((e) => e.toJson()).toList();
    final l$recipes_aggregate = recipes_aggregate;
    _resultData['recipes_aggregate'] = l$recipes_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recipes = recipes;
    final l$recipes_aggregate = recipes_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$recipes.map((v) => v)),
      l$recipes_aggregate,
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
    final l$recipes_aggregate = recipes_aggregate;
    final lOther$recipes_aggregate = other.recipes_aggregate;
    if (l$recipes_aggregate != lOther$recipes_aggregate) {
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
    Query$Recipes$recipes_aggregate? recipes_aggregate,
    String? $__typename,
  });
  TRes recipes(
      Iterable<Query$Recipes$recipes> Function(
              Iterable<CopyWith$Query$Recipes$recipes<Query$Recipes$recipes>>)
          _fn);
  CopyWith$Query$Recipes$recipes_aggregate<TRes> get recipes_aggregate;
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
    Object? recipes_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes(
        recipes: recipes == _undefined || recipes == null
            ? _instance.recipes
            : (recipes as List<Query$Recipes$recipes>),
        recipes_aggregate:
            recipes_aggregate == _undefined || recipes_aggregate == null
                ? _instance.recipes_aggregate
                : (recipes_aggregate as Query$Recipes$recipes_aggregate),
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
  CopyWith$Query$Recipes$recipes_aggregate<TRes> get recipes_aggregate {
    final local$recipes_aggregate = _instance.recipes_aggregate;
    return CopyWith$Query$Recipes$recipes_aggregate(
        local$recipes_aggregate, (e) => call(recipes_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$Recipes<TRes>
    implements CopyWith$Query$Recipes<TRes> {
  _CopyWithStubImpl$Query$Recipes(this._res);

  TRes _res;

  call({
    List<Query$Recipes$recipes>? recipes,
    Query$Recipes$recipes_aggregate? recipes_aggregate,
    String? $__typename,
  }) =>
      _res;
  recipes(_fn) => _res;
  CopyWith$Query$Recipes$recipes_aggregate<TRes> get recipes_aggregate =>
      CopyWith$Query$Recipes$recipes_aggregate.stub(_res);
}

const documentNodeQueryRecipes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Recipes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'country')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'recipes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'country'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'country')),
                  )
                ]),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'recipes_aggregate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
    required this.id,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_tags$tags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_tags$tags(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_tags$tags(
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
    required this.id,
    required this.$__typename,
  });

  factory Query$Recipes$recipes$bridge_recipes_cuisines$cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    String? id,
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
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes$bridge_recipes_cuisines$cuisines(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Recipes$recipes_aggregate {
  Query$Recipes$recipes_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$Recipes$recipes_aggregate.fromJson(Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$Recipes$recipes_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recipes$recipes_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$Recipes$recipes_aggregate
    on Query$Recipes$recipes_aggregate {
  CopyWith$Query$Recipes$recipes_aggregate<Query$Recipes$recipes_aggregate>
      get copyWith => CopyWith$Query$Recipes$recipes_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes_aggregate<TRes> {
  factory CopyWith$Query$Recipes$recipes_aggregate(
    Query$Recipes$recipes_aggregate instance,
    TRes Function(Query$Recipes$recipes_aggregate) then,
  ) = _CopyWithImpl$Query$Recipes$recipes_aggregate;

  factory CopyWith$Query$Recipes$recipes_aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes_aggregate;

  TRes call({
    Query$Recipes$recipes_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Query$Recipes$recipes_aggregate<TRes>
    implements CopyWith$Query$Recipes$recipes_aggregate<TRes> {
  _CopyWithImpl$Query$Recipes$recipes_aggregate(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes_aggregate _instance;

  final TRes Function(Query$Recipes$recipes_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Query$Recipes$recipes_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$Recipes$recipes_aggregate$aggregate.stub(
            _then(_instance))
        : CopyWith$Query$Recipes$recipes_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$Recipes$recipes_aggregate<TRes>
    implements CopyWith$Query$Recipes$recipes_aggregate<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes_aggregate(this._res);

  TRes _res;

  call({
    Query$Recipes$recipes_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> get aggregate =>
      CopyWith$Query$Recipes$recipes_aggregate$aggregate.stub(_res);
}

class Query$Recipes$recipes_aggregate$aggregate {
  Query$Recipes$recipes_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$Recipes$recipes_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$Recipes$recipes_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recipes$recipes_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$Recipes$recipes_aggregate$aggregate
    on Query$Recipes$recipes_aggregate$aggregate {
  CopyWith$Query$Recipes$recipes_aggregate$aggregate<
          Query$Recipes$recipes_aggregate$aggregate>
      get copyWith => CopyWith$Query$Recipes$recipes_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> {
  factory CopyWith$Query$Recipes$recipes_aggregate$aggregate(
    Query$Recipes$recipes_aggregate$aggregate instance,
    TRes Function(Query$Recipes$recipes_aggregate$aggregate) then,
  ) = _CopyWithImpl$Query$Recipes$recipes_aggregate$aggregate;

  factory CopyWith$Query$Recipes$recipes_aggregate$aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$Recipes$recipes_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Recipes$recipes_aggregate$aggregate<TRes>
    implements CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> {
  _CopyWithImpl$Query$Recipes$recipes_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$Recipes$recipes_aggregate$aggregate _instance;

  final TRes Function(Query$Recipes$recipes_aggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recipes$recipes_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Recipes$recipes_aggregate$aggregate<TRes>
    implements CopyWith$Query$Recipes$recipes_aggregate$aggregate<TRes> {
  _CopyWithStubImpl$Query$Recipes$recipes_aggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SingleRecipe {
  factory Variables$Query$SingleRecipe({required String id}) =>
      Variables$Query$SingleRecipe._({
        r'id': id,
      });

  Variables$Query$SingleRecipe._(this._$data);

  factory Variables$Query$SingleRecipe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$SingleRecipe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$SingleRecipe<Variables$Query$SingleRecipe>
      get copyWith => CopyWith$Variables$Query$SingleRecipe(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SingleRecipe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$SingleRecipe<TRes> {
  factory CopyWith$Variables$Query$SingleRecipe(
    Variables$Query$SingleRecipe instance,
    TRes Function(Variables$Query$SingleRecipe) then,
  ) = _CopyWithImpl$Variables$Query$SingleRecipe;

  factory CopyWith$Variables$Query$SingleRecipe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SingleRecipe;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$SingleRecipe<TRes>
    implements CopyWith$Variables$Query$SingleRecipe<TRes> {
  _CopyWithImpl$Variables$Query$SingleRecipe(
    this._instance,
    this._then,
  );

  final Variables$Query$SingleRecipe _instance;

  final TRes Function(Variables$Query$SingleRecipe) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$SingleRecipe._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SingleRecipe<TRes>
    implements CopyWith$Variables$Query$SingleRecipe<TRes> {
  _CopyWithStubImpl$Variables$Query$SingleRecipe(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$SingleRecipe {
  Query$SingleRecipe({
    this.recipes_by_pk,
    required this.recipes_aggregate,
    required this.$__typename,
  });

  factory Query$SingleRecipe.fromJson(Map<String, dynamic> json) {
    final l$recipes_by_pk = json['recipes_by_pk'];
    final l$recipes_aggregate = json['recipes_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe(
      recipes_by_pk: l$recipes_by_pk == null
          ? null
          : Query$SingleRecipe$recipes_by_pk.fromJson(
              (l$recipes_by_pk as Map<String, dynamic>)),
      recipes_aggregate: Query$SingleRecipe$recipes_aggregate.fromJson(
          (l$recipes_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SingleRecipe$recipes_by_pk? recipes_by_pk;

  final Query$SingleRecipe$recipes_aggregate recipes_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recipes_by_pk = recipes_by_pk;
    _resultData['recipes_by_pk'] = l$recipes_by_pk?.toJson();
    final l$recipes_aggregate = recipes_aggregate;
    _resultData['recipes_aggregate'] = l$recipes_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recipes_by_pk = recipes_by_pk;
    final l$recipes_aggregate = recipes_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recipes_by_pk,
      l$recipes_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SingleRecipe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recipes_by_pk = recipes_by_pk;
    final lOther$recipes_by_pk = other.recipes_by_pk;
    if (l$recipes_by_pk != lOther$recipes_by_pk) {
      return false;
    }
    final l$recipes_aggregate = recipes_aggregate;
    final lOther$recipes_aggregate = other.recipes_aggregate;
    if (l$recipes_aggregate != lOther$recipes_aggregate) {
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

extension UtilityExtension$Query$SingleRecipe on Query$SingleRecipe {
  CopyWith$Query$SingleRecipe<Query$SingleRecipe> get copyWith =>
      CopyWith$Query$SingleRecipe(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SingleRecipe<TRes> {
  factory CopyWith$Query$SingleRecipe(
    Query$SingleRecipe instance,
    TRes Function(Query$SingleRecipe) then,
  ) = _CopyWithImpl$Query$SingleRecipe;

  factory CopyWith$Query$SingleRecipe.stub(TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe;

  TRes call({
    Query$SingleRecipe$recipes_by_pk? recipes_by_pk,
    Query$SingleRecipe$recipes_aggregate? recipes_aggregate,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> get recipes_by_pk;
  CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> get recipes_aggregate;
}

class _CopyWithImpl$Query$SingleRecipe<TRes>
    implements CopyWith$Query$SingleRecipe<TRes> {
  _CopyWithImpl$Query$SingleRecipe(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe _instance;

  final TRes Function(Query$SingleRecipe) _then;

  static const _undefined = {};

  TRes call({
    Object? recipes_by_pk = _undefined,
    Object? recipes_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe(
        recipes_by_pk: recipes_by_pk == _undefined
            ? _instance.recipes_by_pk
            : (recipes_by_pk as Query$SingleRecipe$recipes_by_pk?),
        recipes_aggregate:
            recipes_aggregate == _undefined || recipes_aggregate == null
                ? _instance.recipes_aggregate
                : (recipes_aggregate as Query$SingleRecipe$recipes_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> get recipes_by_pk {
    final local$recipes_by_pk = _instance.recipes_by_pk;
    return local$recipes_by_pk == null
        ? CopyWith$Query$SingleRecipe$recipes_by_pk.stub(_then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_by_pk(
            local$recipes_by_pk, (e) => call(recipes_by_pk: e));
  }

  CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> get recipes_aggregate {
    final local$recipes_aggregate = _instance.recipes_aggregate;
    return CopyWith$Query$SingleRecipe$recipes_aggregate(
        local$recipes_aggregate, (e) => call(recipes_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe<TRes>
    implements CopyWith$Query$SingleRecipe<TRes> {
  _CopyWithStubImpl$Query$SingleRecipe(this._res);

  TRes _res;

  call({
    Query$SingleRecipe$recipes_by_pk? recipes_by_pk,
    Query$SingleRecipe$recipes_aggregate? recipes_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> get recipes_by_pk =>
      CopyWith$Query$SingleRecipe$recipes_by_pk.stub(_res);
  CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> get recipes_aggregate =>
      CopyWith$Query$SingleRecipe$recipes_aggregate.stub(_res);
}

const documentNodeQuerySingleRecipe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SingleRecipe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'recipes_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
                    name: NameNode(value: 'id'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'recipes_aggregate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
]);

class Query$SingleRecipe$recipes_by_pk {
  Query$SingleRecipe$recipes_by_pk({
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

  factory Query$SingleRecipe$recipes_by_pk.fromJson(Map<String, dynamic> json) {
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
    return Query$SingleRecipe$recipes_by_pk(
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
          .map((e) =>
              Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      bridge_recipes_ingredients:
          (l$bridge_recipes_ingredients as List<dynamic>)
              .map((e) =>
                  Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients
                      .fromJson((e as Map<String, dynamic>)))
              .toList(),
      bridge_recipes_cuisines: (l$bridge_recipes_cuisines as List<dynamic>)
          .map((e) =>
              Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines.fromJson(
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

  final List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>
      bridge_recipes_tags;

  final List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>
      bridge_recipes_ingredients;

  final List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>
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
    if (!(other is Query$SingleRecipe$recipes_by_pk) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk
    on Query$SingleRecipe$recipes_by_pk {
  CopyWith$Query$SingleRecipe$recipes_by_pk<Query$SingleRecipe$recipes_by_pk>
      get copyWith => CopyWith$Query$SingleRecipe$recipes_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk(
    Query$SingleRecipe$recipes_by_pk instance,
    TRes Function(Query$SingleRecipe$recipes_by_pk) then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk.stub(TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk;

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
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>?
        bridge_recipes_tags,
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>?
        bridge_recipes_ingredients,
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>?
        bridge_recipes_cuisines,
    String? $__typename,
  });
  TRes bridge_recipes_tags(
      Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags> Function(
              Iterable<
                  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<
                      Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>>)
          _fn);
  TRes bridge_recipes_ingredients(
      Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients> Function(
              Iterable<
                  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
                      Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>>)
          _fn);
  TRes bridge_recipes_cuisines(
      Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines> Function(
              Iterable<
                  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
                      Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>>)
          _fn);
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk _instance;

  final TRes Function(Query$SingleRecipe$recipes_by_pk) _then;

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
      _then(Query$SingleRecipe$recipes_by_pk(
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
        bridge_recipes_tags: bridge_recipes_tags == _undefined ||
                bridge_recipes_tags == null
            ? _instance.bridge_recipes_tags
            : (bridge_recipes_tags
                as List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>),
        bridge_recipes_ingredients: bridge_recipes_ingredients == _undefined ||
                bridge_recipes_ingredients == null
            ? _instance.bridge_recipes_ingredients
            : (bridge_recipes_ingredients as List<
                Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>),
        bridge_recipes_cuisines: bridge_recipes_cuisines == _undefined ||
                bridge_recipes_cuisines == null
            ? _instance.bridge_recipes_cuisines
            : (bridge_recipes_cuisines as List<
                Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bridge_recipes_tags(
          Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags> Function(
                  Iterable<
                      CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<
                          Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>>)
              _fn) =>
      call(
          bridge_recipes_tags: _fn(_instance.bridge_recipes_tags.map((e) =>
              CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
                e,
                (i) => i,
              ))).toList());
  TRes bridge_recipes_ingredients(
          Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients> Function(
                  Iterable<
                      CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
                          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>>)
              _fn) =>
      call(
          bridge_recipes_ingredients: _fn(_instance.bridge_recipes_ingredients
              .map((e) =>
                  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
                    e,
                    (i) => i,
                  ))).toList());
  TRes bridge_recipes_cuisines(
          Iterable<Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines> Function(
                  Iterable<
                      CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
                          Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>>)
              _fn) =>
      call(
          bridge_recipes_cuisines: _fn(_instance.bridge_recipes_cuisines.map((e) =>
              CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_by_pk<TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk(this._res);

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
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>?
        bridge_recipes_tags,
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>?
        bridge_recipes_ingredients,
    List<Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>?
        bridge_recipes_cuisines,
    String? $__typename,
  }) =>
      _res;
  bridge_recipes_tags(_fn) => _res;
  bridge_recipes_ingredients(_fn) => _res;
  bridge_recipes_cuisines(_fn) => _res;
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags({
    this.tags,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags.fromJson(
      Map<String, dynamic> json) {
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
      tags: l$tags == null
          ? null
          : Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags.fromJson(
              (l$tags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags? tags;

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
    if (!(other is Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags) ||
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags instance,
    TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags) then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags;

  TRes call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags? tags,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<TRes>
      get tags;
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags _instance;

  final TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags)
      _then;

  static const _undefined = {};

  TRes call({
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
        tags: tags == _undefined
            ? _instance.tags
            : (tags
                as Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<TRes>
      get tags {
    final local$tags = _instance.tags;
    return local$tags == null
        ? CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags
            .stub(_then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
            local$tags, (e) => call(tags: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags<TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags(
      this._res);

  TRes _res;

  call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags? tags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<TRes>
      get tags =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags
              .stub(_res);
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags({
    required this.id,
    required this.slug,
    required this.name,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
      id: (l$id as String),
      slug: (l$slug as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String slug;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$slug = slug;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$slug,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags instance,
    TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags;

  TRes call({
    String? id,
    String? slug,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags _instance;

  final TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? slug = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_tags$tags(
      this._res);

  TRes _res;

  call({
    String? id,
    String? slug,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients({
    this.ingredients,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$ingredients = json['ingredients'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
      ingredients: l$ingredients == null
          ? null
          : Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
              .fromJson((l$ingredients as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients?
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
    if (!(other
            is Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients) ||
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients instance,
    TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients;

  TRes call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients?
        ingredients,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
      TRes> get ingredients;
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients _instance;

  final TRes Function(
      Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients) _then;

  static const _undefined = {};

  TRes call({
    Object? ingredients = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
        ingredients: ingredients == _undefined
            ? _instance.ingredients
            : (ingredients
                as Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
      TRes> get ingredients {
    final local$ingredients = _instance.ingredients;
    return local$ingredients == null
        ? CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
            .stub(_then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
            local$ingredients, (e) => call(ingredients: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients(
      this._res);

  TRes _res;

  call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients?
        ingredients,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
          TRes>
      get ingredients =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
              .stub(_res);
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients({
    required this.type,
    required this.slug,
    required this.name,
    this.imagePath,
    required this.id,
    required this.country,
    this.family,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$imagePath = json['imagePath'];
    final l$id = json['id'];
    final l$country = json['country'];
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
      type: (l$type as String),
      slug: (l$slug as String),
      name: (l$name as String),
      imagePath: (l$imagePath as String?),
      id: (l$id as String),
      country: (l$country as String),
      family: l$family == null
          ? null
          : Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
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

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family?
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
            is Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients) ||
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
        instance,
    TRes Function(
            Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients;

  TRes call({
    String? type,
    String? slug,
    String? name,
    String? imagePath,
    String? id,
    String? country,
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family?
        family,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
      TRes> get family;
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients
      _instance;

  final TRes Function(
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients)
      _then;

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
      _then(
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
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
                as Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
      TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
            .stub(_then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients(
      this._res);

  TRes _res;

  call({
    String? type,
    String? slug,
    String? name,
    String? imagePath,
    String? id,
    String? country,
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family?
        family,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
          TRes>
      get family =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
              .stub(_res);
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family({
    required this.type,
    required this.slug,
    required this.name,
    required this.id,
    this.iconPath,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$iconPath = json['iconPath'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
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
            is Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family) ||
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
        instance,
    TRes Function(
            Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family;

  TRes call({
    String? type,
    String? slug,
    String? name,
    String? id,
    String? iconPath,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family
      _instance;

  final TRes Function(
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family)
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
      _then(
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
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

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_ingredients$ingredients$family(
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

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines({
    this.cuisines,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$cuisines = json['cuisines'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
      cuisines: l$cuisines == null
          ? null
          : Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines
              .fromJson((l$cuisines as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines?
      cuisines;

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
    if (!(other is Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines) ||
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines instance,
    TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines;

  TRes call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines? cuisines,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
      TRes> get cuisines;
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines _instance;

  final TRes Function(Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines)
      _then;

  static const _undefined = {};

  TRes call({
    Object? cuisines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
        cuisines: cuisines == _undefined
            ? _instance.cuisines
            : (cuisines
                as Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
      TRes> get cuisines {
    final local$cuisines = _instance.cuisines;
    return local$cuisines == null
        ? CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines
            .stub(_then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
            local$cuisines, (e) => call(cuisines: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines(
      this._res);

  TRes _res;

  call({
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines? cuisines,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
          TRes>
      get cuisines =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines
              .stub(_res);
}

class Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines {
  Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines({
    required this.id,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines
    on Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines {
  CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
          Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines>
      get copyWith =>
          CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
    TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
    Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines instance,
    TRes Function(
            Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines)
        then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines;

  factory CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
            TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines
      _instance;

  final TRes Function(
      Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
        TRes>
    implements
        CopyWith$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines<
            TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_by_pk$bridge_recipes_cuisines$cuisines(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$SingleRecipe$recipes_aggregate {
  Query$SingleRecipe$recipes_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$SingleRecipe$recipes_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SingleRecipe$recipes_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SingleRecipe$recipes_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$SingleRecipe$recipes_aggregate
    on Query$SingleRecipe$recipes_aggregate {
  CopyWith$Query$SingleRecipe$recipes_aggregate<
          Query$SingleRecipe$recipes_aggregate>
      get copyWith => CopyWith$Query$SingleRecipe$recipes_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_aggregate(
    Query$SingleRecipe$recipes_aggregate instance,
    TRes Function(Query$SingleRecipe$recipes_aggregate) then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_aggregate;

  factory CopyWith$Query$SingleRecipe$recipes_aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate;

  TRes call({
    Query$SingleRecipe$recipes_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Query$SingleRecipe$recipes_aggregate<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_aggregate(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_aggregate _instance;

  final TRes Function(Query$SingleRecipe$recipes_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Query$SingleRecipe$recipes_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate.stub(
            _then(_instance))
        : CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_aggregate<TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate(this._res);

  TRes _res;

  call({
    Query$SingleRecipe$recipes_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> get aggregate =>
      CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate.stub(_res);
}

class Query$SingleRecipe$recipes_aggregate$aggregate {
  Query$SingleRecipe$recipes_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$SingleRecipe$recipes_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$SingleRecipe$recipes_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SingleRecipe$recipes_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$SingleRecipe$recipes_aggregate$aggregate
    on Query$SingleRecipe$recipes_aggregate$aggregate {
  CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<
          Query$SingleRecipe$recipes_aggregate$aggregate>
      get copyWith => CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> {
  factory CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate(
    Query$SingleRecipe$recipes_aggregate$aggregate instance,
    TRes Function(Query$SingleRecipe$recipes_aggregate$aggregate) then,
  ) = _CopyWithImpl$Query$SingleRecipe$recipes_aggregate$aggregate;

  factory CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SingleRecipe$recipes_aggregate$aggregate<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> {
  _CopyWithImpl$Query$SingleRecipe$recipes_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$SingleRecipe$recipes_aggregate$aggregate _instance;

  final TRes Function(Query$SingleRecipe$recipes_aggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SingleRecipe$recipes_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate$aggregate<TRes>
    implements CopyWith$Query$SingleRecipe$recipes_aggregate$aggregate<TRes> {
  _CopyWithStubImpl$Query$SingleRecipe$recipes_aggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTags {
  Query$GetTags({
    required this.tags,
    required this.tags_aggregate,
    required this.$__typename,
  });

  factory Query$GetTags.fromJson(Map<String, dynamic> json) {
    final l$tags = json['tags'];
    final l$tags_aggregate = json['tags_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetTags(
      tags: (l$tags as List<dynamic>)
          .map((e) => Query$GetTags$tags.fromJson((e as Map<String, dynamic>)))
          .toList(),
      tags_aggregate: Query$GetTags$tags_aggregate.fromJson(
          (l$tags_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTags$tags> tags;

  final Query$GetTags$tags_aggregate tags_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$tags_aggregate = tags_aggregate;
    _resultData['tags_aggregate'] = l$tags_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tags = tags;
    final l$tags_aggregate = tags_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tags.map((v) => v)),
      l$tags_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTags) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$tags_aggregate = tags_aggregate;
    final lOther$tags_aggregate = other.tags_aggregate;
    if (l$tags_aggregate != lOther$tags_aggregate) {
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

extension UtilityExtension$Query$GetTags on Query$GetTags {
  CopyWith$Query$GetTags<Query$GetTags> get copyWith => CopyWith$Query$GetTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTags<TRes> {
  factory CopyWith$Query$GetTags(
    Query$GetTags instance,
    TRes Function(Query$GetTags) then,
  ) = _CopyWithImpl$Query$GetTags;

  factory CopyWith$Query$GetTags.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTags;

  TRes call({
    List<Query$GetTags$tags>? tags,
    Query$GetTags$tags_aggregate? tags_aggregate,
    String? $__typename,
  });
  TRes tags(
      Iterable<Query$GetTags$tags> Function(
              Iterable<CopyWith$Query$GetTags$tags<Query$GetTags$tags>>)
          _fn);
  CopyWith$Query$GetTags$tags_aggregate<TRes> get tags_aggregate;
}

class _CopyWithImpl$Query$GetTags<TRes>
    implements CopyWith$Query$GetTags<TRes> {
  _CopyWithImpl$Query$GetTags(
    this._instance,
    this._then,
  );

  final Query$GetTags _instance;

  final TRes Function(Query$GetTags) _then;

  static const _undefined = {};

  TRes call({
    Object? tags = _undefined,
    Object? tags_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags(
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Query$GetTags$tags>),
        tags_aggregate: tags_aggregate == _undefined || tags_aggregate == null
            ? _instance.tags_aggregate
            : (tags_aggregate as Query$GetTags$tags_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes tags(
          Iterable<Query$GetTags$tags> Function(
                  Iterable<CopyWith$Query$GetTags$tags<Query$GetTags$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags.map((e) => CopyWith$Query$GetTags$tags(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Query$GetTags$tags_aggregate<TRes> get tags_aggregate {
    final local$tags_aggregate = _instance.tags_aggregate;
    return CopyWith$Query$GetTags$tags_aggregate(
        local$tags_aggregate, (e) => call(tags_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetTags<TRes>
    implements CopyWith$Query$GetTags<TRes> {
  _CopyWithStubImpl$Query$GetTags(this._res);

  TRes _res;

  call({
    List<Query$GetTags$tags>? tags,
    Query$GetTags$tags_aggregate? tags_aggregate,
    String? $__typename,
  }) =>
      _res;
  tags(_fn) => _res;
  CopyWith$Query$GetTags$tags_aggregate<TRes> get tags_aggregate =>
      CopyWith$Query$GetTags$tags_aggregate.stub(_res);
}

const documentNodeQueryGetTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTags'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'bridge_recipes_tags_aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
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
        name: NameNode(value: 'tags_aggregate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
]);

class Query$GetTags$tags {
  Query$GetTags$tags({
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.bridge_recipes_tags_aggregate,
    required this.$__typename,
  });

  factory Query$GetTags$tags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$slug = json['slug'];
    final l$type = json['type'];
    final l$bridge_recipes_tags_aggregate =
        json['bridge_recipes_tags_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetTags$tags(
      id: (l$id as String),
      name: (l$name as String),
      slug: (l$slug as String),
      type: (l$type as String),
      bridge_recipes_tags_aggregate:
          Query$GetTags$tags$bridge_recipes_tags_aggregate.fromJson(
              (l$bridge_recipes_tags_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String slug;

  final String type;

  final Query$GetTags$tags$bridge_recipes_tags_aggregate
      bridge_recipes_tags_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    _resultData['bridge_recipes_tags_aggregate'] =
        l$bridge_recipes_tags_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$slug,
      l$type,
      l$bridge_recipes_tags_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTags$tags) || runtimeType != other.runtimeType) {
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
    final l$bridge_recipes_tags_aggregate = bridge_recipes_tags_aggregate;
    final lOther$bridge_recipes_tags_aggregate =
        other.bridge_recipes_tags_aggregate;
    if (l$bridge_recipes_tags_aggregate !=
        lOther$bridge_recipes_tags_aggregate) {
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

extension UtilityExtension$Query$GetTags$tags on Query$GetTags$tags {
  CopyWith$Query$GetTags$tags<Query$GetTags$tags> get copyWith =>
      CopyWith$Query$GetTags$tags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTags$tags<TRes> {
  factory CopyWith$Query$GetTags$tags(
    Query$GetTags$tags instance,
    TRes Function(Query$GetTags$tags) then,
  ) = _CopyWithImpl$Query$GetTags$tags;

  factory CopyWith$Query$GetTags$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTags$tags;

  TRes call({
    String? id,
    String? name,
    String? slug,
    String? type,
    Query$GetTags$tags$bridge_recipes_tags_aggregate?
        bridge_recipes_tags_aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes>
      get bridge_recipes_tags_aggregate;
}

class _CopyWithImpl$Query$GetTags$tags<TRes>
    implements CopyWith$Query$GetTags$tags<TRes> {
  _CopyWithImpl$Query$GetTags$tags(
    this._instance,
    this._then,
  );

  final Query$GetTags$tags _instance;

  final TRes Function(Query$GetTags$tags) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
    Object? bridge_recipes_tags_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags$tags(
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
        bridge_recipes_tags_aggregate:
            bridge_recipes_tags_aggregate == _undefined ||
                    bridge_recipes_tags_aggregate == null
                ? _instance.bridge_recipes_tags_aggregate
                : (bridge_recipes_tags_aggregate
                    as Query$GetTags$tags$bridge_recipes_tags_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes>
      get bridge_recipes_tags_aggregate {
    final local$bridge_recipes_tags_aggregate =
        _instance.bridge_recipes_tags_aggregate;
    return CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate(
        local$bridge_recipes_tags_aggregate,
        (e) => call(bridge_recipes_tags_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetTags$tags<TRes>
    implements CopyWith$Query$GetTags$tags<TRes> {
  _CopyWithStubImpl$Query$GetTags$tags(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? slug,
    String? type,
    Query$GetTags$tags$bridge_recipes_tags_aggregate?
        bridge_recipes_tags_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes>
      get bridge_recipes_tags_aggregate =>
          CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate.stub(_res);
}

class Query$GetTags$tags$bridge_recipes_tags_aggregate {
  Query$GetTags$tags$bridge_recipes_tags_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$GetTags$tags$bridge_recipes_tags_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetTags$tags$bridge_recipes_tags_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTags$tags$bridge_recipes_tags_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetTags$tags$bridge_recipes_tags_aggregate
    on Query$GetTags$tags$bridge_recipes_tags_aggregate {
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<
          Query$GetTags$tags$bridge_recipes_tags_aggregate>
      get copyWith => CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes> {
  factory CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate(
    Query$GetTags$tags$bridge_recipes_tags_aggregate instance,
    TRes Function(Query$GetTags$tags$bridge_recipes_tags_aggregate) then,
  ) = _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate;

  factory CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate;

  TRes call({
    Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<TRes>
      get aggregate;
}

class _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes>
    implements CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes> {
  _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetTags$tags$bridge_recipes_tags_aggregate _instance;

  final TRes Function(Query$GetTags$tags$bridge_recipes_tags_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags$tags$bridge_recipes_tags_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<TRes>
      get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes>
    implements CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate<TRes> {
  _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate(this._res);

  TRes _res;

  call({
    Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<TRes>
      get aggregate =>
          CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate
              .stub(_res);
}

class Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate {
  Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate
    on Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate {
  CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
          Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
    Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate instance,
    TRes Function(Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate;

  factory CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate _instance;

  final TRes Function(
      Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetTags$tags$bridge_recipes_tags_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTags$tags_aggregate {
  Query$GetTags$tags_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$GetTags$tags_aggregate.fromJson(Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetTags$tags_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetTags$tags_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTags$tags_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTags$tags_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetTags$tags_aggregate
    on Query$GetTags$tags_aggregate {
  CopyWith$Query$GetTags$tags_aggregate<Query$GetTags$tags_aggregate>
      get copyWith => CopyWith$Query$GetTags$tags_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTags$tags_aggregate<TRes> {
  factory CopyWith$Query$GetTags$tags_aggregate(
    Query$GetTags$tags_aggregate instance,
    TRes Function(Query$GetTags$tags_aggregate) then,
  ) = _CopyWithImpl$Query$GetTags$tags_aggregate;

  factory CopyWith$Query$GetTags$tags_aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTags$tags_aggregate;

  TRes call({
    Query$GetTags$tags_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Query$GetTags$tags_aggregate<TRes>
    implements CopyWith$Query$GetTags$tags_aggregate<TRes> {
  _CopyWithImpl$Query$GetTags$tags_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetTags$tags_aggregate _instance;

  final TRes Function(Query$GetTags$tags_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags$tags_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Query$GetTags$tags_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetTags$tags_aggregate$aggregate.stub(_then(_instance))
        : CopyWith$Query$GetTags$tags_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetTags$tags_aggregate<TRes>
    implements CopyWith$Query$GetTags$tags_aggregate<TRes> {
  _CopyWithStubImpl$Query$GetTags$tags_aggregate(this._res);

  TRes _res;

  call({
    Query$GetTags$tags_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> get aggregate =>
      CopyWith$Query$GetTags$tags_aggregate$aggregate.stub(_res);
}

class Query$GetTags$tags_aggregate$aggregate {
  Query$GetTags$tags_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$GetTags$tags_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetTags$tags_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTags$tags_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetTags$tags_aggregate$aggregate
    on Query$GetTags$tags_aggregate$aggregate {
  CopyWith$Query$GetTags$tags_aggregate$aggregate<
          Query$GetTags$tags_aggregate$aggregate>
      get copyWith => CopyWith$Query$GetTags$tags_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> {
  factory CopyWith$Query$GetTags$tags_aggregate$aggregate(
    Query$GetTags$tags_aggregate$aggregate instance,
    TRes Function(Query$GetTags$tags_aggregate$aggregate) then,
  ) = _CopyWithImpl$Query$GetTags$tags_aggregate$aggregate;

  factory CopyWith$Query$GetTags$tags_aggregate$aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTags$tags_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTags$tags_aggregate$aggregate<TRes>
    implements CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> {
  _CopyWithImpl$Query$GetTags$tags_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetTags$tags_aggregate$aggregate _instance;

  final TRes Function(Query$GetTags$tags_aggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTags$tags_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTags$tags_aggregate$aggregate<TRes>
    implements CopyWith$Query$GetTags$tags_aggregate$aggregate<TRes> {
  _CopyWithStubImpl$Query$GetTags$tags_aggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetIngredientFamilies {
  Query$GetIngredientFamilies({
    required this.ingredient_family,
    required this.$__typename,
  });

  factory Query$GetIngredientFamilies.fromJson(Map<String, dynamic> json) {
    final l$ingredient_family = json['ingredient_family'];
    final l$$__typename = json['__typename'];
    return Query$GetIngredientFamilies(
      ingredient_family: (l$ingredient_family as List<dynamic>)
          .map((e) => Query$GetIngredientFamilies$ingredient_family.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetIngredientFamilies$ingredient_family> ingredient_family;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ingredient_family = ingredient_family;
    _resultData['ingredient_family'] =
        l$ingredient_family.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ingredient_family = ingredient_family;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$ingredient_family.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetIngredientFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ingredient_family = ingredient_family;
    final lOther$ingredient_family = other.ingredient_family;
    if (l$ingredient_family.length != lOther$ingredient_family.length) {
      return false;
    }
    for (int i = 0; i < l$ingredient_family.length; i++) {
      final l$ingredient_family$entry = l$ingredient_family[i];
      final lOther$ingredient_family$entry = lOther$ingredient_family[i];
      if (l$ingredient_family$entry != lOther$ingredient_family$entry) {
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

extension UtilityExtension$Query$GetIngredientFamilies
    on Query$GetIngredientFamilies {
  CopyWith$Query$GetIngredientFamilies<Query$GetIngredientFamilies>
      get copyWith => CopyWith$Query$GetIngredientFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetIngredientFamilies<TRes> {
  factory CopyWith$Query$GetIngredientFamilies(
    Query$GetIngredientFamilies instance,
    TRes Function(Query$GetIngredientFamilies) then,
  ) = _CopyWithImpl$Query$GetIngredientFamilies;

  factory CopyWith$Query$GetIngredientFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetIngredientFamilies;

  TRes call({
    List<Query$GetIngredientFamilies$ingredient_family>? ingredient_family,
    String? $__typename,
  });
  TRes ingredient_family(
      Iterable<Query$GetIngredientFamilies$ingredient_family> Function(
              Iterable<
                  CopyWith$Query$GetIngredientFamilies$ingredient_family<
                      Query$GetIngredientFamilies$ingredient_family>>)
          _fn);
}

class _CopyWithImpl$Query$GetIngredientFamilies<TRes>
    implements CopyWith$Query$GetIngredientFamilies<TRes> {
  _CopyWithImpl$Query$GetIngredientFamilies(
    this._instance,
    this._then,
  );

  final Query$GetIngredientFamilies _instance;

  final TRes Function(Query$GetIngredientFamilies) _then;

  static const _undefined = {};

  TRes call({
    Object? ingredient_family = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetIngredientFamilies(
        ingredient_family:
            ingredient_family == _undefined || ingredient_family == null
                ? _instance.ingredient_family
                : (ingredient_family
                    as List<Query$GetIngredientFamilies$ingredient_family>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ingredient_family(
          Iterable<Query$GetIngredientFamilies$ingredient_family> Function(
                  Iterable<
                      CopyWith$Query$GetIngredientFamilies$ingredient_family<
                          Query$GetIngredientFamilies$ingredient_family>>)
              _fn) =>
      call(
          ingredient_family: _fn(_instance.ingredient_family.map(
              (e) => CopyWith$Query$GetIngredientFamilies$ingredient_family(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetIngredientFamilies<TRes>
    implements CopyWith$Query$GetIngredientFamilies<TRes> {
  _CopyWithStubImpl$Query$GetIngredientFamilies(this._res);

  TRes _res;

  call({
    List<Query$GetIngredientFamilies$ingredient_family>? ingredient_family,
    String? $__typename,
  }) =>
      _res;
  ingredient_family(_fn) => _res;
}

const documentNodeQueryGetIngredientFamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetIngredientFamilies'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ingredient_family'),
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
]);

class Query$GetIngredientFamilies$ingredient_family {
  Query$GetIngredientFamilies$ingredient_family({
    this.iconPath,
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.$__typename,
  });

  factory Query$GetIngredientFamilies$ingredient_family.fromJson(
      Map<String, dynamic> json) {
    final l$iconPath = json['iconPath'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$slug = json['slug'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetIngredientFamilies$ingredient_family(
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
    if (!(other is Query$GetIngredientFamilies$ingredient_family) ||
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

extension UtilityExtension$Query$GetIngredientFamilies$ingredient_family
    on Query$GetIngredientFamilies$ingredient_family {
  CopyWith$Query$GetIngredientFamilies$ingredient_family<
          Query$GetIngredientFamilies$ingredient_family>
      get copyWith => CopyWith$Query$GetIngredientFamilies$ingredient_family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetIngredientFamilies$ingredient_family<TRes> {
  factory CopyWith$Query$GetIngredientFamilies$ingredient_family(
    Query$GetIngredientFamilies$ingredient_family instance,
    TRes Function(Query$GetIngredientFamilies$ingredient_family) then,
  ) = _CopyWithImpl$Query$GetIngredientFamilies$ingredient_family;

  factory CopyWith$Query$GetIngredientFamilies$ingredient_family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetIngredientFamilies$ingredient_family;

  TRes call({
    String? iconPath,
    String? id,
    String? name,
    String? slug,
    String? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetIngredientFamilies$ingredient_family<TRes>
    implements CopyWith$Query$GetIngredientFamilies$ingredient_family<TRes> {
  _CopyWithImpl$Query$GetIngredientFamilies$ingredient_family(
    this._instance,
    this._then,
  );

  final Query$GetIngredientFamilies$ingredient_family _instance;

  final TRes Function(Query$GetIngredientFamilies$ingredient_family) _then;

  static const _undefined = {};

  TRes call({
    Object? iconPath = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetIngredientFamilies$ingredient_family(
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

class _CopyWithStubImpl$Query$GetIngredientFamilies$ingredient_family<TRes>
    implements CopyWith$Query$GetIngredientFamilies$ingredient_family<TRes> {
  _CopyWithStubImpl$Query$GetIngredientFamilies$ingredient_family(this._res);

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

class Query$GetCuisines {
  Query$GetCuisines({
    required this.cuisines,
    required this.cuisines_aggregate,
    required this.$__typename,
  });

  factory Query$GetCuisines.fromJson(Map<String, dynamic> json) {
    final l$cuisines = json['cuisines'];
    final l$cuisines_aggregate = json['cuisines_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines(
      cuisines: (l$cuisines as List<dynamic>)
          .map((e) =>
              Query$GetCuisines$cuisines.fromJson((e as Map<String, dynamic>)))
          .toList(),
      cuisines_aggregate: Query$GetCuisines$cuisines_aggregate.fromJson(
          (l$cuisines_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCuisines$cuisines> cuisines;

  final Query$GetCuisines$cuisines_aggregate cuisines_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cuisines = cuisines;
    _resultData['cuisines'] = l$cuisines.map((e) => e.toJson()).toList();
    final l$cuisines_aggregate = cuisines_aggregate;
    _resultData['cuisines_aggregate'] = l$cuisines_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cuisines = cuisines;
    final l$cuisines_aggregate = cuisines_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$cuisines.map((v) => v)),
      l$cuisines_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCuisines) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cuisines = cuisines;
    final lOther$cuisines = other.cuisines;
    if (l$cuisines.length != lOther$cuisines.length) {
      return false;
    }
    for (int i = 0; i < l$cuisines.length; i++) {
      final l$cuisines$entry = l$cuisines[i];
      final lOther$cuisines$entry = lOther$cuisines[i];
      if (l$cuisines$entry != lOther$cuisines$entry) {
        return false;
      }
    }
    final l$cuisines_aggregate = cuisines_aggregate;
    final lOther$cuisines_aggregate = other.cuisines_aggregate;
    if (l$cuisines_aggregate != lOther$cuisines_aggregate) {
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

extension UtilityExtension$Query$GetCuisines on Query$GetCuisines {
  CopyWith$Query$GetCuisines<Query$GetCuisines> get copyWith =>
      CopyWith$Query$GetCuisines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCuisines<TRes> {
  factory CopyWith$Query$GetCuisines(
    Query$GetCuisines instance,
    TRes Function(Query$GetCuisines) then,
  ) = _CopyWithImpl$Query$GetCuisines;

  factory CopyWith$Query$GetCuisines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCuisines;

  TRes call({
    List<Query$GetCuisines$cuisines>? cuisines,
    Query$GetCuisines$cuisines_aggregate? cuisines_aggregate,
    String? $__typename,
  });
  TRes cuisines(
      Iterable<Query$GetCuisines$cuisines> Function(
              Iterable<
                  CopyWith$Query$GetCuisines$cuisines<
                      Query$GetCuisines$cuisines>>)
          _fn);
  CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> get cuisines_aggregate;
}

class _CopyWithImpl$Query$GetCuisines<TRes>
    implements CopyWith$Query$GetCuisines<TRes> {
  _CopyWithImpl$Query$GetCuisines(
    this._instance,
    this._then,
  );

  final Query$GetCuisines _instance;

  final TRes Function(Query$GetCuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? cuisines = _undefined,
    Object? cuisines_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCuisines(
        cuisines: cuisines == _undefined || cuisines == null
            ? _instance.cuisines
            : (cuisines as List<Query$GetCuisines$cuisines>),
        cuisines_aggregate:
            cuisines_aggregate == _undefined || cuisines_aggregate == null
                ? _instance.cuisines_aggregate
                : (cuisines_aggregate as Query$GetCuisines$cuisines_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes cuisines(
          Iterable<Query$GetCuisines$cuisines> Function(
                  Iterable<
                      CopyWith$Query$GetCuisines$cuisines<
                          Query$GetCuisines$cuisines>>)
              _fn) =>
      call(
          cuisines: _fn(
              _instance.cuisines.map((e) => CopyWith$Query$GetCuisines$cuisines(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> get cuisines_aggregate {
    final local$cuisines_aggregate = _instance.cuisines_aggregate;
    return CopyWith$Query$GetCuisines$cuisines_aggregate(
        local$cuisines_aggregate, (e) => call(cuisines_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetCuisines<TRes>
    implements CopyWith$Query$GetCuisines<TRes> {
  _CopyWithStubImpl$Query$GetCuisines(this._res);

  TRes _res;

  call({
    List<Query$GetCuisines$cuisines>? cuisines,
    Query$GetCuisines$cuisines_aggregate? cuisines_aggregate,
    String? $__typename,
  }) =>
      _res;
  cuisines(_fn) => _res;
  CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> get cuisines_aggregate =>
      CopyWith$Query$GetCuisines$cuisines_aggregate.stub(_res);
}

const documentNodeQueryGetCuisines = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCuisines'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cuisines'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'bridge_recipes_cuisines_aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
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
        name: NameNode(value: 'cuisines_aggregate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
]);

class Query$GetCuisines$cuisines {
  Query$GetCuisines$cuisines({
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.bridge_recipes_cuisines_aggregate,
    this.iconPath,
    required this.$__typename,
  });

  factory Query$GetCuisines$cuisines.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$slug = json['slug'];
    final l$type = json['type'];
    final l$bridge_recipes_cuisines_aggregate =
        json['bridge_recipes_cuisines_aggregate'];
    final l$iconPath = json['iconPath'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines$cuisines(
      id: (l$id as String),
      name: (l$name as String),
      slug: (l$slug as String),
      type: (l$type as String),
      bridge_recipes_cuisines_aggregate:
          Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate.fromJson(
              (l$bridge_recipes_cuisines_aggregate as Map<String, dynamic>)),
      iconPath: (l$iconPath as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String slug;

  final String type;

  final Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate
      bridge_recipes_cuisines_aggregate;

  final String? iconPath;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    _resultData['bridge_recipes_cuisines_aggregate'] =
        l$bridge_recipes_cuisines_aggregate.toJson();
    final l$iconPath = iconPath;
    _resultData['iconPath'] = l$iconPath;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$type = type;
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final l$iconPath = iconPath;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$slug,
      l$type,
      l$bridge_recipes_cuisines_aggregate,
      l$iconPath,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCuisines$cuisines) ||
        runtimeType != other.runtimeType) {
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
    final l$bridge_recipes_cuisines_aggregate =
        bridge_recipes_cuisines_aggregate;
    final lOther$bridge_recipes_cuisines_aggregate =
        other.bridge_recipes_cuisines_aggregate;
    if (l$bridge_recipes_cuisines_aggregate !=
        lOther$bridge_recipes_cuisines_aggregate) {
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

extension UtilityExtension$Query$GetCuisines$cuisines
    on Query$GetCuisines$cuisines {
  CopyWith$Query$GetCuisines$cuisines<Query$GetCuisines$cuisines>
      get copyWith => CopyWith$Query$GetCuisines$cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCuisines$cuisines<TRes> {
  factory CopyWith$Query$GetCuisines$cuisines(
    Query$GetCuisines$cuisines instance,
    TRes Function(Query$GetCuisines$cuisines) then,
  ) = _CopyWithImpl$Query$GetCuisines$cuisines;

  factory CopyWith$Query$GetCuisines$cuisines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCuisines$cuisines;

  TRes call({
    String? id,
    String? name,
    String? slug,
    String? type,
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate?
        bridge_recipes_cuisines_aggregate,
    String? iconPath,
    String? $__typename,
  });
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<TRes>
      get bridge_recipes_cuisines_aggregate;
}

class _CopyWithImpl$Query$GetCuisines$cuisines<TRes>
    implements CopyWith$Query$GetCuisines$cuisines<TRes> {
  _CopyWithImpl$Query$GetCuisines$cuisines(
    this._instance,
    this._then,
  );

  final Query$GetCuisines$cuisines _instance;

  final TRes Function(Query$GetCuisines$cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? slug = _undefined,
    Object? type = _undefined,
    Object? bridge_recipes_cuisines_aggregate = _undefined,
    Object? iconPath = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCuisines$cuisines(
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
        bridge_recipes_cuisines_aggregate: bridge_recipes_cuisines_aggregate ==
                    _undefined ||
                bridge_recipes_cuisines_aggregate == null
            ? _instance.bridge_recipes_cuisines_aggregate
            : (bridge_recipes_cuisines_aggregate
                as Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate),
        iconPath:
            iconPath == _undefined ? _instance.iconPath : (iconPath as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<TRes>
      get bridge_recipes_cuisines_aggregate {
    final local$bridge_recipes_cuisines_aggregate =
        _instance.bridge_recipes_cuisines_aggregate;
    return CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
        local$bridge_recipes_cuisines_aggregate,
        (e) => call(bridge_recipes_cuisines_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetCuisines$cuisines<TRes>
    implements CopyWith$Query$GetCuisines$cuisines<TRes> {
  _CopyWithStubImpl$Query$GetCuisines$cuisines(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? slug,
    String? type,
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate?
        bridge_recipes_cuisines_aggregate,
    String? iconPath,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<TRes>
      get bridge_recipes_cuisines_aggregate =>
          CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate
              .stub(_res);
}

class Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate {
  Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate
    on Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate {
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
          Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate>
      get copyWith =>
          CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
    TRes> {
  factory CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate instance,
    TRes Function(Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate)
        then,
  ) = _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate;

  factory CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate;

  TRes call({
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
        TRes>
    implements
        CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
            TRes> {
  _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate _instance;

  final TRes Function(
      Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
        TRes>
    implements
        CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate(
      this._res);

  TRes _res;

  call({
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
              .stub(_res);
}

class Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate {
  Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
    on Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate {
  CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
          Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
    Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
        instance,
    TRes Function(
            Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate;

  factory CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate
      _instance;

  final TRes Function(
          Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetCuisines$cuisines$bridge_recipes_cuisines_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCuisines$cuisines_aggregate {
  Query$GetCuisines$cuisines_aggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$GetCuisines$cuisines_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines$cuisines_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetCuisines$cuisines_aggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCuisines$cuisines_aggregate$aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCuisines$cuisines_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetCuisines$cuisines_aggregate
    on Query$GetCuisines$cuisines_aggregate {
  CopyWith$Query$GetCuisines$cuisines_aggregate<
          Query$GetCuisines$cuisines_aggregate>
      get copyWith => CopyWith$Query$GetCuisines$cuisines_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> {
  factory CopyWith$Query$GetCuisines$cuisines_aggregate(
    Query$GetCuisines$cuisines_aggregate instance,
    TRes Function(Query$GetCuisines$cuisines_aggregate) then,
  ) = _CopyWithImpl$Query$GetCuisines$cuisines_aggregate;

  factory CopyWith$Query$GetCuisines$cuisines_aggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate;

  TRes call({
    Query$GetCuisines$cuisines_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Query$GetCuisines$cuisines_aggregate<TRes>
    implements CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> {
  _CopyWithImpl$Query$GetCuisines$cuisines_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetCuisines$cuisines_aggregate _instance;

  final TRes Function(Query$GetCuisines$cuisines_aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCuisines$cuisines_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Query$GetCuisines$cuisines_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate.stub(
            _then(_instance))
        : CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate<TRes>
    implements CopyWith$Query$GetCuisines$cuisines_aggregate<TRes> {
  _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate(this._res);

  TRes _res;

  call({
    Query$GetCuisines$cuisines_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> get aggregate =>
      CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate.stub(_res);
}

class Query$GetCuisines$cuisines_aggregate$aggregate {
  Query$GetCuisines$cuisines_aggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$GetCuisines$cuisines_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetCuisines$cuisines_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCuisines$cuisines_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetCuisines$cuisines_aggregate$aggregate
    on Query$GetCuisines$cuisines_aggregate$aggregate {
  CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<
          Query$GetCuisines$cuisines_aggregate$aggregate>
      get copyWith => CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> {
  factory CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate(
    Query$GetCuisines$cuisines_aggregate$aggregate instance,
    TRes Function(Query$GetCuisines$cuisines_aggregate$aggregate) then,
  ) = _CopyWithImpl$Query$GetCuisines$cuisines_aggregate$aggregate;

  factory CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCuisines$cuisines_aggregate$aggregate<TRes>
    implements CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> {
  _CopyWithImpl$Query$GetCuisines$cuisines_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetCuisines$cuisines_aggregate$aggregate _instance;

  final TRes Function(Query$GetCuisines$cuisines_aggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCuisines$cuisines_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate$aggregate<TRes>
    implements CopyWith$Query$GetCuisines$cuisines_aggregate$aggregate<TRes> {
  _CopyWithStubImpl$Query$GetCuisines$cuisines_aggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}
