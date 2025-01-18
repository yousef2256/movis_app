import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/features/home_features/UI/widgets/top_rated_movie_list/top_movies_shimmer_loading.dart';
import 'package:movis_app/features/home_features/UI/widgets/top_rated_movie_list/top_rated_movies_list.dart';
import 'package:movis_app/features/home_features/logic/home_cubit.dart';
import 'package:movis_app/features/home_features/logic/home_state.dart';
import '../../../../../core/helpers/spaser.dart';

class TopRatedMoviesBuilder extends StatelessWidget {
  const TopRatedMoviesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Top Rated Movies',
            style: TextStyle(fontSize: 18.sp),
          ),
        ),
        verticalSpace(10),
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is TopRatedMoviesLoading ||
              current is TopRatedMoviesSuccess ||
              current is TopRatedMoviesFaliure,
          builder: (context, state) => state.maybeWhen(
            topRatedMoviesLoading: () => const TopMoviesShimmerLoading(),
            topRatedMoviesSuccess: (moviesDataList) {
              var moviesList = moviesDataList;
              return TopRatedMoviesList(
                topRatedMoviesList: moviesList,
              );
            },
            topRatedMoviesFaliure: (errorHandler) => const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
