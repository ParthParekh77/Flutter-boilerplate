import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../core/constants/app_constants.dart';
import '../core/errors/exceptions.dart';
import 'storage_service.dart';

class ApiService extends GetxService {
  late Dio _dio;

  ApiService() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      connectTimeout: const Duration(milliseconds: AppConstants.API_TIMEOUT),
      receiveTimeout: const Duration(milliseconds: AppConstants.API_TIMEOUT),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers.addAll(_buildHeaders());
        return handler.next(options);
      },
      onError: (DioException e, handler) {
        return handler.next(_handleDioError(e));
      },
    ));

    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));
  }

  Future<String> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return _handleResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  Future<String> post(String path, dynamic data) async {
    try {
      final response = await _dio.post(path, data: data);
      return _handleResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  Future<String> put(String path, dynamic data) async {
    try {
      final response = await _dio.put(path, data: data);
      return _handleResponse(response);
    } catch (error) {
      rethrow;
    }
  }

  dynamic _handleResponse(Response<dynamic> response) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return json.encode(response.data); // Assuming the response is JSON
    } else if (response.statusCode! == 500) {
      return null;
    } else {
      throw ServerException('Server error: ${response.statusCode} - ${response.data}');
    }
  }

  Map<String, String> _buildHeaders() {
    final token = StorageService().read(key: AppConstants.TOKEN_KEY);
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  DioException _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout || error.type == DioExceptionType.receiveTimeout || error.type == DioExceptionType.sendTimeout) {
      return DioException(
        requestOptions: error.requestOptions,
        error: ServerException('Request timed out. Please try again later.'),
      );
    } else if (error.type == DioExceptionType.badResponse) {
      return DioException(
        requestOptions: error.requestOptions,
        response: error.response,
        error: ServerException('Server error: ${error.response?.statusCode} - ${error.response?.data}'),
      );
    } else if (error.error is SocketException) {
      return DioException(
        requestOptions: error.requestOptions,
        error: NoInternetException('No internet connection. Please check your connection and try again.'),
      );
    } else {
      return DioException(
        requestOptions: error.requestOptions,
        error: ServerException('An unexpected error occurred. Please try again later.'),
      );
    }
  }
}
