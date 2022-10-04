import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.other:
        message = "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        message = _handleError(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = 'مشکلی پیش آمد!';
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'خطای درخواست اشتباه ';
      case 401:
        return error["message"];
      case 404:
        return error["message"];
      case 422:
        return error["message"];
      case 500:
        return 'خطای سرور!';
      default:
        return 'مشکلی پیش آمد!';
    }
  }

  @override
  String toString() => message;
}
