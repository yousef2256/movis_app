import 'package:dio/dio.dart';
import 'package:movis_app/core/api/api_constents.dart';
import 'api_error_model.dart';

enum DataSource {
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  default_
}

class ResponseCode {
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int internalServerError = 500;
  static const int notFound = 404;
  static const int apiLogicError = 422;

  // Local status codes
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int default_ = -7;
}

class ResponseMessage {
  static const String noContent = ApiErrors.noContent;
  static const String badRequest = ApiErrors.badRequestError;
  static const String unauthorized = ApiErrors.unauthorizedError;
  static const String forbidden = ApiErrors.forbiddenError;
  static const String internalServerError = ApiErrors.internalServerError;
  static const String notFound = ApiErrors.notFoundError;

  // Local error messages
  static const String connectTimeout = ApiErrors.timeoutError;
  static const String cancel = ApiErrors.defaultError;
  static const String receiveTimeout = ApiErrors.timeoutError;
  static const String sendTimeout = ApiErrors.timeoutError;
  static const String cacheError = ApiErrors.cacheError;
  static const String noInternetConnection = ApiErrors.noInternetError;
  static const String default_ = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.noContent:
        return ApiErrorModel(
          code: ResponseCode.noContent,
          message: ResponseMessage.noContent,
        );
      case DataSource.badRequest:
        return ApiErrorModel(
          code: ResponseCode.badRequest,
          message: ResponseMessage.badRequest,
        );
      case DataSource.forbidden:
        return ApiErrorModel(
          code: ResponseCode.forbidden,
          message: ResponseMessage.forbidden,
        );
      case DataSource.unauthorized:
        return ApiErrorModel(
          code: ResponseCode.unauthorized,
          message: ResponseMessage.unauthorized,
        );
      case DataSource.notFound:
        return ApiErrorModel(
          code: ResponseCode.notFound,
          message: ResponseMessage.notFound,
        );
      case DataSource.internalServerError:
        return ApiErrorModel(
          code: ResponseCode.internalServerError,
          message: ResponseMessage.internalServerError,
        );
      case DataSource.connectTimeout:
        return ApiErrorModel(
          code: ResponseCode.connectTimeout,
          message: ResponseMessage.connectTimeout,
        );
      case DataSource.cancel:
        return ApiErrorModel(
          code: ResponseCode.cancel,
          message: ResponseMessage.cancel,
        );
      case DataSource.receiveTimeout:
        return ApiErrorModel(
          code: ResponseCode.receiveTimeout,
          message: ResponseMessage.receiveTimeout,
        );
      case DataSource.sendTimeout:
        return ApiErrorModel(
          code: ResponseCode.sendTimeout,
          message: ResponseMessage.sendTimeout,
        );
      case DataSource.cacheError:
        return ApiErrorModel(
          code: ResponseCode.cacheError,
          message: ResponseMessage.cacheError,
        );
      case DataSource.noInternetConnection:
        return ApiErrorModel(
          code: ResponseCode.noInternetConnection,
          message: ResponseMessage.noInternetConnection,
        );
      case DataSource.default_:
        return ApiErrorModel(
          code: ResponseCode.default_,
          message: ResponseMessage.default_,
        );
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel? apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    apiErrorModel = error is DioException
        ? _handleError(error)
        : DataSource.default_.getFailure();
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      }
      return DataSource.default_.getFailure();
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
    case DioExceptionType.badCertificate:
      return DataSource.default_.getFailure();
  }
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
