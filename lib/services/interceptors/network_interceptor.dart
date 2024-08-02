import 'package:dio/dio.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';

import 'package:vedhas/services/interceptors/network_info.dart';
import 'package:vedhas/services/log_service.dart';
import 'package:vedhas/translations/keys.dart';

class NetworkInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final isInternetAvailable = NetworkInfo().isConnected;
    // final isMockFlavour = (AppConfig.getInstance().flavor == Environment.mock);

    if (!isInternetAvailable) {
      throw NoConnectivityException();
    } else {
      LogService().info("Requested: ${options.path}");
    }
    super.onRequest(options, handler);
  }
}

class NoConnectivityException extends ServerException {
  @override
  String toString() => 'No internet connection';
  // String toString() => translate(Keys.Errors_Permission_Nointernet);
}