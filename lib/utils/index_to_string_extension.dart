extension IndexToStringExtension on int {
  String indexToString() {
    if (this + 1 <= 10) {
      return '0${this + 1}';
    } else {
      return '${this + 1}';
    }
  }
}
