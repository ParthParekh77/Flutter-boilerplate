import 'package:retrofit/dio.dart';
import 'package:vedhas/app/data/models/login_request_model.dart';
import 'package:vedhas/app/modules/login/model/user_model.dart';
import 'package:vedhas/services/api_client.dart';
import 'package:vedhas/services/api_service.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';
import 'package:vedhas/services/extensions/extensions.dart';

abstract class LoginDatasource {
  Future<UserModel> loginUser(LoginRequestModel userLoginRequest);
}

class LoginDatasourceImpl implements LoginDatasource {
  @override
  Future<UserModel> loginUser(LoginRequestModel userLoginRequest) async {
    try {
      final HttpResponse<UserModel> responseModel =
      await ApiClient.authenticateService
          .authenticateUser(userLoginRequest);

      if (responseModel.isSuccessful && responseModel.data != null) {
        final UserModel response = responseModel.data;
        return response;
      } else {
        throw ServerException(responseModel.response.statusMessage ?? '');
      }
    } on Failure catch (e) {
      rethrow;
    } catch (error) {
      throw UnknownException(error.toString());
    }
  }
}