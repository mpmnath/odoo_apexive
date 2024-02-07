//Extension on DateTime to format date to MM/DD/YYYY and MM.DD.YYYY
extension DateTimeExtension on DateTime {
  String get formattedDateSlash {
    return '${month.toString().padLeft(2, "0")}/${day.toString().padLeft(2, "0")}/$year';
  }

  String get formattedDateDot {
    return '${month.toString().padLeft(2, "0")}.${day.toString().padLeft(2, "0")}.$year';
  }
}

//Formats duration to HH:MM:SS
String formatDurationToHMS(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  final hours = twoDigits(duration.inHours.remainder(60));
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return "$hours:$minutes:$seconds";
}

//Format duration to MM:SS
String formatDurationToMS(Duration duration) {
  String twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return "$minutes:$seconds";
}
