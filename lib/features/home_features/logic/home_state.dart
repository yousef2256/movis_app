import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movis_app/core/api/api_error_handler.dart';
import '../data/models/movies_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  // 1. initial state
  const factory HomeState.initial() = _Initial;

  // top rated movoes
  const factory HomeState.topRatedMoviesLoading() = TopRatedMoviesLoading;
  const factory HomeState.topRatedMoviesSuccess(List<MovieData?>? moviesList) = TopRatedMoviesSuccess;
  const factory HomeState.topRatedMoviesFaliure(ErrorHandler errorHandler) = TopRatedMoviesFaliure;
}
