import 'package:flutter/material.dart';
import 'package:water_counter/data/water_quantity.dart';
import 'package:water_counter/misc/data_handling.dart';
import 'package:water_counter/misc/water.dart';

class AddWaterBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Water'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: quantities
              .map(
                (item) => InkWell(
                    onTap: () async {
                      await saveToBox(
                          Water(amount: item, time: DateTime.now()));
                      Navigator.pop(context);
                    },
                    child: Card(
                      child: Center(child: Text(item.toString())),
                    )),
              )
              .toList(),
        ));
  }
}
