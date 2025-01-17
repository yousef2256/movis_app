import 'package:json_annotation/json_annotation.dart';

part 'movies_model.g.dart';

@JsonSerializable()
class MoviesResponseModel {
  @JsonKey(name: 'results')
  final List<MovieData?>? moviesList;

  MoviesResponseModel({required this.moviesList});

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);
}

@JsonSerializable()
class MovieData {
  final int? id;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  final String? title;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  MovieData({
    required this.id,
    required this.backdropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) =>
      _$MovieDataFromJson(json);
}
