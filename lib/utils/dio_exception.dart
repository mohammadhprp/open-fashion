import 'package:dio/dio.dart';

import '../constants/app/app_errors.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = AppErrors.cancelBySever;
        break;
      case DioErrorType.connectionTimeout:
        message = AppErrors.connectTimeout;
        break;
      case DioErrorType.unknown:
        message = AppErrors.server;
        break;
      case DioErrorType.receiveTimeout:
        message = AppErrors.receiveTimeout;
        break;
      case DioErrorType.badResponse:
        message = _handleError(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
        break;
      case DioErrorType.sendTimeout:
        message = AppErrors.sendTimeout;
        break;
      default:
        message = AppErrors.someThingWentWrong;
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    String? message = error['message']?.toString();

    bool withoutErrorMessage = message == null ||
        message.isNotEmpty ||
        message == AppErrors.errorMessage;

    switch (statusCode) {
      case 400:
        return withoutErrorMessage ? AppErrors.e400 : message;
      case 401:
        return withoutErrorMessage ? AppErrors.e401 : message;
      case 403:
        return withoutErrorMessage ? AppErrors.e403 : message;
      case 404:
        return withoutErrorMessage ? AppErrors.e404 : message;
      case 422:
        return withoutErrorMessage ? AppErrors.e422 : message;
      case 500:
        return withoutErrorMessage ? AppErrors.server : message;
      default:
        return AppErrors.someThingWentWrong;
    }
  }

  @override
  String toString() => message;
}
