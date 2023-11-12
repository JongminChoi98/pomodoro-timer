String timeFormat(int seconds) {
  var duration = Duration(seconds: seconds);
  late String timeFormat;
  if (seconds > 35999) {
    timeFormat = duration.toString().split(".").first.substring(0, 8);
  } else if (seconds > 3599) {
    timeFormat = duration.toString().split(".").first.substring(0, 7);
  } else {
    timeFormat = duration.toString().split(".").first.substring(2, 7);
  }
  return timeFormat;
}

String pomodoroCountFormat(int count) {
  return count.toString();
}
