import 'package:dio/dio.dart';

extension SecToHoursExtension on int {
  int toHours(){
    return this ~/ 3600;
  }
}

extension ResponseExtension on Response{
  bool get isSuccess => statusCode == 200;
}