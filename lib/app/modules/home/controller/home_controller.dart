import 'package:get/get.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../services/storage_service.dart';
import '../../login/model/user_model.dart';

class HomeController extends GetxController {
  final Rx<UserModel?> user = Rx<UserModel?>(null);
  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    loadUser();
  }

  void loadUser() {
    final userData = StorageService().read(key: AppConstants.user);
    if (userData != null) {
      print(userData);
      // user.value = UserModel.fromJson(userData);
    }
  }

  void changePage(int index) {
    currentIndex.value = index;
  }

  void logout() {
    StorageService().remove(key: AppConstants.user);
  }
}
