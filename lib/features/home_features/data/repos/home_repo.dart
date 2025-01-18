import 'package:movis_app/core/api/api_result.dart';
import 'package:movis_app/features/home_features/data/api/home_api_service.dart';
import 'package:movis_app/features/home_features/data/models/movies_model.dart';
import '../../../../core/api/api_error_handler.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<MoviesResponseModel>> getTopTrindMovies() async {
    try {
      final response = await _homeApiService.getTopRatedMovies();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
