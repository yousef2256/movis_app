// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catigores_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesListModel _$CategoriesListModelFromJson(Map<String, dynamic> json) =>
    CategoriesListModel(
      catigoriesList: (json['genres'] as List<dynamic>)
          .map((e) => MoviesCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesListModelToJson(
        CategoriesListModel instance) =>
    <String, dynamic>{
      'genres': instance.catigoriesList,
    };

MoviesCategories _$MoviesCategoriesFromJson(Map<String, dynamic> json) =>
    MoviesCategories(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MoviesCategoriesToJson(MoviesCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
