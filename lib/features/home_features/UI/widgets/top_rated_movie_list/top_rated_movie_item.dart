import 'package:flutter/material.dart';
import '../../../data/models/movies_model.dart';

class TopRatedMovieItem extends StatelessWidget {
  final MovieData? topRatedMovie; 
  const TopRatedMovieItem({super.key,required this.topRatedMovie});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.network(
            topRatedMovie?.posterPath ?? '',
            fit: BoxFit.cover,
          ),
        );
  }
}