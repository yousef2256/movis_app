import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constents.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstents.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Fetch popular movies
  // https://api.themoviedb.org/3/movie/popular
  @GET(ApiConstents.popularMovies)
  Future<HttpResponse<dynamic>> getPopularMovies({
    @Query('api_key') required String apiKey,
    @Query('page') int page = 1,
  });

  // Fetch top-rated movies
  // https://api.themoviedb.org/3/movie/top_rated
  @GET(ApiConstents.topRatedMovies)
  Future<HttpResponse<dynamic>> getTopRatedMovies({
    @Query('api_key') required String apiKey,
    @Query('page') int page = 1,
  });

  // Fetch movie details by ID
  // https://api.themoviedb.org/3/movie/{movie_id}
  @GET(ApiConstents.movieDetails)
  Future<HttpResponse<dynamic>> getMovieDetails({
    @Path('movie_id') required int movieId,
    @Query('api_key') required String apiKey,
  });

  // Search for movies by query
  // https://api.themoviedb.org/3/search/movie
  @GET(ApiConstents.searchMovies)
  Future<HttpResponse<dynamic>> searchMovies({
    @Query('api_key') required String apiKey,
    @Query('query') required String query,
    @Query('page') int page = 1,
  });

  // Fetch list of movie genres
  // https://api.themoviedb.org/3/genre/movie/list
  @GET(ApiConstents.movieGenres)
  Future<HttpResponse<dynamic>> getMovieGenres({
    @Query('api_key') required String apiKey,
  });
}