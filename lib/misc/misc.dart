// Formats the date in day-month-year form
import 'package:water_counter/misc/water.dart';

String formatTimeToString(DateTime time) {
  return '${time.day}-${time.month}-${time.year}';
}

DateTime formatStringToTime(String time) {
  List<String> dateStrings = time.split('-');
  return DateTime(int.parse(dateStrings[2]), int.parse(dateStrings[1]),
      int.parse(dateStrings[0]));
}

double sumWater(List<Water> waterObs) {
  if (waterObs != null) return waterObs.fold(0, (t, e) => (t + e.amount));
  return 0;
}
