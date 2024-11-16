//https://api.themoviedb.org/3/movie/popular?api_key=7396ab674b8a57110d3a0568697788b4

class ApiConstents {
  // Base URL for all API requests
  static const String apiBaseUrl = 'https://api.themoviedb.org/3';

  // The API key should not be hardcoded in the source code
  static const String apiKey = '7396ab674b8a57110d3a0568697788b4';

  // Endpoints
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String movieDetails = '/movie/{movie_id}';
  static const String searchMovies = '/search/movie';
  static const String movieGenres = '/genre/movie/list';

  // Full URL for each endpoint
  static String getPopularMoviesUrl() =>
      '$apiBaseUrl$popularMovies?api_key=$apiKey';
  static String getTopRatedMoviesUrl() =>
      '$apiBaseUrl$topRatedMovies?api_key=$apiKey';
  static String getMovieDetailsUrl(int movieId) =>
      '$apiBaseUrl$movieDetails?api_key=$apiKey&movie_id=$movieId';
  static String getSearchMoviesUrl(String query) =>
      '$apiBaseUrl$searchMovies?api_key=$apiKey&query=$query';
  static String getMovieGenresUrl() =>
      '$apiBaseUrl$movieGenres?api_key=$apiKey';
}

// lib/api_error_strings.dart

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}


