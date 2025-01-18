import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../data/api/home_api_conestents.dart';
import '../../../data/models/movies_model.dart';

class TopRatedMovieItem extends StatelessWidget {
  final MovieData? topRatedMovie;
  const TopRatedMovieItem({super.key, required this.topRatedMovie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CachedNetworkImage(
        imageUrl:
            "${HomeApiConestents.imageBaseUrl}${topRatedMovie?.posterPath}",
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
