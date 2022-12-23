// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence_service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersistenceServiceModelShoppingListRecipeAdapter
    extends TypeAdapter<_$_PersistenceServiceModelShoppingListRecipe> {
  @override
  final int typeId = 1;

  @override
  _$_PersistenceServiceModelShoppingListRecipe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PersistenceServiceModelShoppingListRecipe(
      ingredients: (fields[0] as List)
          .cast<PersistenceServiceModelShoppingListIngredient>(),
      title: fields[1] as String,
      imagePath: fields[2] as Option<Uri>,
      servings: fields[3] as int,
      recipeId: fields[4] as String,
    );
  }

  @override
  void write(
      BinaryWriter writer, _$_PersistenceServiceModelShoppingListRecipe obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.imagePath)
      ..writeByte(3)
      ..write(obj.servings)
      ..writeByte(4)
      ..write(obj.recipeId)
      ..writeByte(0)
      ..write(obj.ingredients);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelShoppingListRecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelShoppingListIngredientAdapter
    extends TypeAdapter<_$_PersistenceServiceModelShoppingListIngredient> {
  @override
  final int typeId = 0;

  @override
  _$_PersistenceServiceModelShoppingListIngredient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PersistenceServiceModelShoppingListIngredient(
      ingredientId: fields[0] as String,
      isTickedOff: fields[1] as bool,
      imageUrl: fields[3] as Option<Uri>,
      slug: fields[4] as String,
      displayedName: fields[5] as String,
      amount: fields[6] as Option<double>,
      unit: fields[7] as Option<String>,
      family: fields[8]
          as Option<PersistenceServiceModelShoppingListIngredientFamily>,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$_PersistenceServiceModelShoppingListIngredient obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.ingredientId)
      ..writeByte(1)
      ..write(obj.isTickedOff)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.slug)
      ..writeByte(5)
      ..write(obj.displayedName)
      ..writeByte(6)
      ..write(obj.amount)
      ..writeByte(7)
      ..write(obj.unit)
      ..writeByte(8)
      ..write(obj.family);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelShoppingListIngredientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelShoppingListIngredientFamilyAdapter
    extends TypeAdapter<
        _$_PersistenceServiceModelShoppingListIngredientFamily> {
  @override
  final int typeId = 2;

  @override
  _$_PersistenceServiceModelShoppingListIngredientFamily read(
      BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PersistenceServiceModelShoppingListIngredientFamily(
      id: fields[0] as String,
      type: fields[1] as String,
      iconPath: fields[2] as Option<String>,
      name: fields[3] as String,
      slug: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$_PersistenceServiceModelShoppingListIngredientFamily obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.iconPath)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.slug);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelShoppingListIngredientFamilyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelSortingUnitAdapter
    extends TypeAdapter<_$_PersistenceServiceModelSortingUnit> {
  @override
  final int typeId = 3;

  @override
  _$_PersistenceServiceModelSortingUnit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PersistenceServiceModelSortingUnit(
      id: fields[0] as String,
      name: fields[1] as String,
      families: (fields[2] as List)
          .cast<PersistenceServiceModelSortingUnitIngredientFamily>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_PersistenceServiceModelSortingUnit obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.families);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelSortingUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelSortingUnitIngredientFamilyAdapter
    extends TypeAdapter<_$_PersistenceServiceModelSortingUnitIngredientFamily> {
  @override
  final int typeId = 4;

  @override
  _$_PersistenceServiceModelSortingUnitIngredientFamily read(
      BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PersistenceServiceModelSortingUnitIngredientFamily(
      id: fields[0] as String,
      type: fields[1] as String,
      iconPath: fields[2] as Option<String>,
      name: fields[3] as String,
      slug: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$_PersistenceServiceModelSortingUnitIngredientFamily obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.iconPath)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.slug);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelSortingUnitIngredientFamilyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersistenceServiceModelShoppingListRecipe
    _$$_PersistenceServiceModelShoppingListRecipeFromJson(
            Map<String, dynamic> json) =>
        _$_PersistenceServiceModelShoppingListRecipe(
          ingredients: (json['ingredients'] as List<dynamic>)
              .map((e) =>
                  PersistenceServiceModelShoppingListIngredient.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          title: json['title'] as String,
          imagePath: Option<Uri>.fromJson(json['imagePath']),
          servings: json['servings'] as int,
          recipeId: json['recipeId'] as String,
        );

Map<String, dynamic> _$$_PersistenceServiceModelShoppingListRecipeToJson(
        _$_PersistenceServiceModelShoppingListRecipe instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'title': instance.title,
      'imagePath': instance.imagePath.toJson(
        (value) => value.toString(),
      ),
      'servings': instance.servings,
      'recipeId': instance.recipeId,
    };

_$_PersistenceServiceModelShoppingListIngredient
    _$$_PersistenceServiceModelShoppingListIngredientFromJson(
            Map<String, dynamic> json) =>
        _$_PersistenceServiceModelShoppingListIngredient(
          ingredientId: json['ingredientId'] as String,
          isTickedOff: json['isTickedOff'] as bool,
          imageUrl: Option<Uri>.fromJson(json['imageUrl']),
          slug: json['slug'] as String,
          displayedName: json['displayedName'] as String,
          amount: Option<double>.fromJson(json['amount']),
          unit: Option<String>.fromJson(json['unit']),
          family: Option<
                  PersistenceServiceModelShoppingListIngredientFamily>.fromJson(
              json['family']),
        );

Map<String, dynamic> _$$_PersistenceServiceModelShoppingListIngredientToJson(
        _$_PersistenceServiceModelShoppingListIngredient instance) =>
    <String, dynamic>{
      'ingredientId': instance.ingredientId,
      'isTickedOff': instance.isTickedOff,
      'imageUrl': instance.imageUrl.toJson(
        (value) => value.toString(),
      ),
      'slug': instance.slug,
      'displayedName': instance.displayedName,
      'amount': instance.amount.toJson(
        (value) => value,
      ),
      'unit': instance.unit.toJson(
        (value) => value,
      ),
      'family': instance.family.toJson(
        (value) => value,
      ),
    };

_$_PersistenceServiceModelShoppingListIngredientFamily
    _$$_PersistenceServiceModelShoppingListIngredientFamilyFromJson(
            Map<String, dynamic> json) =>
        _$_PersistenceServiceModelShoppingListIngredientFamily(
          id: json['id'] as String,
          type: json['type'] as String,
          iconPath: Option<String>.fromJson(json['iconPath']),
          name: json['name'] as String,
          slug: json['slug'] as String,
        );

Map<String, dynamic>
    _$$_PersistenceServiceModelShoppingListIngredientFamilyToJson(
            _$_PersistenceServiceModelShoppingListIngredientFamily instance) =>
        <String, dynamic>{
          'id': instance.id,
          'type': instance.type,
          'iconPath': instance.iconPath.toJson(
            (value) => value,
          ),
          'name': instance.name,
          'slug': instance.slug,
        };

_$_PersistenceServiceModelSortingUnit
    _$$_PersistenceServiceModelSortingUnitFromJson(Map<String, dynamic> json) =>
        _$_PersistenceServiceModelSortingUnit(
          id: json['id'] as String,
          name: json['name'] as String,
          families: (json['families'] as List<dynamic>)
              .map((e) =>
                  PersistenceServiceModelSortingUnitIngredientFamily.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_PersistenceServiceModelSortingUnitToJson(
        _$_PersistenceServiceModelSortingUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'families': instance.families,
    };

_$_PersistenceServiceModelSortingUnitIngredientFamily
    _$$_PersistenceServiceModelSortingUnitIngredientFamilyFromJson(
            Map<String, dynamic> json) =>
        _$_PersistenceServiceModelSortingUnitIngredientFamily(
          id: json['id'] as String,
          type: json['type'] as String,
          iconPath: Option<String>.fromJson(json['iconPath']),
          name: json['name'] as String,
          slug: json['slug'] as String,
        );

Map<String, dynamic>
    _$$_PersistenceServiceModelSortingUnitIngredientFamilyToJson(
            _$_PersistenceServiceModelSortingUnitIngredientFamily instance) =>
        <String, dynamic>{
          'id': instance.id,
          'type': instance.type,
          'iconPath': instance.iconPath.toJson(
            (value) => value,
          ),
          'name': instance.name,
          'slug': instance.slug,
        };
