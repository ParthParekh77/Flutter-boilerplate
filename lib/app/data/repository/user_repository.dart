import '../../../core/constants/app_constants.dart';
import '../../../services/api_service.dart';
import '../../../services/storage_service.dart';
import '../../modules/login/model/user_model.dart';

class UserRepository {
  final ApiService _apiService;
  final StorageService storageService;
  UserRepository(this._apiService, this.storageService);

  Future<UserModel> login(String name, String job) async {
    final response = await _apiService.post('/api/users', {
      'name': name,
      'job': job,
    });
    storageService.write(key: AppConstants.user, value: response);

    return userModelFromJson(response.toString());
  }

  Future<UserModel> updateUser(UserModel user) async {
    final response = await _apiService.post('/api/users/${user.id}', user.toJson());
    storageService.write(key: AppConstants.user, value: response);
    return userModelFromJson(response);
  }
}
