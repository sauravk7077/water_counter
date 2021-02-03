import 'package:flutter/material.dart';
import 'package:water_counter/components/add_water.dart';
import 'package:water_counter/components/home.dart';
import 'package:water_counter/misc/data_handling.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDB();
  runApp(MaterialApp(
    title: 'Water counter',
    routes: {
      '/': (BuildContext ctx) => Home(),
      '/addWaterBox': (BuildContext ctx) => AddWaterBox()
    },
  ));
}
