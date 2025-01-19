import 'package:flutter/material.dart';
import 'package:movis_app/features/home_features/UI/widgets/custome_home_app_bar.dart';
import 'package:movis_app/features/home_features/UI/widgets/hot_movies.dart';
import 'package:movis_app/features/home_features/UI/widgets/top_rated_movie_list/top_rated_movies_builder.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomeHomeAppBar(scrollController: _scrollController),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hot movies
            HotMovies(),

            // Top rated movies
            TopRatedMoviesBuilder(),

            // Top movies
            SizedBox(
              height: 500,
            ),
            // Categories
          ],
        ),
      ),
    );
  }
}
