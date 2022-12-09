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
      recipeId: fields[2] as String,
      servings: fields[7] as int,
    );
  }

  @override
  void write(
      BinaryWriter writer, _$_PersistenceServiceModelShoppingListRecipe obj) {
    writer
      ..writeByte(3)
      ..writeByte(2)
      ..write(obj.recipeId)
      ..writeByte(7)
      ..write(obj.servings)
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
    );
  }

  @override
  void write(BinaryWriter writer,
      _$_PersistenceServiceModelShoppingListIngredient obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.unit);
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
          recipeId: json['recipeId'] as String,
          servings: json['servings'] as int,
        );

Map<String, dynamic> _$$_PersistenceServiceModelShoppingListRecipeToJson(
        _$_PersistenceServiceModelShoppingListRecipe instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'recipeId': instance.recipeId,
      'servings': instance.servings,
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
    };
