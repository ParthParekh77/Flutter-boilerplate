import 'package:dio/dio.dart';
import 'package:vedhas/core/constants/app_constants.dart';
import 'package:vedhas/services/interceptors/exception_interceptor.dart';
import 'package:vedhas/services/interceptors/header_interceptor.dart';
import 'package:vedhas/services/interceptors/network_interceptor.dart';
import 'package:vedhas/services/webservice/authenticate_service.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class ApiClient extends GetxService {

  static late final AuthenticateService authenticateService;

  static void initServices() {
    final dio = Dio()
      ..options = BaseOptions(baseUrl: AppConstants.BASE_URL);

    dio.interceptors.addAll([
      NetworkInterceptor(),
      ExceptionInterceptor(),
      HeaderInterceptor(),
    ]);

    authenticateService = AuthenticateService(dio);
  }
}