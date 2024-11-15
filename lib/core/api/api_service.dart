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
}
