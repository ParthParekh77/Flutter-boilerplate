import 'package:dartz/dartz.dart';
import 'package:vedhas/app/data/models/login_request_model.dart';
import 'package:vedhas/app/data/repository/login_repository.dart';
import 'package:vedhas/app/modules/login/model/user_model.dart';
import 'package:vedhas/core/usecase_generic/usecase_generic.dart';
import 'package:vedhas/services/error_exception/exceptions.dart';

class LoginUser implements UseCase<UserModel, LoginUserParam> {

  final LoginRepository repository;

  LoginUser(this.repository);

  @override
  Future<Either<Failure, UserModel>> call(LoginUserParam params) {
    LoginRequestModel userLoginRequest = LoginRequestModel(name: params.username, job: params.job);
    return repository.loginUser(userLoginRequest);
  }
}

class LoginUserParam implements NoParam {
  final String username;
  final String job;

  LoginUserParam(this.username, this.job);

  @override
  List<Object?> get props => [username, job];

  @override
  bool? get stringify => true;

}