import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/theme/app/color_conestents.dart';
import 'package:shimmer/shimmer.dart';

class TopMoviesShimmerLoading extends StatelessWidget {
  const TopMoviesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: 6,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: AppColors.secondaryColor,
          highlightColor: AppColors.onSecondary,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
