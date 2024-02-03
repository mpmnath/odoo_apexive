extension DateTimeExtension on DateTime {
  String get formattedDate {
    return '${month.toString().padLeft(2, "0")}/${day.toString().padLeft(2, "0")}/$year';
  }
}
