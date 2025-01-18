import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_constents.dart';

class DioFactory {
  /// Private constructor to prevent external instantiation
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    const Duration timeOut = Duration(seconds: 30);

    /// Initialize Dio instance
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.baseUrl = ApiConstents.apiBaseUrl
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addDioHeaders();
    }
    return dio!;
  }

  static void addDioHeaders() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3Mzk2YWI2NzRiOGE1NzExMGQzYTA1Njg2OTc3ODhiNCIsIm5iZiI6MTczMTMzNzgzNy4yMDcsInN1YiI6IjY3MzIxZTZkNzY1ZDZkYjE3OGFiMjExZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.EpkatNc0bnQiFZrUzcLo2dtaInYlORvkIlzN96KW0bo',
    };
  }

  /// Adds logging interceptor
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }
}
