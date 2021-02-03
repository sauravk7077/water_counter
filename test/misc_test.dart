import 'package:water_counter/misc/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:water_counter/misc/water.dart';

void main() {
  group('DateTime tests', () {
    DateTime d = DateTime(2000, 1, 1);
    test('2000-1-1 should return', () {
      expect(formatTimeToString(d), '1-1-2000');
    });
    test('2000-1-1 should equal dateTime', () {
      expect(formatStringToTime('1-1-2000'), d);
    });

    test('Value returned should be equal', () {
      expect(formatStringToTime(formatTimeToString(d)), d);
    });

    test('Value returned should be equal', () {
      expect(formatTimeToString(formatStringToTime('1-1-2000')), '1-1-2000');
    });
  });
  group('waterSummation', () {
    Water w = Water(amount: 500, time: DateTime.now());

    test('Return 0 for empty array', () {
      List<Water> lw = [];
      expect(sumWater(lw), 0);
    });

    test('Return 1000 from array', () {
      List<Water> lw = [w, w];
      expect(sumWater(lw), 1000);
    });
  });
}
