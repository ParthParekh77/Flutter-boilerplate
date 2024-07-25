import 'package:get/get.dart';
import 'package:vedhas/services/log_service.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService extends GetxService {
  late WebSocketChannel _channel;

  Future<WebSocketService> init() async {
    _channel = WebSocketChannel.connect(Uri.parse('wss://your-websocket-server.com'));
    _channel.stream.listen(_handleMessage, onError: _handleError, onDone: _handleDone);
    return this;
  }

  void _handleMessage(dynamic message) {
    // Handle incoming WebSocket messages
  }

  void _handleError(error) {
    Get.find<LogService>().error('WebSocket error', error: error);
  }

  void _handleDone() {
    // Handle WebSocket connection closure
  }

  void sendMessage(String message) {
    _channel.sink.add(message);
  }

  void close() {
    _channel.sink.close();
  }
}
