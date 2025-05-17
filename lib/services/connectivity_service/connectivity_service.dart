import 'dart:async';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService extends ChangeNotifier {
  final InternetConnectionChecker _checker = InternetConnectionChecker.instance;

  bool _hasInternet = true;
  bool get hasInternet => _hasInternet;

  late Timer _timer;

  ConnectivityService() {
    _init();
  }

  void _init() {
    // Перша перевірка одразу
    _checkConnection();

    // Періодична перевірка кожні 5 секунд
    _timer =
        Timer.periodic(const Duration(seconds: 5), (_) => _checkConnection());
  }

  Future<void> _checkConnection() async {
    final previousStatus = _hasInternet;
    final currentStatus = await _checker.hasConnection;

    if (previousStatus != currentStatus) {
      _hasInternet = currentStatus;
      notifyListeners();
    }
  }

  Future<void> checkOnpressedConnection() async {
    final previousStatus = _hasInternet;
    final currentStatus = await _checker.hasConnection;
    if (!currentStatus) {
      BotToast.showText(text: 'No internet connection');
    } else if (!previousStatus && currentStatus) {
      BotToast.showText(text: 'Internet is back');
    }

    if (previousStatus != currentStatus) {
      _hasInternet = currentStatus;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
