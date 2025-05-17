import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  final InternetConnectionChecker _checker = InternetConnectionChecker.instance;
  bool hasInternet = true;

  ConnectivityService() {
    _checkInternetPeriodically();
  }

  void _checkInternetPeriodically() {
    // Перша перевірка одразу
    _checker.hasConnection.then((value) {
      hasInternet = value;
    });

    // Потім періодична
    Timer.periodic(const Duration(seconds: 5), (_) async {
      hasInternet = await _checker.hasConnection;
    });
  }
}
