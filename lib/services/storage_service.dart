import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  final _box = GetStorage();

  Future<StorageService> init() async {
    await _box.initStorage;
    return this;
  }

  T? read<T>({required String key}) {
    return _box.read<T>(key);
  }

  Future<void> write({required String key, required dynamic value}) async {
    await _box.write(key, value);
  }

  Future<void> remove({required String key}) async {
    await _box.remove(key);
  }

  Future<void> clear() async {
    await _box.erase();
  }
}
