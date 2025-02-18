import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/api/home_api_conestents.dart';
import '../../../data/models/movies_model.dart';

class TopRatedMovieItem extends StatelessWidget {
  final MovieData? topRatedMovie;
  const TopRatedMovieItem({super.key, required this.topRatedMovie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// TODO: navigate to movie details screen with hero animation
        print("navigate to movie details screen with hero animation");
      },
      child: SizedBox(
        height: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            height: 230.h,
            imageUrl:
                "${HomeApiConestents.imageBaseUrl}${topRatedMovie?.posterPath}",
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
