import 'package:roavapp/values/json.dart';

String dayFromNum(num day, [bool getLong = false]) {
  try {
    final key = getLong ? "long" : "short";
    return days[day - 1][key] ?? "Sun";
  } catch (_) {
    return "Sun";
  }
}

String hourFromNum(num hour) {
  try {
    final durationString =  (Duration(hours: hour).toString().split(".")[0] ?? "00:00:00").split(":");
    return "${durationString[0]}:${durationString[1]}";
  } catch (_) {
    return "00:00";
  }
}
