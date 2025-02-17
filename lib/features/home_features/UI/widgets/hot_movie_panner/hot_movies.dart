import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/widgets/app_button.dart';

import '../../../data/api/home_api_conestents.dart';
import '../../../data/models/movies_model.dart';

class HotMovies extends StatelessWidget {
  final List<MovieData?>? topRatedMovie;
  const HotMovies({super.key, required this.topRatedMovie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 450.h,
            width: double.infinity,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 8.0,
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                height: 230.h,
                imageUrl:
                    "${HomeApiConestents.imageBaseUrl}${topRatedMovie![7]!.posterPath}",
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Container(
            height: 500.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(134, 0, 0, 0),
                  Color.fromARGB(172, 0, 0, 0),
                  Color.fromARGB(255, 0, 0, 0),
                ],
              ),
            ),
          ),
          Positioned(
            top: 45.h,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[850]!.withOpacity(0.1),
                    spreadRadius: 20,
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  width: 240.w,
                  imageUrl:
                      "${HomeApiConestents.imageBaseUrl}${topRatedMovie?[7]!.posterPath}",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),

          // buttons
          Positioned(
            bottom: 35.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  text: "Play",
                  color: Colors.white,
                  textColor: Colors.black,
                  icon: Icons.play_arrow,
                  onTap: () {},
                ),
                horizontalSpace(20.w),
                AppButton(
                  text: "my list",
                  icon: Icons.add,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
