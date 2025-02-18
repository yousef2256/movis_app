import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/theme/app/color_conestents.dart';

class HotMovieShammer extends StatelessWidget {
  const HotMovieShammer({super.key});

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
          ),
          Container(
            height: 500.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Color.fromARGB(139, 0, 0, 0),
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
              child: Shimmer.fromColors(
                baseColor: AppColors.secondaryColor,
                highlightColor: AppColors.onSecondary,
                child: Container(
                  height: 240.h,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
