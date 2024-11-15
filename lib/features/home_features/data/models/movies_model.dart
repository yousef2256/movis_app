import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required bool adult,
    required String backdropPath,
    required List<int> genreIds,
    required String originalLanguage,
    required String originalTitle, 
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class MoviesModel with _$MoviesModel {
  const factory MoviesModel({
    required List<Movie> movies,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) => _$MoviesModelFromJson(json);
}
