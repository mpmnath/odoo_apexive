extension DateTimeExtension on DateTime {
  String get formattedDate {
    return '${month.toString().padLeft(2, "0")}/${day.toString().padLeft(2, "0")}/$year';
  }
}

String formatDuration(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return "$minutes:$seconds";
}
