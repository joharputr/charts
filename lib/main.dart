import 'package:charts/grid_dynamic.dart';
import 'package:charts/streams.dart';
import 'package:charts/syncfusion_chart.dart';
import 'package:charts/tab_bar.dart';
import 'package:charts/typeahead.dart';
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
                    child: Text("Syncfusion Chart")),
                FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => Locationstat()));
                    },
                    child: Text("Nested Tab bar")),
                FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => GridDynamic()));
                    },
                    child: Text("GridView")),
                MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      WidgetsBinding.instance?.addPostFrameCallback((_) {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) => StreamsExample()));
                      });
                    },
                    child: Text("Streams")),
                MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      WidgetsBinding.instance?.addPostFrameCallback((_) {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) => TypeAhead()));
                      });
                    },
                    child: Text("TypeAhead"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
