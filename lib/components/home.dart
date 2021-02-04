import 'package:flutter/material.dart';
import 'package:water_counter/misc/data_handling.dart';
import 'package:water_counter/misc/misc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: clearBoxData,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: ValueListenableBuilder(
                valueListenable: getBoxValueListeneable(),
                builder: (context, box, _) => Text(
                    sumWater(box.get(formatTimeToString(DateTime.now())))
                        .toString(),
                    style: Theme.of(context).textTheme.headline2)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Navigator.pushNamed(context, '/addWaterBox');
        },
      ),
    );
  }
}
