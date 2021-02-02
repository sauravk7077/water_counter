import 'package:hive/hive.dart';

part 'water.g.dart';

@HiveType(typeId: 1)
class Water {
  @HiveField(0)
  final double amount;
  @HiveField(1)
  final DateTime time;
  Water({this.amount, this.time});
}
