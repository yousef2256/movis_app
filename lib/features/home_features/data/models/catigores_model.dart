import 'package:json_annotation/json_annotation.dart';

part 'catigores_model.g.dart';

@JsonSerializable()
class CategoriesListModel {
  @JsonKey(name: 'genres')
  List<MoviesCategories> catigoriesList;
  CategoriesListModel({required this.catigoriesList});

  factory CategoriesListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesListModelFromJson(json);
}

@JsonSerializable()
class MoviesCategories {
  final int? id;
  final String? name;

  MoviesCategories({this.name, required this.id});

  factory MoviesCategories.fromJson(Map<String, dynamic> json) =>
      _$MoviesCategoriesFromJson(json);
}
