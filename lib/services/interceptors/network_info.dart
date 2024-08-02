import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:vedhas/services/log_service.dart';

class NetworkInfo {
  bool isConnected = false;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  static final NetworkInfo _singleton = NetworkInfo._internal();

  factory NetworkInfo() => _singleton;

  NetworkInfo._internal() {
    _initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus as void Function(List<ConnectivityResult> event)?) as StreamSubscription<ConnectivityResult>?;
  }


  Future<void> _initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    try {
      var statusConnection = await _connectivity.checkConnectivity();
      result = statusConnection[0];
    } on PlatformException catch (e) {
      // FirebaseCrashlytics.instance.recordFlutterError(FlutterErrorDetails(exception: e));
      LogService().info(e.toString());
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        isConnected = true;
        break;
      case ConnectivityResult.none:
        isConnected = false;
        break;
      default:
        isConnected = false;
        break;
    }
  }

  void cancelSubscription() {
    _connectivitySubscription?.cancel();
  }
}