import 'package:dio/dio.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:vedhas/app/data/models/response_failure_model.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';
import 'package:vedhas/translations/keys.dart';

class ExceptionInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.cancel:
        throw ServerException('Request cancelled');
        // throw ServerException(translate(Keys.Errors_Data_Requestcancelled));

      case DioExceptionType.connectionTimeout:
        throw ServerException('Request timeout');
        // throw ServerException(translate(Keys.Errors_Data_Requesttimeout));
      case DioExceptionType.connectionError:
        throw ServerException('No internet connection');
        // throw ServerException(translate(Keys.Errors_Data_Nointernetconnection));

      case DioExceptionType.receiveTimeout:
        throw ServerException('receive Timeout');
        // throw ServerException(translate(Keys.Errors_Data_Notacceptable));
      case DioExceptionType.badResponse:
        handleResponse(err);
        break;
      case DioExceptionType.sendTimeout:
        throw ServerException('send Timeout');
        // throw ServerException(translate(Keys.Errors_Data_Sendtimeout));
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        throw ServerException('Something went wrong');
        // throw ServerException(translate(Keys.Errors_Data_Somethingwentwrong));
    }
  }

  static void handleResponse(DioException err) {
    var response = err.response;
    switch (err.response?.statusCode) {
      case 200:
      case 201:
        break;
      case 400:
        final ResponseFailure exception =
        ResponseFailure.fromJson(response?.data);
        throw BadRequestException(
          exception.message,
          exception.applicationStatusCode,
        );

      case 401:
        final ResponseFailure exception =
        ResponseFailure.fromJson(response?.data);

        if (exception.applicationStatusCode == 1000) {
          // onLoggedOut();

          throw UnauthorisedException(
            'Session expired ',
            // translate(Keys.Errors_Data_Sessionexpiredmessage),
            exception.applicationStatusCode,
          );
        } else {
          throw UnauthorisedException(
            exception.message,
            exception.applicationStatusCode,
          );
        }
      case 403:
        final ResponseFailure exception =
        ResponseFailure.fromJson(response?.data);
        throw UnauthorisedException(
          exception.message,
          exception.applicationStatusCode,
        );

      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response?.statusCode}');
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
  }
}