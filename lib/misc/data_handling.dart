import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> initializeDB() async {
  Directory appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);
}

Future<void> saveToBox(String boxName, int value) async {
  Box dateBox = await Hive.openBox(boxName);
  dateBox.put(DateTime.now(), value);
}

Future<ValueListenable<Box<dynamic>>> getBoxValueListeneable(
    String boxName) async {
  Box dateBox = await Hive.openBox(boxName);
  return dateBox.listenable();
}
