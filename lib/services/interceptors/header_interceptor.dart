import 'package:dio/dio.dart';
import 'package:vedhas/core/constants/app_constants.dart';
import 'package:vedhas/services/storage_service.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  static const String authHeader = "Authorization";
  static const String bearer = "Bearer ";

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    final token = StorageService().read(key: AppConstants.TOKEN_KEY);
    final refreshToken = StorageService().read(key: AppConstants.REFRESH_TOKEN_KEY);

    if (token != null && token.isNotEmpty) {
      if (options.path.contains("/api/refreshAuthToken") &&
          refreshToken != null &&
          refreshToken.isNotEmpty) {
        options.headers = {
          authHeader: bearer + refreshToken,
          "Content-Type": "application/json",
        };
      } else if (options.path == "/api/uploadProfilePictures") {
        options.headers = {
          authHeader: bearer + token,
          "Content-Type": Headers.multipartFormDataContentType,
        };
      } else {
        options.headers = {
          authHeader: bearer + token,
          "Content-Type": Headers.jsonContentType,
        };
      }
    }
    super.onRequest(options, handler);
  }
}