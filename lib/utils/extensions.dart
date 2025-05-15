import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension SecToHoursExtension on int {
  int toHours() {
    return this ~/ 3600;
  }
}

extension ResponseExtension on Response {
  bool get isSuccess => statusCode == 200;
}

extension IndexToStringExtension on int {
  String indexToString() {
    if (this + 1 <= 10) {
      return '0${this + 1}';
    } else {
      return '${this + 1}';
    }
  }
}

extension SecondsToDateExtension on int {
  String toTimeFormat() {
    if (this <= 0) return '';

    final duration = Duration(seconds: this);

    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    if (hours > 0) {
      return '${_twoDigits(hours)}h ${_twoDigits(minutes)}min';
    } else {
      return '${_twoDigits(minutes)}:${_twoDigits(seconds)}';
    }
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}

extension DurationToString on Duration {
  String durationToString() {
    if (inHours > 0) {
      return '${_twoDigits(inHours)}:${_twoDigits(
        inMinutes,
      )}';
    }
    return '${_twoDigits(inMinutes % 60)}:${_twoDigits(
      inSeconds % 60,
    )}';
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}

// extension HexToColorExtension on String {
//   Color toColor() {
//     String hex = replaceAll('#', '');

//     if (hex.length == 6) {
//       hex = 'FF$hex';
//     }

//     return Color(
//       int.parse(
//         hex,
//         radix: 16,
//       ),
//     );
//   }
// }

extension TimeToStringExtension on DateTime {
  String timeToString() {
    return DateFormat.jm().format(this);
  }
}

extension HexColorExtension on String {
  Color toColor({Color fallback = Colors.grey}) {
    try {
      String hex = replaceAll('#', '').toUpperCase();

      if (hex.length == 6) {
        hex = 'FF$hex'; // додаємо альфу
      } else if (hex.length != 8) {
        return fallback;
      }

      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      return fallback;
    }
  }
}

extension UrlToStrapiUrl on String {
  String toImageUrl() {
    return 'https://learning.demodev.cc$this';
  }
}
