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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //hot movies
            HotMovies(),
        
            // top rated movies
            TopRatedMoviesBuilder(),
        
            //top movies
            SizedBox(
              height: 500,
            )
            //categoriess
        
            //
          ],
        ),
      ),
    );
  }
}
