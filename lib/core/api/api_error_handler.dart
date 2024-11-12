// lib/api_error_handler.dart
import 'package:movis_app/core/api/api_constents.dart';

class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() {
    return 'ApiException: $message (Status Code: $statusCode)';
  }
}

class ApiErrorHandler {
  // Handles HTTP errors based on status code
  static ApiException handleStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return ApiException(ApiError.badRequest, statusCode: statusCode);
      case 401:
        return ApiException(ApiError.unauthorized, statusCode: statusCode);
      case 403:
        return ApiException(ApiError.forbidden, statusCode: statusCode);
      case 404:
        return ApiException(ApiError.notFound, statusCode: statusCode);
      case 500:
        return ApiException(ApiError.internalServerError,
            statusCode: statusCode);
      case 503:
        return ApiException(ApiError.serviceUnavailable,
            statusCode: statusCode);
      default:
        return ApiException(ApiError.unexpectedError, statusCode: statusCode);
    }
  }

  // Handles generic errors (e.g., no network connection)
  static ApiException handleGenericError(dynamic error) {
    // Add logging here
    // Add more specific error type checking
    return ApiException(ApiError.networkError);
  }
}
