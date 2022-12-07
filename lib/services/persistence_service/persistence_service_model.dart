import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'persistence_service_model.freezed.dart';
part 'persistence_service_model.g.dart';

@freezed
class PersistenceServiceModel with _$PersistenceServiceModel {
  const factory PersistenceServiceModel({
    required final List<PersistenceServiceModelShoppingListIngredient>
        ingredients,
  }) = _PersistenceServiceModel;
}

@freezed
class PersistenceServiceModelShoppingListIngredient
    with _$PersistenceServiceModelShoppingListIngredient {
  @HiveType(
      typeId: 0,
      adapterName: 'PersistenceServiceModelShoppingListIngredientAdapter',)
  const factory PersistenceServiceModelShoppingListIngredient({
    @HiveField(0) required final String id,
    @HiveField(1) required final bool isTickedOff,
    @HiveField(2) required final String recipeId,
    @HiveField(3) required final Option<Uri> imageUrl,
    @HiveField(4) required final String slug,
    @HiveField(5) required final String displayedName,
    @HiveField(6) required final Option<double> amount,
    @HiveField(7) required final Option<String> unit,
  }) = _PersistenceServiceModelShoppingListIngredient;

  factory PersistenceServiceModelShoppingListIngredient.fromJson(
          final Map<String, dynamic> json,) =>
      _$PersistenceServiceModelShoppingListIngredientFromJson(json);
}
