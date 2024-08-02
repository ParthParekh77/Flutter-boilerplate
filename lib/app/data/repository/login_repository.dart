import 'package:dartz/dartz.dart';
import 'package:vedhas/app/data/datasorces/login_datasource.dart';
import 'package:vedhas/app/data/models/login_request_model.dart';
import 'package:vedhas/app/modules/login/model/user_model.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserModel>> loginUser(LoginRequestModel userLoginRequest);
}

class LoginRepositoryImpl implements LoginRepository {
  final LoginDatasource datasource;

  LoginRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, UserModel>> loginUser(LoginRequestModel userLoginRequest) async {
    try {
      final UserModel response = await datasource.loginUser(userLoginRequest);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownException(e.toString()));
    }
  }

}