// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

import '../constants/url.dart';
import '../utils/dio_exception.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class HttpService {
  final logger = Logger();
  Dio? _dio;

  static header() => {
        "Accept": "application/json",
        "Content-Type": "application/json",
      };

  Future<HttpService> init() async {
    _dio = Dio(BaseOptions(baseUrl: Url.url, headers: header()));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    const storage = FlutterSecureStorage();
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) async {
          String? token = await storage.read(key: 'token');
          if (token != null) {
            requestOptions.headers['Authorization'] = "Bearer $token";
          }
          if (kDebugMode) {
            logger.i(
              "REQUEST[${requestOptions.method}] => PATH: ${requestOptions.path}"
              "=> REQUEST VALUES: ${requestOptions.queryParameters} => HEADERS: ${requestOptions.headers}",
            );
          }
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          if (kDebugMode) {
            logger.wtf(
              "RESPONSE[${response.statusCode}] => DATA: ${response.data}",
            );
          }
          return handler.next(response);
        },
        onError: (err, handler) async {
          if (kDebugMode) {
            logger.e(
              "Error[${err.response!.statusCode}] => MESSAGE: ${err.response!.data}",
            );
          }
          if (err.response!.statusCode == 401) {
            logout();
          }
          return handler.next(err);
        },
      ),
    );
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    dynamic params,
  }) async {
    Response response;

    try {
      switch (method) {
        case Method.POST:
          response = await _dio!.post(url, data: params);
          break;
        case Method.DELETE:
          response = await _dio!.delete(url);
          break;
        case Method.PATCH:
          response = await _dio!.patch(url, data: params);
          break;
        case Method.PUT:
          response = await _dio!.put(url, data: params);
          break;
        case Method.GET:
          response = await _dio!.get(url, queryParameters: params);
          break;
      }
      switch (response.statusCode) {
        case 200:
        case 201:
        case 204:
          return response;
        default:
          throw Exception('مشکلی پیش آمد!');
      }
    } on SocketException {
      throw Exception('خطا در اتصال به اینترنت...');
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw Exception(errorMessage);
    }
  }

  Future<Response<dynamic>> retry(RequestOptions requestOptions) {
    final option = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return _dio!.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: option,
    );
  }

  Future logout() async {
    //
  }
}
