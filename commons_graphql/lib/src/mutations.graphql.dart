import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Mutation$CreateRecipes {
  factory Variables$Mutation$CreateRecipes({
    required List<Input$ingredient_family_insert_input> families,
    required List<Input$ingredients_insert_input> ingredients,
    required List<Input$tags_insert_input> tags,
    required List<Input$cuisines_insert_input> cuisines,
    required List<Input$recipes_insert_input> recipes,
    required List<Input$bridge_recipes_tags_insert_input> recipes_tags,
    required List<Input$bridge_recipes_ingredients_insert_input>
        recipes_ingredients,
    required List<Input$bridge_recipes_cuisines_insert_input> recipes_cuisines,
  }) =>
      Variables$Mutation$CreateRecipes._({
        r'families': families,
        r'ingredients': ingredients,
        r'tags': tags,
        r'cuisines': cuisines,
        r'recipes': recipes,
        r'recipes_tags': recipes_tags,
        r'recipes_ingredients': recipes_ingredients,
        r'recipes_cuisines': recipes_cuisines,
      });

  Variables$Mutation$CreateRecipes._(this._$data);

  factory Variables$Mutation$CreateRecipes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$families = data['families'];
    result$data['families'] = (l$families as List<dynamic>)
        .map((e) => Input$ingredient_family_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$ingredients = data['ingredients'];
    result$data['ingredients'] = (l$ingredients as List<dynamic>)
        .map((e) => Input$ingredients_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$tags = data['tags'];
    result$data['tags'] = (l$tags as List<dynamic>)
        .map((e) =>
            Input$tags_insert_input.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$cuisines = data['cuisines'];
    result$data['cuisines'] = (l$cuisines as List<dynamic>)
        .map((e) =>
            Input$cuisines_insert_input.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$recipes = data['recipes'];
    result$data['recipes'] = (l$recipes as List<dynamic>)
        .map((e) =>
            Input$recipes_insert_input.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$recipes_tags = data['recipes_tags'];
    result$data['recipes_tags'] = (l$recipes_tags as List<dynamic>)
        .map((e) => Input$bridge_recipes_tags_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$recipes_ingredients = data['recipes_ingredients'];
    result$data['recipes_ingredients'] =
        (l$recipes_ingredients as List<dynamic>)
            .map((e) => Input$bridge_recipes_ingredients_insert_input.fromJson(
                (e as Map<String, dynamic>)))
            .toList();
    final l$recipes_cuisines = data['recipes_cuisines'];
    result$data['recipes_cuisines'] = (l$recipes_cuisines as List<dynamic>)
        .map((e) => Input$bridge_recipes_cuisines_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateRecipes._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ingredient_family_insert_input> get families =>
      (_$data['families'] as List<Input$ingredient_family_insert_input>);
  List<Input$ingredients_insert_input> get ingredients =>
      (_$data['ingredients'] as List<Input$ingredients_insert_input>);
  List<Input$tags_insert_input> get tags =>
      (_$data['tags'] as List<Input$tags_insert_input>);
  List<Input$cuisines_insert_input> get cuisines =>
      (_$data['cuisines'] as List<Input$cuisines_insert_input>);
  List<Input$recipes_insert_input> get recipes =>
      (_$data['recipes'] as List<Input$recipes_insert_input>);
  List<Input$bridge_recipes_tags_insert_input> get recipes_tags =>
      (_$data['recipes_tags'] as List<Input$bridge_recipes_tags_insert_input>);
  List<Input$bridge_recipes_ingredients_insert_input> get recipes_ingredients =>
      (_$data['recipes_ingredients']
          as List<Input$bridge_recipes_ingredients_insert_input>);
  List<Input$bridge_recipes_cuisines_insert_input> get recipes_cuisines =>
      (_$data['recipes_cuisines']
          as List<Input$bridge_recipes_cuisines_insert_input>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$families = families;
    result$data['families'] = l$families.map((e) => e.toJson()).toList();
    final l$ingredients = ingredients;
    result$data['ingredients'] = l$ingredients.map((e) => e.toJson()).toList();
    final l$tags = tags;
    result$data['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$cuisines = cuisines;
    result$data['cuisines'] = l$cuisines.map((e) => e.toJson()).toList();
    final l$recipes = recipes;
    result$data['recipes'] = l$recipes.map((e) => e.toJson()).toList();
    final l$recipes_tags = recipes_tags;
    result$data['recipes_tags'] =
        l$recipes_tags.map((e) => e.toJson()).toList();
    final l$recipes_ingredients = recipes_ingredients;
    result$data['recipes_ingredients'] =
        l$recipes_ingredients.map((e) => e.toJson()).toList();
    final l$recipes_cuisines = recipes_cuisines;
    result$data['recipes_cuisines'] =
        l$recipes_cuisines.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateRecipes<Variables$Mutation$CreateRecipes>
      get copyWith => CopyWith$Variables$Mutation$CreateRecipes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateRecipes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
        return false;
      }
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients.length != lOther$ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$ingredients.length; i++) {
      final l$ingredients$entry = l$ingredients[i];
      final lOther$ingredients$entry = lOther$ingredients[i];
      if (l$ingredients$entry != lOther$ingredients$entry) {
        return false;
      }
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
    final l$recipes_tags = recipes_tags;
    final lOther$recipes_tags = other.recipes_tags;
    if (l$recipes_tags.length != lOther$recipes_tags.length) {
      return false;
    }
    for (int i = 0; i < l$recipes_tags.length; i++) {
      final l$recipes_tags$entry = l$recipes_tags[i];
      final lOther$recipes_tags$entry = lOther$recipes_tags[i];
      if (l$recipes_tags$entry != lOther$recipes_tags$entry) {
        return false;
      }
    }
    final l$recipes_ingredients = recipes_ingredients;
    final lOther$recipes_ingredients = other.recipes_ingredients;
    if (l$recipes_ingredients.length != lOther$recipes_ingredients.length) {
      return false;
    }
    for (int i = 0; i < l$recipes_ingredients.length; i++) {
      final l$recipes_ingredients$entry = l$recipes_ingredients[i];
      final lOther$recipes_ingredients$entry = lOther$recipes_ingredients[i];
      if (l$recipes_ingredients$entry != lOther$recipes_ingredients$entry) {
        return false;
      }
    }
    final l$recipes_cuisines = recipes_cuisines;
    final lOther$recipes_cuisines = other.recipes_cuisines;
    if (l$recipes_cuisines.length != lOther$recipes_cuisines.length) {
      return false;
    }
    for (int i = 0; i < l$recipes_cuisines.length; i++) {
      final l$recipes_cuisines$entry = l$recipes_cuisines[i];
      final lOther$recipes_cuisines$entry = lOther$recipes_cuisines[i];
      if (l$recipes_cuisines$entry != lOther$recipes_cuisines$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$ingredients = ingredients;
    final l$tags = tags;
    final l$cuisines = cuisines;
    final l$recipes = recipes;
    final l$recipes_tags = recipes_tags;
    final l$recipes_ingredients = recipes_ingredients;
    final l$recipes_cuisines = recipes_cuisines;
    return Object.hashAll([
      Object.hashAll(l$families.map((v) => v)),
      Object.hashAll(l$ingredients.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      Object.hashAll(l$cuisines.map((v) => v)),
      Object.hashAll(l$recipes.map((v) => v)),
      Object.hashAll(l$recipes_tags.map((v) => v)),
      Object.hashAll(l$recipes_ingredients.map((v) => v)),
      Object.hashAll(l$recipes_cuisines.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateRecipes<TRes> {
  factory CopyWith$Variables$Mutation$CreateRecipes(
    Variables$Mutation$CreateRecipes instance,
    TRes Function(Variables$Mutation$CreateRecipes) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateRecipes;

  factory CopyWith$Variables$Mutation$CreateRecipes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateRecipes;

  TRes call({
    List<Input$ingredient_family_insert_input>? families,
    List<Input$ingredients_insert_input>? ingredients,
    List<Input$tags_insert_input>? tags,
    List<Input$cuisines_insert_input>? cuisines,
    List<Input$recipes_insert_input>? recipes,
    List<Input$bridge_recipes_tags_insert_input>? recipes_tags,
    List<Input$bridge_recipes_ingredients_insert_input>? recipes_ingredients,
    List<Input$bridge_recipes_cuisines_insert_input>? recipes_cuisines,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateRecipes<TRes>
    implements CopyWith$Variables$Mutation$CreateRecipes<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateRecipes(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateRecipes _instance;

  final TRes Function(Variables$Mutation$CreateRecipes) _then;

  static const _undefined = {};

  TRes call({
    Object? families = _undefined,
    Object? ingredients = _undefined,
    Object? tags = _undefined,
    Object? cuisines = _undefined,
    Object? recipes = _undefined,
    Object? recipes_tags = _undefined,
    Object? recipes_ingredients = _undefined,
    Object? recipes_cuisines = _undefined,
  }) =>
      _then(Variables$Mutation$CreateRecipes._({
        ..._instance._$data,
        if (families != _undefined && families != null)
          'families': (families as List<Input$ingredient_family_insert_input>),
        if (ingredients != _undefined && ingredients != null)
          'ingredients': (ingredients as List<Input$ingredients_insert_input>),
        if (tags != _undefined && tags != null)
          'tags': (tags as List<Input$tags_insert_input>),
        if (cuisines != _undefined && cuisines != null)
          'cuisines': (cuisines as List<Input$cuisines_insert_input>),
        if (recipes != _undefined && recipes != null)
          'recipes': (recipes as List<Input$recipes_insert_input>),
        if (recipes_tags != _undefined && recipes_tags != null)
          'recipes_tags':
              (recipes_tags as List<Input$bridge_recipes_tags_insert_input>),
        if (recipes_ingredients != _undefined && recipes_ingredients != null)
          'recipes_ingredients': (recipes_ingredients
              as List<Input$bridge_recipes_ingredients_insert_input>),
        if (recipes_cuisines != _undefined && recipes_cuisines != null)
          'recipes_cuisines': (recipes_cuisines
              as List<Input$bridge_recipes_cuisines_insert_input>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateRecipes<TRes>
    implements CopyWith$Variables$Mutation$CreateRecipes<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateRecipes(this._res);

  TRes _res;

  call({
    List<Input$ingredient_family_insert_input>? families,
    List<Input$ingredients_insert_input>? ingredients,
    List<Input$tags_insert_input>? tags,
    List<Input$cuisines_insert_input>? cuisines,
    List<Input$recipes_insert_input>? recipes,
    List<Input$bridge_recipes_tags_insert_input>? recipes_tags,
    List<Input$bridge_recipes_ingredients_insert_input>? recipes_ingredients,
    List<Input$bridge_recipes_cuisines_insert_input>? recipes_cuisines,
  }) =>
      _res;
}

class Mutation$CreateRecipes {
  Mutation$CreateRecipes({
    this.insert_ingredient_family,
    this.insert_ingredients,
    this.insert_tags,
    this.insert_cuisines,
    this.insert_recipes,
    this.insert_bridge_recipes_tags,
    this.insert_bridge_recipes_ingredients,
    this.insert_bridge_recipes_cuisines,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes.fromJson(Map<String, dynamic> json) {
    final l$insert_ingredient_family = json['insert_ingredient_family'];
    final l$insert_ingredients = json['insert_ingredients'];
    final l$insert_tags = json['insert_tags'];
    final l$insert_cuisines = json['insert_cuisines'];
    final l$insert_recipes = json['insert_recipes'];
    final l$insert_bridge_recipes_tags = json['insert_bridge_recipes_tags'];
    final l$insert_bridge_recipes_ingredients =
        json['insert_bridge_recipes_ingredients'];
    final l$insert_bridge_recipes_cuisines =
        json['insert_bridge_recipes_cuisines'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes(
      insert_ingredient_family: l$insert_ingredient_family == null
          ? null
          : Mutation$CreateRecipes$insert_ingredient_family.fromJson(
              (l$insert_ingredient_family as Map<String, dynamic>)),
      insert_ingredients: l$insert_ingredients == null
          ? null
          : Mutation$CreateRecipes$insert_ingredients.fromJson(
              (l$insert_ingredients as Map<String, dynamic>)),
      insert_tags: l$insert_tags == null
          ? null
          : Mutation$CreateRecipes$insert_tags.fromJson(
              (l$insert_tags as Map<String, dynamic>)),
      insert_cuisines: l$insert_cuisines == null
          ? null
          : Mutation$CreateRecipes$insert_cuisines.fromJson(
              (l$insert_cuisines as Map<String, dynamic>)),
      insert_recipes: l$insert_recipes == null
          ? null
          : Mutation$CreateRecipes$insert_recipes.fromJson(
              (l$insert_recipes as Map<String, dynamic>)),
      insert_bridge_recipes_tags: l$insert_bridge_recipes_tags == null
          ? null
          : Mutation$CreateRecipes$insert_bridge_recipes_tags.fromJson(
              (l$insert_bridge_recipes_tags as Map<String, dynamic>)),
      insert_bridge_recipes_ingredients: l$insert_bridge_recipes_ingredients ==
              null
          ? null
          : Mutation$CreateRecipes$insert_bridge_recipes_ingredients.fromJson(
              (l$insert_bridge_recipes_ingredients as Map<String, dynamic>)),
      insert_bridge_recipes_cuisines: l$insert_bridge_recipes_cuisines == null
          ? null
          : Mutation$CreateRecipes$insert_bridge_recipes_cuisines.fromJson(
              (l$insert_bridge_recipes_cuisines as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateRecipes$insert_ingredient_family?
      insert_ingredient_family;

  final Mutation$CreateRecipes$insert_ingredients? insert_ingredients;

  final Mutation$CreateRecipes$insert_tags? insert_tags;

  final Mutation$CreateRecipes$insert_cuisines? insert_cuisines;

  final Mutation$CreateRecipes$insert_recipes? insert_recipes;

  final Mutation$CreateRecipes$insert_bridge_recipes_tags?
      insert_bridge_recipes_tags;

  final Mutation$CreateRecipes$insert_bridge_recipes_ingredients?
      insert_bridge_recipes_ingredients;

  final Mutation$CreateRecipes$insert_bridge_recipes_cuisines?
      insert_bridge_recipes_cuisines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_ingredient_family = insert_ingredient_family;
    _resultData['insert_ingredient_family'] =
        l$insert_ingredient_family?.toJson();
    final l$insert_ingredients = insert_ingredients;
    _resultData['insert_ingredients'] = l$insert_ingredients?.toJson();
    final l$insert_tags = insert_tags;
    _resultData['insert_tags'] = l$insert_tags?.toJson();
    final l$insert_cuisines = insert_cuisines;
    _resultData['insert_cuisines'] = l$insert_cuisines?.toJson();
    final l$insert_recipes = insert_recipes;
    _resultData['insert_recipes'] = l$insert_recipes?.toJson();
    final l$insert_bridge_recipes_tags = insert_bridge_recipes_tags;
    _resultData['insert_bridge_recipes_tags'] =
        l$insert_bridge_recipes_tags?.toJson();
    final l$insert_bridge_recipes_ingredients =
        insert_bridge_recipes_ingredients;
    _resultData['insert_bridge_recipes_ingredients'] =
        l$insert_bridge_recipes_ingredients?.toJson();
    final l$insert_bridge_recipes_cuisines = insert_bridge_recipes_cuisines;
    _resultData['insert_bridge_recipes_cuisines'] =
        l$insert_bridge_recipes_cuisines?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_ingredient_family = insert_ingredient_family;
    final l$insert_ingredients = insert_ingredients;
    final l$insert_tags = insert_tags;
    final l$insert_cuisines = insert_cuisines;
    final l$insert_recipes = insert_recipes;
    final l$insert_bridge_recipes_tags = insert_bridge_recipes_tags;
    final l$insert_bridge_recipes_ingredients =
        insert_bridge_recipes_ingredients;
    final l$insert_bridge_recipes_cuisines = insert_bridge_recipes_cuisines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_ingredient_family,
      l$insert_ingredients,
      l$insert_tags,
      l$insert_cuisines,
      l$insert_recipes,
      l$insert_bridge_recipes_tags,
      l$insert_bridge_recipes_ingredients,
      l$insert_bridge_recipes_cuisines,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_ingredient_family = insert_ingredient_family;
    final lOther$insert_ingredient_family = other.insert_ingredient_family;
    if (l$insert_ingredient_family != lOther$insert_ingredient_family) {
      return false;
    }
    final l$insert_ingredients = insert_ingredients;
    final lOther$insert_ingredients = other.insert_ingredients;
    if (l$insert_ingredients != lOther$insert_ingredients) {
      return false;
    }
    final l$insert_tags = insert_tags;
    final lOther$insert_tags = other.insert_tags;
    if (l$insert_tags != lOther$insert_tags) {
      return false;
    }
    final l$insert_cuisines = insert_cuisines;
    final lOther$insert_cuisines = other.insert_cuisines;
    if (l$insert_cuisines != lOther$insert_cuisines) {
      return false;
    }
    final l$insert_recipes = insert_recipes;
    final lOther$insert_recipes = other.insert_recipes;
    if (l$insert_recipes != lOther$insert_recipes) {
      return false;
    }
    final l$insert_bridge_recipes_tags = insert_bridge_recipes_tags;
    final lOther$insert_bridge_recipes_tags = other.insert_bridge_recipes_tags;
    if (l$insert_bridge_recipes_tags != lOther$insert_bridge_recipes_tags) {
      return false;
    }
    final l$insert_bridge_recipes_ingredients =
        insert_bridge_recipes_ingredients;
    final lOther$insert_bridge_recipes_ingredients =
        other.insert_bridge_recipes_ingredients;
    if (l$insert_bridge_recipes_ingredients !=
        lOther$insert_bridge_recipes_ingredients) {
      return false;
    }
    final l$insert_bridge_recipes_cuisines = insert_bridge_recipes_cuisines;
    final lOther$insert_bridge_recipes_cuisines =
        other.insert_bridge_recipes_cuisines;
    if (l$insert_bridge_recipes_cuisines !=
        lOther$insert_bridge_recipes_cuisines) {
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

extension UtilityExtension$Mutation$CreateRecipes on Mutation$CreateRecipes {
  CopyWith$Mutation$CreateRecipes<Mutation$CreateRecipes> get copyWith =>
      CopyWith$Mutation$CreateRecipes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateRecipes<TRes> {
  factory CopyWith$Mutation$CreateRecipes(
    Mutation$CreateRecipes instance,
    TRes Function(Mutation$CreateRecipes) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes;

  factory CopyWith$Mutation$CreateRecipes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes;

  TRes call({
    Mutation$CreateRecipes$insert_ingredient_family? insert_ingredient_family,
    Mutation$CreateRecipes$insert_ingredients? insert_ingredients,
    Mutation$CreateRecipes$insert_tags? insert_tags,
    Mutation$CreateRecipes$insert_cuisines? insert_cuisines,
    Mutation$CreateRecipes$insert_recipes? insert_recipes,
    Mutation$CreateRecipes$insert_bridge_recipes_tags?
        insert_bridge_recipes_tags,
    Mutation$CreateRecipes$insert_bridge_recipes_ingredients?
        insert_bridge_recipes_ingredients,
    Mutation$CreateRecipes$insert_bridge_recipes_cuisines?
        insert_bridge_recipes_cuisines,
    String? $__typename,
  });
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes>
      get insert_ingredient_family;
  CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes>
      get insert_ingredients;
  CopyWith$Mutation$CreateRecipes$insert_tags<TRes> get insert_tags;
  CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> get insert_cuisines;
  CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> get insert_recipes;
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes>
      get insert_bridge_recipes_tags;
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<TRes>
      get insert_bridge_recipes_ingredients;
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes>
      get insert_bridge_recipes_cuisines;
}

class _CopyWithImpl$Mutation$CreateRecipes<TRes>
    implements CopyWith$Mutation$CreateRecipes<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes _instance;

  final TRes Function(Mutation$CreateRecipes) _then;

  static const _undefined = {};

  TRes call({
    Object? insert_ingredient_family = _undefined,
    Object? insert_ingredients = _undefined,
    Object? insert_tags = _undefined,
    Object? insert_cuisines = _undefined,
    Object? insert_recipes = _undefined,
    Object? insert_bridge_recipes_tags = _undefined,
    Object? insert_bridge_recipes_ingredients = _undefined,
    Object? insert_bridge_recipes_cuisines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes(
        insert_ingredient_family: insert_ingredient_family == _undefined
            ? _instance.insert_ingredient_family
            : (insert_ingredient_family
                as Mutation$CreateRecipes$insert_ingredient_family?),
        insert_ingredients: insert_ingredients == _undefined
            ? _instance.insert_ingredients
            : (insert_ingredients
                as Mutation$CreateRecipes$insert_ingredients?),
        insert_tags: insert_tags == _undefined
            ? _instance.insert_tags
            : (insert_tags as Mutation$CreateRecipes$insert_tags?),
        insert_cuisines: insert_cuisines == _undefined
            ? _instance.insert_cuisines
            : (insert_cuisines as Mutation$CreateRecipes$insert_cuisines?),
        insert_recipes: insert_recipes == _undefined
            ? _instance.insert_recipes
            : (insert_recipes as Mutation$CreateRecipes$insert_recipes?),
        insert_bridge_recipes_tags: insert_bridge_recipes_tags == _undefined
            ? _instance.insert_bridge_recipes_tags
            : (insert_bridge_recipes_tags
                as Mutation$CreateRecipes$insert_bridge_recipes_tags?),
        insert_bridge_recipes_ingredients: insert_bridge_recipes_ingredients ==
                _undefined
            ? _instance.insert_bridge_recipes_ingredients
            : (insert_bridge_recipes_ingredients
                as Mutation$CreateRecipes$insert_bridge_recipes_ingredients?),
        insert_bridge_recipes_cuisines:
            insert_bridge_recipes_cuisines == _undefined
                ? _instance.insert_bridge_recipes_cuisines
                : (insert_bridge_recipes_cuisines
                    as Mutation$CreateRecipes$insert_bridge_recipes_cuisines?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes>
      get insert_ingredient_family {
    final local$insert_ingredient_family = _instance.insert_ingredient_family;
    return local$insert_ingredient_family == null
        ? CopyWith$Mutation$CreateRecipes$insert_ingredient_family.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_ingredient_family(
            local$insert_ingredient_family,
            (e) => call(insert_ingredient_family: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes>
      get insert_ingredients {
    final local$insert_ingredients = _instance.insert_ingredients;
    return local$insert_ingredients == null
        ? CopyWith$Mutation$CreateRecipes$insert_ingredients.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_ingredients(
            local$insert_ingredients, (e) => call(insert_ingredients: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_tags<TRes> get insert_tags {
    final local$insert_tags = _instance.insert_tags;
    return local$insert_tags == null
        ? CopyWith$Mutation$CreateRecipes$insert_tags.stub(_then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_tags(
            local$insert_tags, (e) => call(insert_tags: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> get insert_cuisines {
    final local$insert_cuisines = _instance.insert_cuisines;
    return local$insert_cuisines == null
        ? CopyWith$Mutation$CreateRecipes$insert_cuisines.stub(_then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_cuisines(
            local$insert_cuisines, (e) => call(insert_cuisines: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> get insert_recipes {
    final local$insert_recipes = _instance.insert_recipes;
    return local$insert_recipes == null
        ? CopyWith$Mutation$CreateRecipes$insert_recipes.stub(_then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_recipes(
            local$insert_recipes, (e) => call(insert_recipes: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes>
      get insert_bridge_recipes_tags {
    final local$insert_bridge_recipes_tags =
        _instance.insert_bridge_recipes_tags;
    return local$insert_bridge_recipes_tags == null
        ? CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags(
            local$insert_bridge_recipes_tags,
            (e) => call(insert_bridge_recipes_tags: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<TRes>
      get insert_bridge_recipes_ingredients {
    final local$insert_bridge_recipes_ingredients =
        _instance.insert_bridge_recipes_ingredients;
    return local$insert_bridge_recipes_ingredients == null
        ? CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
            local$insert_bridge_recipes_ingredients,
            (e) => call(insert_bridge_recipes_ingredients: e));
  }

  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes>
      get insert_bridge_recipes_cuisines {
    final local$insert_bridge_recipes_cuisines =
        _instance.insert_bridge_recipes_cuisines;
    return local$insert_bridge_recipes_cuisines == null
        ? CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
            local$insert_bridge_recipes_cuisines,
            (e) => call(insert_bridge_recipes_cuisines: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateRecipes<TRes>
    implements CopyWith$Mutation$CreateRecipes<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes(this._res);

  TRes _res;

  call({
    Mutation$CreateRecipes$insert_ingredient_family? insert_ingredient_family,
    Mutation$CreateRecipes$insert_ingredients? insert_ingredients,
    Mutation$CreateRecipes$insert_tags? insert_tags,
    Mutation$CreateRecipes$insert_cuisines? insert_cuisines,
    Mutation$CreateRecipes$insert_recipes? insert_recipes,
    Mutation$CreateRecipes$insert_bridge_recipes_tags?
        insert_bridge_recipes_tags,
    Mutation$CreateRecipes$insert_bridge_recipes_ingredients?
        insert_bridge_recipes_ingredients,
    Mutation$CreateRecipes$insert_bridge_recipes_cuisines?
        insert_bridge_recipes_cuisines,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes>
      get insert_ingredient_family =>
          CopyWith$Mutation$CreateRecipes$insert_ingredient_family.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes>
      get insert_ingredients =>
          CopyWith$Mutation$CreateRecipes$insert_ingredients.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_tags<TRes> get insert_tags =>
      CopyWith$Mutation$CreateRecipes$insert_tags.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> get insert_cuisines =>
      CopyWith$Mutation$CreateRecipes$insert_cuisines.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> get insert_recipes =>
      CopyWith$Mutation$CreateRecipes$insert_recipes.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes>
      get insert_bridge_recipes_tags =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<TRes>
      get insert_bridge_recipes_ingredients =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients
              .stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes>
      get insert_bridge_recipes_cuisines =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines.stub(
              _res);
}

const documentNodeMutationCreateRecipes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateRecipes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'families')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ingredient_family_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ingredients')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ingredients_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'tags_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cuisines')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'cuisines_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipes')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'recipes_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipes_tags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'bridge_recipes_tags_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipes_ingredients')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'bridge_recipes_ingredients_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipes_cuisines')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'bridge_recipes_cuisines_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_ingredient_family'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'families')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'ingredient_family_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_ingredients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'ingredients')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'ingredients_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'tags')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'tags_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_cuisines'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'cuisines')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'cuisines_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_recipes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'recipes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'recipes_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_bridge_recipes_tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'recipes_tags')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'bridge_recipes_tags_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_bridge_recipes_ingredients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'recipes_ingredients')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'bridge_recipes_ingredients_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'insert_bridge_recipes_cuisines'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'recipes_cuisines')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(
                    name: NameNode(value: 'bridge_recipes_cuisines_pkey')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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

class Mutation$CreateRecipes$insert_ingredient_family {
  Mutation$CreateRecipes$insert_ingredient_family({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_ingredient_family.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_ingredient_family(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_ingredient_family) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_ingredient_family
    on Mutation$CreateRecipes$insert_ingredient_family {
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<
          Mutation$CreateRecipes$insert_ingredient_family>
      get copyWith => CopyWith$Mutation$CreateRecipes$insert_ingredient_family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_ingredient_family(
    Mutation$CreateRecipes$insert_ingredient_family instance,
    TRes Function(Mutation$CreateRecipes$insert_ingredient_family) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_ingredient_family;

  factory CopyWith$Mutation$CreateRecipes$insert_ingredient_family.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredient_family;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_ingredient_family<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_ingredient_family(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_ingredient_family _instance;

  final TRes Function(Mutation$CreateRecipes$insert_ingredient_family) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_ingredient_family(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredient_family<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredient_family(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_ingredients {
  Mutation$CreateRecipes$insert_ingredients({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_ingredients(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_ingredients
    on Mutation$CreateRecipes$insert_ingredients {
  CopyWith$Mutation$CreateRecipes$insert_ingredients<
          Mutation$CreateRecipes$insert_ingredients>
      get copyWith => CopyWith$Mutation$CreateRecipes$insert_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_ingredients(
    Mutation$CreateRecipes$insert_ingredients instance,
    TRes Function(Mutation$CreateRecipes$insert_ingredients) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_ingredients;

  factory CopyWith$Mutation$CreateRecipes$insert_ingredients.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredients;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_ingredients<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_ingredients(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_ingredients _instance;

  final TRes Function(Mutation$CreateRecipes$insert_ingredients) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_ingredients(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredients<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_ingredients(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_tags {
  Mutation$CreateRecipes$insert_tags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_tags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_tags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_tags
    on Mutation$CreateRecipes$insert_tags {
  CopyWith$Mutation$CreateRecipes$insert_tags<
          Mutation$CreateRecipes$insert_tags>
      get copyWith => CopyWith$Mutation$CreateRecipes$insert_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_tags<TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_tags(
    Mutation$CreateRecipes$insert_tags instance,
    TRes Function(Mutation$CreateRecipes$insert_tags) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_tags;

  factory CopyWith$Mutation$CreateRecipes$insert_tags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_tags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_tags<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_tags<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_tags(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_tags _instance;

  final TRes Function(Mutation$CreateRecipes$insert_tags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_tags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_tags<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_tags<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_tags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_cuisines {
  Mutation$CreateRecipes$insert_cuisines({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_cuisines(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_cuisines
    on Mutation$CreateRecipes$insert_cuisines {
  CopyWith$Mutation$CreateRecipes$insert_cuisines<
          Mutation$CreateRecipes$insert_cuisines>
      get copyWith => CopyWith$Mutation$CreateRecipes$insert_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_cuisines(
    Mutation$CreateRecipes$insert_cuisines instance,
    TRes Function(Mutation$CreateRecipes$insert_cuisines) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_cuisines;

  factory CopyWith$Mutation$CreateRecipes$insert_cuisines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_cuisines;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_cuisines<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_cuisines(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_cuisines _instance;

  final TRes Function(Mutation$CreateRecipes$insert_cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_cuisines(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_cuisines<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_cuisines<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_cuisines(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_recipes {
  Mutation$CreateRecipes$insert_recipes({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_recipes.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_recipes(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_recipes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_recipes
    on Mutation$CreateRecipes$insert_recipes {
  CopyWith$Mutation$CreateRecipes$insert_recipes<
          Mutation$CreateRecipes$insert_recipes>
      get copyWith => CopyWith$Mutation$CreateRecipes$insert_recipes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_recipes(
    Mutation$CreateRecipes$insert_recipes instance,
    TRes Function(Mutation$CreateRecipes$insert_recipes) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_recipes;

  factory CopyWith$Mutation$CreateRecipes$insert_recipes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_recipes;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_recipes<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_recipes(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_recipes _instance;

  final TRes Function(Mutation$CreateRecipes$insert_recipes) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_recipes(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_recipes<TRes>
    implements CopyWith$Mutation$CreateRecipes$insert_recipes<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_recipes(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_bridge_recipes_tags {
  Mutation$CreateRecipes$insert_bridge_recipes_tags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_bridge_recipes_tags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_bridge_recipes_tags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_bridge_recipes_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_bridge_recipes_tags
    on Mutation$CreateRecipes$insert_bridge_recipes_tags {
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<
          Mutation$CreateRecipes$insert_bridge_recipes_tags>
      get copyWith =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<
    TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags(
    Mutation$CreateRecipes$insert_bridge_recipes_tags instance,
    TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_tags) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags;

  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_bridge_recipes_tags _instance;

  final TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_tags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_bridge_recipes_tags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_tags<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_tags(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_bridge_recipes_ingredients {
  Mutation$CreateRecipes$insert_bridge_recipes_ingredients({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_bridge_recipes_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_bridge_recipes_ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_bridge_recipes_ingredients
    on Mutation$CreateRecipes$insert_bridge_recipes_ingredients {
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
          Mutation$CreateRecipes$insert_bridge_recipes_ingredients>
      get copyWith =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
    TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
    Mutation$CreateRecipes$insert_bridge_recipes_ingredients instance,
    TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_ingredients)
        then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients;

  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
        TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
            TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_bridge_recipes_ingredients _instance;

  final TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_ingredients)
      _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
        TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_ingredients<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_ingredients(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateRecipes$insert_bridge_recipes_cuisines {
  Mutation$CreateRecipes$insert_bridge_recipes_cuisines({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes$insert_bridge_recipes_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRecipes$insert_bridge_recipes_cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$CreateRecipes$insert_bridge_recipes_cuisines
    on Mutation$CreateRecipes$insert_bridge_recipes_cuisines {
  CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<
          Mutation$CreateRecipes$insert_bridge_recipes_cuisines>
      get copyWith =>
          CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<
    TRes> {
  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
    Mutation$CreateRecipes$insert_bridge_recipes_cuisines instance,
    TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_cuisines) then,
  ) = _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines;

  factory CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes> {
  _CopyWithImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
    this._instance,
    this._then,
  );

  final Mutation$CreateRecipes$insert_bridge_recipes_cuisines _instance;

  final TRes Function(Mutation$CreateRecipes$insert_bridge_recipes_cuisines)
      _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<
        TRes>
    implements
        CopyWith$Mutation$CreateRecipes$insert_bridge_recipes_cuisines<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes$insert_bridge_recipes_cuisines(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all {
  Mutation$delete_all({
    this.delete_cuisines,
    this.delete_bridge_recipes_cuisines,
    this.delete_bridge_recipes_ingredients,
    this.delete_bridge_recipes_tags,
    this.delete_ingredient_family,
    this.delete_ingredients,
    this.delete_recipes,
    this.delete_tags,
    required this.$__typename,
  });

  factory Mutation$delete_all.fromJson(Map<String, dynamic> json) {
    final l$delete_cuisines = json['delete_cuisines'];
    final l$delete_bridge_recipes_cuisines =
        json['delete_bridge_recipes_cuisines'];
    final l$delete_bridge_recipes_ingredients =
        json['delete_bridge_recipes_ingredients'];
    final l$delete_bridge_recipes_tags = json['delete_bridge_recipes_tags'];
    final l$delete_ingredient_family = json['delete_ingredient_family'];
    final l$delete_ingredients = json['delete_ingredients'];
    final l$delete_recipes = json['delete_recipes'];
    final l$delete_tags = json['delete_tags'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all(
      delete_cuisines: l$delete_cuisines == null
          ? null
          : Mutation$delete_all$delete_cuisines.fromJson(
              (l$delete_cuisines as Map<String, dynamic>)),
      delete_bridge_recipes_cuisines: l$delete_bridge_recipes_cuisines == null
          ? null
          : Mutation$delete_all$delete_bridge_recipes_cuisines.fromJson(
              (l$delete_bridge_recipes_cuisines as Map<String, dynamic>)),
      delete_bridge_recipes_ingredients: l$delete_bridge_recipes_ingredients ==
              null
          ? null
          : Mutation$delete_all$delete_bridge_recipes_ingredients.fromJson(
              (l$delete_bridge_recipes_ingredients as Map<String, dynamic>)),
      delete_bridge_recipes_tags: l$delete_bridge_recipes_tags == null
          ? null
          : Mutation$delete_all$delete_bridge_recipes_tags.fromJson(
              (l$delete_bridge_recipes_tags as Map<String, dynamic>)),
      delete_ingredient_family: l$delete_ingredient_family == null
          ? null
          : Mutation$delete_all$delete_ingredient_family.fromJson(
              (l$delete_ingredient_family as Map<String, dynamic>)),
      delete_ingredients: l$delete_ingredients == null
          ? null
          : Mutation$delete_all$delete_ingredients.fromJson(
              (l$delete_ingredients as Map<String, dynamic>)),
      delete_recipes: l$delete_recipes == null
          ? null
          : Mutation$delete_all$delete_recipes.fromJson(
              (l$delete_recipes as Map<String, dynamic>)),
      delete_tags: l$delete_tags == null
          ? null
          : Mutation$delete_all$delete_tags.fromJson(
              (l$delete_tags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$delete_all$delete_cuisines? delete_cuisines;

  final Mutation$delete_all$delete_bridge_recipes_cuisines?
      delete_bridge_recipes_cuisines;

  final Mutation$delete_all$delete_bridge_recipes_ingredients?
      delete_bridge_recipes_ingredients;

  final Mutation$delete_all$delete_bridge_recipes_tags?
      delete_bridge_recipes_tags;

  final Mutation$delete_all$delete_ingredient_family? delete_ingredient_family;

  final Mutation$delete_all$delete_ingredients? delete_ingredients;

  final Mutation$delete_all$delete_recipes? delete_recipes;

  final Mutation$delete_all$delete_tags? delete_tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_cuisines = delete_cuisines;
    _resultData['delete_cuisines'] = l$delete_cuisines?.toJson();
    final l$delete_bridge_recipes_cuisines = delete_bridge_recipes_cuisines;
    _resultData['delete_bridge_recipes_cuisines'] =
        l$delete_bridge_recipes_cuisines?.toJson();
    final l$delete_bridge_recipes_ingredients =
        delete_bridge_recipes_ingredients;
    _resultData['delete_bridge_recipes_ingredients'] =
        l$delete_bridge_recipes_ingredients?.toJson();
    final l$delete_bridge_recipes_tags = delete_bridge_recipes_tags;
    _resultData['delete_bridge_recipes_tags'] =
        l$delete_bridge_recipes_tags?.toJson();
    final l$delete_ingredient_family = delete_ingredient_family;
    _resultData['delete_ingredient_family'] =
        l$delete_ingredient_family?.toJson();
    final l$delete_ingredients = delete_ingredients;
    _resultData['delete_ingredients'] = l$delete_ingredients?.toJson();
    final l$delete_recipes = delete_recipes;
    _resultData['delete_recipes'] = l$delete_recipes?.toJson();
    final l$delete_tags = delete_tags;
    _resultData['delete_tags'] = l$delete_tags?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_cuisines = delete_cuisines;
    final l$delete_bridge_recipes_cuisines = delete_bridge_recipes_cuisines;
    final l$delete_bridge_recipes_ingredients =
        delete_bridge_recipes_ingredients;
    final l$delete_bridge_recipes_tags = delete_bridge_recipes_tags;
    final l$delete_ingredient_family = delete_ingredient_family;
    final l$delete_ingredients = delete_ingredients;
    final l$delete_recipes = delete_recipes;
    final l$delete_tags = delete_tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delete_cuisines,
      l$delete_bridge_recipes_cuisines,
      l$delete_bridge_recipes_ingredients,
      l$delete_bridge_recipes_tags,
      l$delete_ingredient_family,
      l$delete_ingredients,
      l$delete_recipes,
      l$delete_tags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete_cuisines = delete_cuisines;
    final lOther$delete_cuisines = other.delete_cuisines;
    if (l$delete_cuisines != lOther$delete_cuisines) {
      return false;
    }
    final l$delete_bridge_recipes_cuisines = delete_bridge_recipes_cuisines;
    final lOther$delete_bridge_recipes_cuisines =
        other.delete_bridge_recipes_cuisines;
    if (l$delete_bridge_recipes_cuisines !=
        lOther$delete_bridge_recipes_cuisines) {
      return false;
    }
    final l$delete_bridge_recipes_ingredients =
        delete_bridge_recipes_ingredients;
    final lOther$delete_bridge_recipes_ingredients =
        other.delete_bridge_recipes_ingredients;
    if (l$delete_bridge_recipes_ingredients !=
        lOther$delete_bridge_recipes_ingredients) {
      return false;
    }
    final l$delete_bridge_recipes_tags = delete_bridge_recipes_tags;
    final lOther$delete_bridge_recipes_tags = other.delete_bridge_recipes_tags;
    if (l$delete_bridge_recipes_tags != lOther$delete_bridge_recipes_tags) {
      return false;
    }
    final l$delete_ingredient_family = delete_ingredient_family;
    final lOther$delete_ingredient_family = other.delete_ingredient_family;
    if (l$delete_ingredient_family != lOther$delete_ingredient_family) {
      return false;
    }
    final l$delete_ingredients = delete_ingredients;
    final lOther$delete_ingredients = other.delete_ingredients;
    if (l$delete_ingredients != lOther$delete_ingredients) {
      return false;
    }
    final l$delete_recipes = delete_recipes;
    final lOther$delete_recipes = other.delete_recipes;
    if (l$delete_recipes != lOther$delete_recipes) {
      return false;
    }
    final l$delete_tags = delete_tags;
    final lOther$delete_tags = other.delete_tags;
    if (l$delete_tags != lOther$delete_tags) {
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

extension UtilityExtension$Mutation$delete_all on Mutation$delete_all {
  CopyWith$Mutation$delete_all<Mutation$delete_all> get copyWith =>
      CopyWith$Mutation$delete_all(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$delete_all<TRes> {
  factory CopyWith$Mutation$delete_all(
    Mutation$delete_all instance,
    TRes Function(Mutation$delete_all) then,
  ) = _CopyWithImpl$Mutation$delete_all;

  factory CopyWith$Mutation$delete_all.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all;

  TRes call({
    Mutation$delete_all$delete_cuisines? delete_cuisines,
    Mutation$delete_all$delete_bridge_recipes_cuisines?
        delete_bridge_recipes_cuisines,
    Mutation$delete_all$delete_bridge_recipes_ingredients?
        delete_bridge_recipes_ingredients,
    Mutation$delete_all$delete_bridge_recipes_tags? delete_bridge_recipes_tags,
    Mutation$delete_all$delete_ingredient_family? delete_ingredient_family,
    Mutation$delete_all$delete_ingredients? delete_ingredients,
    Mutation$delete_all$delete_recipes? delete_recipes,
    Mutation$delete_all$delete_tags? delete_tags,
    String? $__typename,
  });
  CopyWith$Mutation$delete_all$delete_cuisines<TRes> get delete_cuisines;
  CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes>
      get delete_bridge_recipes_cuisines;
  CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes>
      get delete_bridge_recipes_ingredients;
  CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes>
      get delete_bridge_recipes_tags;
  CopyWith$Mutation$delete_all$delete_ingredient_family<TRes>
      get delete_ingredient_family;
  CopyWith$Mutation$delete_all$delete_ingredients<TRes> get delete_ingredients;
  CopyWith$Mutation$delete_all$delete_recipes<TRes> get delete_recipes;
  CopyWith$Mutation$delete_all$delete_tags<TRes> get delete_tags;
}

class _CopyWithImpl$Mutation$delete_all<TRes>
    implements CopyWith$Mutation$delete_all<TRes> {
  _CopyWithImpl$Mutation$delete_all(
    this._instance,
    this._then,
  );

  final Mutation$delete_all _instance;

  final TRes Function(Mutation$delete_all) _then;

  static const _undefined = {};

  TRes call({
    Object? delete_cuisines = _undefined,
    Object? delete_bridge_recipes_cuisines = _undefined,
    Object? delete_bridge_recipes_ingredients = _undefined,
    Object? delete_bridge_recipes_tags = _undefined,
    Object? delete_ingredient_family = _undefined,
    Object? delete_ingredients = _undefined,
    Object? delete_recipes = _undefined,
    Object? delete_tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all(
        delete_cuisines: delete_cuisines == _undefined
            ? _instance.delete_cuisines
            : (delete_cuisines as Mutation$delete_all$delete_cuisines?),
        delete_bridge_recipes_cuisines:
            delete_bridge_recipes_cuisines == _undefined
                ? _instance.delete_bridge_recipes_cuisines
                : (delete_bridge_recipes_cuisines
                    as Mutation$delete_all$delete_bridge_recipes_cuisines?),
        delete_bridge_recipes_ingredients:
            delete_bridge_recipes_ingredients == _undefined
                ? _instance.delete_bridge_recipes_ingredients
                : (delete_bridge_recipes_ingredients
                    as Mutation$delete_all$delete_bridge_recipes_ingredients?),
        delete_bridge_recipes_tags: delete_bridge_recipes_tags == _undefined
            ? _instance.delete_bridge_recipes_tags
            : (delete_bridge_recipes_tags
                as Mutation$delete_all$delete_bridge_recipes_tags?),
        delete_ingredient_family: delete_ingredient_family == _undefined
            ? _instance.delete_ingredient_family
            : (delete_ingredient_family
                as Mutation$delete_all$delete_ingredient_family?),
        delete_ingredients: delete_ingredients == _undefined
            ? _instance.delete_ingredients
            : (delete_ingredients as Mutation$delete_all$delete_ingredients?),
        delete_recipes: delete_recipes == _undefined
            ? _instance.delete_recipes
            : (delete_recipes as Mutation$delete_all$delete_recipes?),
        delete_tags: delete_tags == _undefined
            ? _instance.delete_tags
            : (delete_tags as Mutation$delete_all$delete_tags?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$delete_all$delete_cuisines<TRes> get delete_cuisines {
    final local$delete_cuisines = _instance.delete_cuisines;
    return local$delete_cuisines == null
        ? CopyWith$Mutation$delete_all$delete_cuisines.stub(_then(_instance))
        : CopyWith$Mutation$delete_all$delete_cuisines(
            local$delete_cuisines, (e) => call(delete_cuisines: e));
  }

  CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes>
      get delete_bridge_recipes_cuisines {
    final local$delete_bridge_recipes_cuisines =
        _instance.delete_bridge_recipes_cuisines;
    return local$delete_bridge_recipes_cuisines == null
        ? CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines.stub(
            _then(_instance))
        : CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines(
            local$delete_bridge_recipes_cuisines,
            (e) => call(delete_bridge_recipes_cuisines: e));
  }

  CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes>
      get delete_bridge_recipes_ingredients {
    final local$delete_bridge_recipes_ingredients =
        _instance.delete_bridge_recipes_ingredients;
    return local$delete_bridge_recipes_ingredients == null
        ? CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients.stub(
            _then(_instance))
        : CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients(
            local$delete_bridge_recipes_ingredients,
            (e) => call(delete_bridge_recipes_ingredients: e));
  }

  CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes>
      get delete_bridge_recipes_tags {
    final local$delete_bridge_recipes_tags =
        _instance.delete_bridge_recipes_tags;
    return local$delete_bridge_recipes_tags == null
        ? CopyWith$Mutation$delete_all$delete_bridge_recipes_tags.stub(
            _then(_instance))
        : CopyWith$Mutation$delete_all$delete_bridge_recipes_tags(
            local$delete_bridge_recipes_tags,
            (e) => call(delete_bridge_recipes_tags: e));
  }

  CopyWith$Mutation$delete_all$delete_ingredient_family<TRes>
      get delete_ingredient_family {
    final local$delete_ingredient_family = _instance.delete_ingredient_family;
    return local$delete_ingredient_family == null
        ? CopyWith$Mutation$delete_all$delete_ingredient_family.stub(
            _then(_instance))
        : CopyWith$Mutation$delete_all$delete_ingredient_family(
            local$delete_ingredient_family,
            (e) => call(delete_ingredient_family: e));
  }

  CopyWith$Mutation$delete_all$delete_ingredients<TRes> get delete_ingredients {
    final local$delete_ingredients = _instance.delete_ingredients;
    return local$delete_ingredients == null
        ? CopyWith$Mutation$delete_all$delete_ingredients.stub(_then(_instance))
        : CopyWith$Mutation$delete_all$delete_ingredients(
            local$delete_ingredients, (e) => call(delete_ingredients: e));
  }

  CopyWith$Mutation$delete_all$delete_recipes<TRes> get delete_recipes {
    final local$delete_recipes = _instance.delete_recipes;
    return local$delete_recipes == null
        ? CopyWith$Mutation$delete_all$delete_recipes.stub(_then(_instance))
        : CopyWith$Mutation$delete_all$delete_recipes(
            local$delete_recipes, (e) => call(delete_recipes: e));
  }

  CopyWith$Mutation$delete_all$delete_tags<TRes> get delete_tags {
    final local$delete_tags = _instance.delete_tags;
    return local$delete_tags == null
        ? CopyWith$Mutation$delete_all$delete_tags.stub(_then(_instance))
        : CopyWith$Mutation$delete_all$delete_tags(
            local$delete_tags, (e) => call(delete_tags: e));
  }
}

class _CopyWithStubImpl$Mutation$delete_all<TRes>
    implements CopyWith$Mutation$delete_all<TRes> {
  _CopyWithStubImpl$Mutation$delete_all(this._res);

  TRes _res;

  call({
    Mutation$delete_all$delete_cuisines? delete_cuisines,
    Mutation$delete_all$delete_bridge_recipes_cuisines?
        delete_bridge_recipes_cuisines,
    Mutation$delete_all$delete_bridge_recipes_ingredients?
        delete_bridge_recipes_ingredients,
    Mutation$delete_all$delete_bridge_recipes_tags? delete_bridge_recipes_tags,
    Mutation$delete_all$delete_ingredient_family? delete_ingredient_family,
    Mutation$delete_all$delete_ingredients? delete_ingredients,
    Mutation$delete_all$delete_recipes? delete_recipes,
    Mutation$delete_all$delete_tags? delete_tags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$delete_all$delete_cuisines<TRes> get delete_cuisines =>
      CopyWith$Mutation$delete_all$delete_cuisines.stub(_res);
  CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes>
      get delete_bridge_recipes_cuisines =>
          CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines.stub(
              _res);
  CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes>
      get delete_bridge_recipes_ingredients =>
          CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients.stub(
              _res);
  CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes>
      get delete_bridge_recipes_tags =>
          CopyWith$Mutation$delete_all$delete_bridge_recipes_tags.stub(_res);
  CopyWith$Mutation$delete_all$delete_ingredient_family<TRes>
      get delete_ingredient_family =>
          CopyWith$Mutation$delete_all$delete_ingredient_family.stub(_res);
  CopyWith$Mutation$delete_all$delete_ingredients<TRes>
      get delete_ingredients =>
          CopyWith$Mutation$delete_all$delete_ingredients.stub(_res);
  CopyWith$Mutation$delete_all$delete_recipes<TRes> get delete_recipes =>
      CopyWith$Mutation$delete_all$delete_recipes.stub(_res);
  CopyWith$Mutation$delete_all$delete_tags<TRes> get delete_tags =>
      CopyWith$Mutation$delete_all$delete_tags.stub(_res);
}

const documentNodeMutationdelete_all = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'delete_all'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete_cuisines'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_bridge_recipes_cuisines'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_bridge_recipes_ingredients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_bridge_recipes_tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_ingredient_family'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_ingredients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_recipes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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
        name: NameNode(value: 'delete_tags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: []),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
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

class Mutation$delete_all$delete_cuisines {
  Mutation$delete_all$delete_cuisines({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_cuisines(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_cuisines
    on Mutation$delete_all$delete_cuisines {
  CopyWith$Mutation$delete_all$delete_cuisines<
          Mutation$delete_all$delete_cuisines>
      get copyWith => CopyWith$Mutation$delete_all$delete_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_cuisines<TRes> {
  factory CopyWith$Mutation$delete_all$delete_cuisines(
    Mutation$delete_all$delete_cuisines instance,
    TRes Function(Mutation$delete_all$delete_cuisines) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_cuisines;

  factory CopyWith$Mutation$delete_all$delete_cuisines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_cuisines;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_cuisines<TRes>
    implements CopyWith$Mutation$delete_all$delete_cuisines<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_cuisines(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_cuisines _instance;

  final TRes Function(Mutation$delete_all$delete_cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_cuisines(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_cuisines<TRes>
    implements CopyWith$Mutation$delete_all$delete_cuisines<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_cuisines(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_bridge_recipes_cuisines {
  Mutation$delete_all$delete_bridge_recipes_cuisines({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_bridge_recipes_cuisines.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_bridge_recipes_cuisines(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_bridge_recipes_cuisines) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_bridge_recipes_cuisines
    on Mutation$delete_all$delete_bridge_recipes_cuisines {
  CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<
          Mutation$delete_all$delete_bridge_recipes_cuisines>
      get copyWith =>
          CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<
    TRes> {
  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines(
    Mutation$delete_all$delete_bridge_recipes_cuisines instance,
    TRes Function(Mutation$delete_all$delete_bridge_recipes_cuisines) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_cuisines;

  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_cuisines;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes>
    implements
        CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_cuisines(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_bridge_recipes_cuisines _instance;

  final TRes Function(Mutation$delete_all$delete_bridge_recipes_cuisines) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_bridge_recipes_cuisines(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes>
    implements
        CopyWith$Mutation$delete_all$delete_bridge_recipes_cuisines<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_cuisines(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_bridge_recipes_ingredients {
  Mutation$delete_all$delete_bridge_recipes_ingredients({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_bridge_recipes_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_bridge_recipes_ingredients(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_bridge_recipes_ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_bridge_recipes_ingredients
    on Mutation$delete_all$delete_bridge_recipes_ingredients {
  CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<
          Mutation$delete_all$delete_bridge_recipes_ingredients>
      get copyWith =>
          CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<
    TRes> {
  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients(
    Mutation$delete_all$delete_bridge_recipes_ingredients instance,
    TRes Function(Mutation$delete_all$delete_bridge_recipes_ingredients) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_ingredients;

  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_ingredients;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes>
    implements
        CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_ingredients(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_bridge_recipes_ingredients _instance;

  final TRes Function(Mutation$delete_all$delete_bridge_recipes_ingredients)
      _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_bridge_recipes_ingredients(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_ingredients<
        TRes>
    implements
        CopyWith$Mutation$delete_all$delete_bridge_recipes_ingredients<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_ingredients(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_bridge_recipes_tags {
  Mutation$delete_all$delete_bridge_recipes_tags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_bridge_recipes_tags.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_bridge_recipes_tags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_bridge_recipes_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_bridge_recipes_tags
    on Mutation$delete_all$delete_bridge_recipes_tags {
  CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<
          Mutation$delete_all$delete_bridge_recipes_tags>
      get copyWith => CopyWith$Mutation$delete_all$delete_bridge_recipes_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes> {
  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_tags(
    Mutation$delete_all$delete_bridge_recipes_tags instance,
    TRes Function(Mutation$delete_all$delete_bridge_recipes_tags) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_tags;

  factory CopyWith$Mutation$delete_all$delete_bridge_recipes_tags.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_tags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_tags<TRes>
    implements CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_bridge_recipes_tags(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_bridge_recipes_tags _instance;

  final TRes Function(Mutation$delete_all$delete_bridge_recipes_tags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_bridge_recipes_tags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_tags<TRes>
    implements CopyWith$Mutation$delete_all$delete_bridge_recipes_tags<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_bridge_recipes_tags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_ingredient_family {
  Mutation$delete_all$delete_ingredient_family({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_ingredient_family.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_ingredient_family(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_ingredient_family) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_ingredient_family
    on Mutation$delete_all$delete_ingredient_family {
  CopyWith$Mutation$delete_all$delete_ingredient_family<
          Mutation$delete_all$delete_ingredient_family>
      get copyWith => CopyWith$Mutation$delete_all$delete_ingredient_family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_ingredient_family<TRes> {
  factory CopyWith$Mutation$delete_all$delete_ingredient_family(
    Mutation$delete_all$delete_ingredient_family instance,
    TRes Function(Mutation$delete_all$delete_ingredient_family) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_ingredient_family;

  factory CopyWith$Mutation$delete_all$delete_ingredient_family.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_ingredient_family;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_ingredient_family<TRes>
    implements CopyWith$Mutation$delete_all$delete_ingredient_family<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_ingredient_family(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_ingredient_family _instance;

  final TRes Function(Mutation$delete_all$delete_ingredient_family) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_ingredient_family(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_ingredient_family<TRes>
    implements CopyWith$Mutation$delete_all$delete_ingredient_family<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_ingredient_family(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_ingredients {
  Mutation$delete_all$delete_ingredients({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_ingredients.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_ingredients(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_ingredients) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_ingredients
    on Mutation$delete_all$delete_ingredients {
  CopyWith$Mutation$delete_all$delete_ingredients<
          Mutation$delete_all$delete_ingredients>
      get copyWith => CopyWith$Mutation$delete_all$delete_ingredients(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_ingredients<TRes> {
  factory CopyWith$Mutation$delete_all$delete_ingredients(
    Mutation$delete_all$delete_ingredients instance,
    TRes Function(Mutation$delete_all$delete_ingredients) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_ingredients;

  factory CopyWith$Mutation$delete_all$delete_ingredients.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_ingredients;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_ingredients<TRes>
    implements CopyWith$Mutation$delete_all$delete_ingredients<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_ingredients(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_ingredients _instance;

  final TRes Function(Mutation$delete_all$delete_ingredients) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_ingredients(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_ingredients<TRes>
    implements CopyWith$Mutation$delete_all$delete_ingredients<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_ingredients(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_recipes {
  Mutation$delete_all$delete_recipes({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_recipes.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_recipes(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_recipes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_recipes
    on Mutation$delete_all$delete_recipes {
  CopyWith$Mutation$delete_all$delete_recipes<
          Mutation$delete_all$delete_recipes>
      get copyWith => CopyWith$Mutation$delete_all$delete_recipes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_recipes<TRes> {
  factory CopyWith$Mutation$delete_all$delete_recipes(
    Mutation$delete_all$delete_recipes instance,
    TRes Function(Mutation$delete_all$delete_recipes) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_recipes;

  factory CopyWith$Mutation$delete_all$delete_recipes.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_recipes;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_recipes<TRes>
    implements CopyWith$Mutation$delete_all$delete_recipes<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_recipes(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_recipes _instance;

  final TRes Function(Mutation$delete_all$delete_recipes) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_recipes(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_recipes<TRes>
    implements CopyWith$Mutation$delete_all$delete_recipes<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_recipes(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$delete_all$delete_tags {
  Mutation$delete_all$delete_tags({
    required this.affected_rows,
    required this.$__typename,
  });

  factory Mutation$delete_all$delete_tags.fromJson(Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$delete_all$delete_tags(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$delete_all$delete_tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
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

extension UtilityExtension$Mutation$delete_all$delete_tags
    on Mutation$delete_all$delete_tags {
  CopyWith$Mutation$delete_all$delete_tags<Mutation$delete_all$delete_tags>
      get copyWith => CopyWith$Mutation$delete_all$delete_tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$delete_all$delete_tags<TRes> {
  factory CopyWith$Mutation$delete_all$delete_tags(
    Mutation$delete_all$delete_tags instance,
    TRes Function(Mutation$delete_all$delete_tags) then,
  ) = _CopyWithImpl$Mutation$delete_all$delete_tags;

  factory CopyWith$Mutation$delete_all$delete_tags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$delete_all$delete_tags;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$delete_all$delete_tags<TRes>
    implements CopyWith$Mutation$delete_all$delete_tags<TRes> {
  _CopyWithImpl$Mutation$delete_all$delete_tags(
    this._instance,
    this._then,
  );

  final Mutation$delete_all$delete_tags _instance;

  final TRes Function(Mutation$delete_all$delete_tags) _then;

  static const _undefined = {};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$delete_all$delete_tags(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$delete_all$delete_tags<TRes>
    implements CopyWith$Mutation$delete_all$delete_tags<TRes> {
  _CopyWithStubImpl$Mutation$delete_all$delete_tags(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}
