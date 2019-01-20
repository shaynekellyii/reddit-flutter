/// Dart doesn't support extension methods, this is what I'll do
/// for now.

class Extensions {
  static String formatTimestamp(int timestampMs) {
    final secondsDifference =
        (DateTime.now().toUtc().millisecondsSinceEpoch - timestampMs) /
            Duration.millisecondsPerSecond;
    if (secondsDifference < Duration.secondsPerMinute) {
      return "${secondsDifference.floor()}s";
    } else if (secondsDifference < Duration.secondsPerHour) {
      return "${(secondsDifference / Duration.secondsPerMinute).floor()}m";
    } else if (secondsDifference < Duration.secondsPerDay) {
      return "${(secondsDifference / Duration.secondsPerHour).floor()}h";
    } else {
      return "${(secondsDifference / Duration.secondsPerDay).floor()}d";
    }
  }

  static String formatNumberShort(double number) {
    if (number < 1000) {
      return number.toStringAsFixed(0);
    } else {
      return (number / 1000).toStringAsFixed(1) + "k";
    }
  }
}
