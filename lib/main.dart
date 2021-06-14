import 'package:charts/syncfusion_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => ChartApp()));
                    },
                    child: Text("Syncfusion Chart"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

