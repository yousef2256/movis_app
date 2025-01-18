import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/features/home_features/UI/widgets/top_rated_movie_list/top_rated_movie_item.dart';
import '../../../data/models/movies_model.dart';

class TopRatedMoviesList extends StatelessWidget {
  final List<MovieData?>? topRatedMoviesList;
  const TopRatedMoviesList({
    super.key,
    required this.topRatedMoviesList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemCount: topRatedMoviesList!.length,
        itemBuilder: (context, index) => TopRatedMovieItem(
          topRatedMovie: topRatedMoviesList![index],
        ),
      ),
    );
  }
}
