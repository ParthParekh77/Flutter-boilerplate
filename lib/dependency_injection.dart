import 'package:get_it/get_it.dart';
import 'package:vedhas/app/data/datasorces/login_datasource.dart';
import 'package:vedhas/app/data/repository/login_repository.dart';
import 'package:vedhas/app/domain/usecase/login_usecase.dart';
import 'package:vedhas/app/modules/login/controller/login_controller.dart';
import 'package:vedhas/global_controller.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  // Register your dependencies here

  serviceLocator.registerFactory<GlobalController>(() => GlobalController());
  serviceLocator.registerFactory<LoginController>(() => LoginController());
  serviceLocator.registerFactory(() => LoginUser(serviceLocator()));
  serviceLocator.registerFactory<LoginRepository>(
          () => LoginRepositoryImpl(serviceLocator()));
  serviceLocator.registerFactory<LoginDatasource>(
          () => LoginDatasourceImpl());

}
