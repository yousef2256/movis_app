import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movis_app/core/utils/constens/images.dart';
import 'package:movis_app/features/home_features/UI/widgets/hot_movies.dart';
import 'package:movis_app/features/home_features/UI/widgets/top_rated_movie_list/top_rated_movies_builder.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.center,
          child: Image.asset(
            ImagePath.logoImage2,
            height: 25.h,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //hot movies
            const HotMovies(),

            //new movies
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Top Rated Movies',
                style: TextStyle(fontSize: 18.sp),
              ),
            ),

            const TopRatedMoviesBuilder(),

            //top movies

            //categoriess

            //
          ],
        ),
      ),
    );
  }
}
