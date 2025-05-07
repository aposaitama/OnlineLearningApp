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

  String _twoDigits(int n) => n.toString().padLeft(1, '0');
}
