import 'package:dio/dio.dart';
import 'package:movis_app/features/home_features/data/api/home_api_conestents.dart';
import 'package:movis_app/features/home_features/data/models/catigores_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/api/api_constents.dart';
import '../models/movies_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstents.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  // get top rated movies
  @GET(HomeApiConestents.topRatedEP)
  Future<MoviesResponseModel> getTopRatedMovies();

  // categories List endpoint
  @GET(HomeApiConestents.tvShowsEP)
  Future<CategoriesListModel> getCategoriesList();
}
