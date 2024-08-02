import 'package:dio/dio.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:vedhas/translations/keys.dart';

class Failure extends DioException {
  final String? errorMessage;

  final int? applicationStatusCode;

  @override
  String get message => errorMessage ?? '';

  Failure({
    this.applicationStatusCode,
    this.errorMessage,
  }) : super(requestOptions: RequestOptions(path: ''));

  @override
  String toString() {
    if (message.isNotEmpty) {
      return message;
    } else {
      return 'Something went wrong';
      // return translate(Keys.Errors_Data_Somethingwentwrong);
    }
  }
}

class ServerException extends Failure {
  ServerException([message, applicationStatusCode])
      : super(
    errorMessage: message,
    applicationStatusCode: applicationStatusCode,
  );
}

class CacheException extends Failure {
  CacheException() : super();
}

class FetchDataException extends Failure {
  FetchDataException([message]) : super(errorMessage: message);
}

class BadRequestException extends Failure {
  BadRequestException([message, applicationStatusCode])
      : super(
      errorMessage: message,
      applicationStatusCode: applicationStatusCode);
}

class UnauthorisedException extends Failure {
  UnauthorisedException([message, applicationStatusCode])
      : super(
      errorMessage: message,
      applicationStatusCode: applicationStatusCode);
}

class NoNetworkException extends Failure {
  NoNetworkException([requestOptions])
      : super(
    errorMessage: 'No internet connection',
  );
}

class UnknownException extends Failure {
  final String? errMessage;
  UnknownException([this.errMessage]) : super(errorMessage: errMessage);

  @override
  String toString() {
    if ((errMessage ?? '').isNotEmpty) {
      return message;
    } else {
      return 'Something went wrong';
      // return translate(Keys.Errors_Data_Somethingwentwrong);
    }
  }
}