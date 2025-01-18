import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis_app/features/home_features/data/repos/home_repo.dart';
import 'package:movis_app/features/home_features/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  final HomeRepo homeRepo;

  // 1- get now playing movies
  void getNowPlayingMovies() async {
    emit(const HomeState.topRatedMoviesLoading());
    final response = await homeRepo.getTopTrindMovies();
    response.when(success: (moviesList) {
      emit(HomeState.topRatedMoviesSuccess(moviesList.moviesList ?? []));
    }, failure: (errorHandler) {
      emit(HomeState.topRatedMoviesFaliure(errorHandler));
    });
  }
}
