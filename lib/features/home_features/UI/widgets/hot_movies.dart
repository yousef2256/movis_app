import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/helpers/spaser.dart';
import 'package:movis_app/core/widgets/app_button.dart';

class HotMovies extends StatelessWidget {
  const HotMovies({super.key});

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
              child: Image.asset(
                fit: BoxFit.fill,
                // width: double.infinity,
                'assets/movies_images/crown.jpg',
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  width: 240.w,
                  'assets/movies_images/crown.jpg',
                ),
              ),
            ),
          ),
          //gredient container
          Positioned(
            bottom: 25.h,
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
