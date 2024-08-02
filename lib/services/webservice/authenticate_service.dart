

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:vedhas/app/data/models/login_request_model.dart';
import 'package:vedhas/app/modules/login/model/user_model.dart';

part 'authenticate_service.g.dart';

@RestApi(baseUrl: '')
abstract class AuthenticateService {
  factory AuthenticateService(Dio dio, {String baseUrl}) = _AuthenticateService;

  @POST('/users')
  Future<HttpResponse<UserModel>> authenticateUser(@Body() LoginRequestModel request);

}