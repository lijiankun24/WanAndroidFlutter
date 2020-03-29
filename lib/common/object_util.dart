class ObjectUtil {
  /// Returns true  String or List or Map is empty.
  static bool isEmpty(Object object) {
    if (object == null) return true;
    if (object is String && object.isEmpty) {
      return true;
    } else if (object is List && object.isEmpty) {
      return true;
    } else if (object is Map && object.isEmpty) {
      return true;
    }
    return false;
  }

  static String timeToDate(int millisecondsSinceEpoch) {
    DateTime dateTime =
        new DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    String y = _fourDigits(dateTime.year);
    String m = _twoDigits(dateTime.month);
    String d = _twoDigits(dateTime.day);
    String h = _twoDigits(dateTime.hour);
    String min = _twoDigits(dateTime.minute);
    return "$y-$m-$d $h:$min";
  }

  static String _fourDigits(int n) {
    int absN = n.abs();
    String sign = n < 0 ? "-" : "";
    if (absN >= 1000) return "$n";
    if (absN >= 100) return "${sign}0$absN";
    if (absN >= 10) return "${sign}00$absN";
    return "${sign}000$absN";
  }

  static String _twoDigits(int n) {
    if (n >= 10) return "${n}";
    return "0${n}";
  }
}
