import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Mutation$CreateRecipes {
  factory Variables$Mutation$CreateRecipes({
    required List<Input$ingredient_family_insert_input> families,
    required List<Input$ingredients_insert_input> ingredients,
  }) =>
      Variables$Mutation$CreateRecipes._({
        r'families': families,
        r'ingredients': ingredients,
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
    return Variables$Mutation$CreateRecipes._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ingredient_family_insert_input> get families =>
      (_$data['families'] as List<Input$ingredient_family_insert_input>);
  List<Input$ingredients_insert_input> get ingredients =>
      (_$data['ingredients'] as List<Input$ingredients_insert_input>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$families = families;
    result$data['families'] = l$families.map((e) => e.toJson()).toList();
    final l$ingredients = ingredients;
    result$data['ingredients'] = l$ingredients.map((e) => e.toJson()).toList();
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
    return true;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$ingredients = ingredients;
    return Object.hashAll([
      Object.hashAll(l$families.map((v) => v)),
      Object.hashAll(l$ingredients.map((v) => v)),
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
  }) =>
      _then(Variables$Mutation$CreateRecipes._({
        ..._instance._$data,
        if (families != _undefined && families != null)
          'families': (families as List<Input$ingredient_family_insert_input>),
        if (ingredients != _undefined && ingredients != null)
          'ingredients': (ingredients as List<Input$ingredients_insert_input>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateRecipes<TRes>
    implements CopyWith$Variables$Mutation$CreateRecipes<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateRecipes(this._res);

  TRes _res;

  call({
    List<Input$ingredient_family_insert_input>? families,
    List<Input$ingredients_insert_input>? ingredients,
  }) =>
      _res;
}

class Mutation$CreateRecipes {
  Mutation$CreateRecipes({
    this.insert_ingredient_family,
    this.insert_ingredients,
    required this.$__typename,
  });

  factory Mutation$CreateRecipes.fromJson(Map<String, dynamic> json) {
    final l$insert_ingredient_family = json['insert_ingredient_family'];
    final l$insert_ingredients = json['insert_ingredients'];
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
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateRecipes$insert_ingredient_family?
      insert_ingredient_family;

  final Mutation$CreateRecipes$insert_ingredients? insert_ingredients;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_ingredient_family = insert_ingredient_family;
    _resultData['insert_ingredient_family'] =
        l$insert_ingredient_family?.toJson();
    final l$insert_ingredients = insert_ingredients;
    _resultData['insert_ingredients'] = l$insert_ingredients?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_ingredient_family = insert_ingredient_family;
    final l$insert_ingredients = insert_ingredients;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_ingredient_family,
      l$insert_ingredients,
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
    String? $__typename,
  });
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes>
      get insert_ingredient_family;
  CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes>
      get insert_ingredients;
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
}

class _CopyWithStubImpl$Mutation$CreateRecipes<TRes>
    implements CopyWith$Mutation$CreateRecipes<TRes> {
  _CopyWithStubImpl$Mutation$CreateRecipes(this._res);

  TRes _res;

  call({
    Mutation$CreateRecipes$insert_ingredient_family? insert_ingredient_family,
    Mutation$CreateRecipes$insert_ingredients? insert_ingredients,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateRecipes$insert_ingredient_family<TRes>
      get insert_ingredient_family =>
          CopyWith$Mutation$CreateRecipes$insert_ingredient_family.stub(_res);
  CopyWith$Mutation$CreateRecipes$insert_ingredients<TRes>
      get insert_ingredients =>
          CopyWith$Mutation$CreateRecipes$insert_ingredients.stub(_res);
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
        name: NameNode(value: 'insert_ingredients'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'ingredients')),
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
