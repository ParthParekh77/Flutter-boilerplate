import 'package:get/get.dart';
// import 'package:seq_client/seq_client.dart';

class LogService extends GetxService {
  // late SeqClient _client;

  Future<LogService> init() async {
    // _client = SeqClient('https://your-seq-server.com', apiKey: 'your-api-key');
    return this;
  }

  void error(String message, {dynamic error, StackTrace? stackTrace}) {
    // _client.error(message, error: error, stackTrace: stackTrace);
  }

  void info(String message) {
    // _client.information(message);
  }
}
