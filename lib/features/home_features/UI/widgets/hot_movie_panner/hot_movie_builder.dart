import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movis_app/features/home_features/UI/widgets/hot_movie_panner/hot_movie_shammer.dart';
import 'package:movis_app/features/home_features/UI/widgets/hot_movie_panner/hot_movies.dart';
import 'package:movis_app/features/home_features/logic/home_cubit.dart';
import 'package:movis_app/features/home_features/logic/home_state.dart';

class HotMovieBuilder extends StatelessWidget {
  const HotMovieBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is TopRatedMoviesLoading ||
          current is TopRatedMoviesSuccess ||
          current is TopRatedMoviesFaliure,
      builder: (context, state) => state.maybeWhen(
        topRatedMoviesLoading: () => const HotMovieShammer(),
        topRatedMoviesSuccess: (moviesDataList) {
          var moviesList = moviesDataList;
          return HotMovies(topRatedMovie: moviesList);
        },
        topRatedMoviesFaliure: (errorHandler) => const SizedBox.shrink(),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
