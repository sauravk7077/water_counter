import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:water_counter/misc/misc.dart';
import 'package:water_counter/misc/water.dart';

Box<List<Water>> _box;

Future<void> initializeDB() async {
  Directory appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
  Hive.registerAdapter(WaterAdapter());
  _box = await Hive.openBox("box");
}

Future<void> saveToBox(String boxName, Water value) async {
  List<Water> obs = _box.get(formatTimeToString(DateTime.now()));
  obs = [...obs, value];
  await _box.put(DateTime.now(), obs);
}

ValueListenable<Box<List<Water>>> getBoxValueListeneable() {
  return _box.listenable();
}
