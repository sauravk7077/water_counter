import 'package:flutter/material.dart';
import 'package:water_counter/components/add_water.dart';
import 'package:water_counter/components/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Water counter',
    routes: {
      '/': (BuildContext ctx) => Home(),
      '/addWaterBox': (BuildContext ctx) => AddWaterBox()
    },
  ));
}
