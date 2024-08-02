import 'package:flutter_translate/flutter_translate.dart';
import 'package:vedhas/translations/keys.dart';

class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}

// class NoInternetException implements Exception {
//   String message = translate(Keys.Errors_Permission_Nointernet);
//   NoInternetException(this.message);
// }
