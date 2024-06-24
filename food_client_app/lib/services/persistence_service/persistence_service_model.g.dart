// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence_service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersistenceServiceModelShoppingListRecipeAdapter
    extends TypeAdapter<_$PersistenceServiceModelShoppingListRecipeImpl> {
  @override
  final int typeId = 1;

  @override
  _$PersistenceServiceModelShoppingListRecipeImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelShoppingListRecipeImpl(
      ingredients: (fields[0] as List)
          .cast<PersistenceServiceModelShoppingListIngredient>(),
      title: fields[1] as String,
      imagePath: fields[2] as Option<Uri>,
      servings: fields[3] as int,
      recipeId: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$PersistenceServiceModelShoppingListRecipeImpl obj) {
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
    extends TypeAdapter<_$PersistenceServiceModelShoppingListIngredientImpl> {
  @override
  final int typeId = 0;

  @override
  _$PersistenceServiceModelShoppingListIngredientImpl read(
      BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelShoppingListIngredientImpl(
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
      _$PersistenceServiceModelShoppingListIngredientImpl obj) {
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
        _$PersistenceServiceModelShoppingListIngredientFamilyImpl> {
  @override
  final int typeId = 2;

  @override
  _$PersistenceServiceModelShoppingListIngredientFamilyImpl read(
      BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelShoppingListIngredientFamilyImpl(
      id: fields[0] as String,
      type: fields[1] as String,
      iconPath: fields[2] as Option<String>,
      name: fields[3] as String,
      slug: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$PersistenceServiceModelShoppingListIngredientFamilyImpl obj) {
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
    extends TypeAdapter<_$PersistenceServiceModelSortingUnitImpl> {
  @override
  final int typeId = 3;

  @override
  _$PersistenceServiceModelSortingUnitImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelSortingUnitImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      sorting: (fields[2] as List).cast<PersistenceServiceModelSorting>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, _$PersistenceServiceModelSortingUnitImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.sorting);
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

class PersistenceServiceModelSortingAdapter
    extends TypeAdapter<_$PersistenceServiceModelSortingImpl> {
  @override
  final int typeId = 4;

  @override
  _$PersistenceServiceModelSortingImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelSortingImpl(
      ingredientFamilies:
          (fields[0] as List).cast<PersistenceServiceModelIngredientFamily>(),
      type: fields[1] as String,
      iconPathAsString: fields[2] as Option<String>,
      name: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$PersistenceServiceModelSortingImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.iconPathAsString)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(0)
      ..write(obj.ingredientFamilies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelSortingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelIngredientFamilyHelloFreshAdapter
    extends TypeAdapter<
        _$PersistenceServiceModelIngredientFamilyHellofreshImpl> {
  @override
  final int typeId = 7;

  @override
  _$PersistenceServiceModelIngredientFamilyHellofreshImpl read(
      BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelIngredientFamilyHellofreshImpl(
      helloFreshFamilyId: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer,
      _$PersistenceServiceModelIngredientFamilyHellofreshImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.helloFreshFamilyId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelIngredientFamilyHelloFreshAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelActiveSortingUnitAdapter
    extends TypeAdapter<_$PersistenceServiceModelActiveSortingUnitImpl> {
  @override
  final int typeId = 5;

  @override
  _$PersistenceServiceModelActiveSortingUnitImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelActiveSortingUnitImpl(
      activeSortingUnitId: fields[0] as String,
      customSortingIngredientIds: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(
      BinaryWriter writer, _$PersistenceServiceModelActiveSortingUnitImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.activeSortingUnitId)
      ..writeByte(1)
      ..write(obj.customSortingIngredientIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelActiveSortingUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelActiveSortingCustomAdapter
    extends TypeAdapter<_$PersistenceServiceModelActiveSortingCustomImpl> {
  @override
  final int typeId = 6;

  @override
  _$PersistenceServiceModelActiveSortingCustomImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelActiveSortingCustomImpl(
      customSortingIngredientIds: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer,
      _$PersistenceServiceModelActiveSortingCustomImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.customSortingIngredientIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelActiveSortingCustomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelHistoryRecipeAdapter
    extends TypeAdapter<_$PersistenceServiceModelHistoryRecipeImpl> {
  @override
  final int typeId = 8;

  @override
  _$PersistenceServiceModelHistoryRecipeImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PersistenceServiceModelHistoryRecipeImpl(
      recipeId: fields[0] as String,
      title: fields[1] as String,
      imagePath: fields[2] as Option<Uri>,
      origin: fields[3] as String,
      createdAt: fields[4] as String,
    );
  }

  @override
  void write(
      BinaryWriter writer, _$PersistenceServiceModelHistoryRecipeImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.recipeId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.imagePath)
      ..writeByte(3)
      ..write(obj.origin)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelHistoryRecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PersistenceServiceModelHistoryRecipeOriginClickedAdapter
    extends TypeAdapter<
        _$PersistenceServiceModelHistoryRecipeOriginClickedImpl> {
  @override
  final int typeId = 9;

  @override
  _$PersistenceServiceModelHistoryRecipeOriginClickedImpl read(
      BinaryReader reader) {
    return _$PersistenceServiceModelHistoryRecipeOriginClickedImpl();
  }

  @override
  void write(BinaryWriter writer,
      _$PersistenceServiceModelHistoryRecipeOriginClickedImpl obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersistenceServiceModelHistoryRecipeOriginClickedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersistenceServiceModelShoppingListRecipeImpl
    _$$PersistenceServiceModelShoppingListRecipeImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelShoppingListRecipeImpl(
          ingredients: (json['ingredients'] as List<dynamic>)
              .map((e) =>
                  PersistenceServiceModelShoppingListIngredient.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          title: json['title'] as String,
          imagePath: Option<Uri>.fromJson(json['imagePath']),
          servings: (json['servings'] as num).toInt(),
          recipeId: json['recipeId'] as String,
        );

Map<String, dynamic> _$$PersistenceServiceModelShoppingListRecipeImplToJson(
        _$PersistenceServiceModelShoppingListRecipeImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
      'title': instance.title,
      'imagePath': instance.imagePath.toJson(
        (value) => value.toString(),
      ),
      'servings': instance.servings,
      'recipeId': instance.recipeId,
    };

_$PersistenceServiceModelShoppingListIngredientImpl
    _$$PersistenceServiceModelShoppingListIngredientImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelShoppingListIngredientImpl(
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

Map<String, dynamic> _$$PersistenceServiceModelShoppingListIngredientImplToJson(
        _$PersistenceServiceModelShoppingListIngredientImpl instance) =>
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

_$PersistenceServiceModelShoppingListIngredientFamilyImpl
    _$$PersistenceServiceModelShoppingListIngredientFamilyImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelShoppingListIngredientFamilyImpl(
          id: json['id'] as String,
          type: json['type'] as String,
          iconPath: Option<String>.fromJson(json['iconPath']),
          name: json['name'] as String,
          slug: json['slug'] as String,
        );

Map<String,
    dynamic> _$$PersistenceServiceModelShoppingListIngredientFamilyImplToJson(
        _$PersistenceServiceModelShoppingListIngredientFamilyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'iconPath': instance.iconPath.toJson(
        (value) => value,
      ),
      'name': instance.name,
      'slug': instance.slug,
    };

_$PersistenceServiceModelSortingUnitImpl
    _$$PersistenceServiceModelSortingUnitImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelSortingUnitImpl(
          id: json['id'] as String,
          name: json['name'] as String,
          sorting: (json['sorting'] as List<dynamic>)
              .map((e) => PersistenceServiceModelSorting.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PersistenceServiceModelSortingUnitImplToJson(
        _$PersistenceServiceModelSortingUnitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sorting': instance.sorting,
    };

_$PersistenceServiceModelSortingImpl
    _$$PersistenceServiceModelSortingImplFromJson(Map<String, dynamic> json) =>
        _$PersistenceServiceModelSortingImpl(
          ingredientFamilies: (json['ingredientFamilies'] as List<dynamic>)
              .map((e) => PersistenceServiceModelIngredientFamily.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          type: json['type'] as String,
          iconPathAsString: Option<String>.fromJson(json['iconPathAsString']),
          name: json['name'] as String,
        );

Map<String, dynamic> _$$PersistenceServiceModelSortingImplToJson(
        _$PersistenceServiceModelSortingImpl instance) =>
    <String, dynamic>{
      'ingredientFamilies': instance.ingredientFamilies,
      'type': instance.type,
      'iconPathAsString': instance.iconPathAsString.toJson(
        (value) => value,
      ),
      'name': instance.name,
    };

_$PersistenceServiceModelIngredientFamilyHellofreshImpl
    _$$PersistenceServiceModelIngredientFamilyHellofreshImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelIngredientFamilyHellofreshImpl(
          helloFreshFamilyId: json['helloFreshFamilyId'] as String,
        );

Map<String, dynamic>
    _$$PersistenceServiceModelIngredientFamilyHellofreshImplToJson(
            _$PersistenceServiceModelIngredientFamilyHellofreshImpl instance) =>
        <String, dynamic>{
          'helloFreshFamilyId': instance.helloFreshFamilyId,
        };

_$PersistenceServiceModelActiveSortingUnitImpl
    _$$PersistenceServiceModelActiveSortingUnitImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelActiveSortingUnitImpl(
          activeSortingUnitId: json['activeSortingUnitId'] as String,
          customSortingIngredientIds:
              (json['customSortingIngredientIds'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PersistenceServiceModelActiveSortingUnitImplToJson(
        _$PersistenceServiceModelActiveSortingUnitImpl instance) =>
    <String, dynamic>{
      'activeSortingUnitId': instance.activeSortingUnitId,
      'customSortingIngredientIds': instance.customSortingIngredientIds,
      'runtimeType': instance.$type,
    };

_$PersistenceServiceModelActiveSortingCustomImpl
    _$$PersistenceServiceModelActiveSortingCustomImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelActiveSortingCustomImpl(
          customSortingIngredientIds:
              (json['customSortingIngredientIds'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PersistenceServiceModelActiveSortingCustomImplToJson(
        _$PersistenceServiceModelActiveSortingCustomImpl instance) =>
    <String, dynamic>{
      'customSortingIngredientIds': instance.customSortingIngredientIds,
      'runtimeType': instance.$type,
    };

_$PersistenceServiceModelHistoryRecipeOriginClickedImpl
    _$$PersistenceServiceModelHistoryRecipeOriginClickedImplFromJson(
            Map<String, dynamic> json) =>
        _$PersistenceServiceModelHistoryRecipeOriginClickedImpl();

Map<String, dynamic>
    _$$PersistenceServiceModelHistoryRecipeOriginClickedImplToJson(
            _$PersistenceServiceModelHistoryRecipeOriginClickedImpl instance) =>
        <String, dynamic>{};
