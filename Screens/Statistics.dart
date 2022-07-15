import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
            trailing: IconButton(
              alignment: Alignment.center,
              iconSize: 38,
              splashRadius: 25,
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.filter_list_rounded),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leadingWidth: 80,
          leading: IconButton(
            alignment: Alignment.center,
            iconSize: 30,
            splashRadius: 25,
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: const [
                Text(
                  'Monthly',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' Statistics',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                )
              ],
            ),
          ),
          //Padding(
          //  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //  child: LineChart(LineChartData(
          //      minX: 0,
          //      minY: 0,
          //      maxX: 1,
          //      maxY: 19,
          //      lineBarsData: [
          //        LineChartBarData(spots: [FlSpot(2, 18), FlSpot(1, 15)])
          //      ])),
        ])));
  }
}
