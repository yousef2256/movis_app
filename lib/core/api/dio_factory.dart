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
    }

    return dio!;
  }

  /// Sets authorization token after login
  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers['Authorization'] = 'Bearer $token';
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
