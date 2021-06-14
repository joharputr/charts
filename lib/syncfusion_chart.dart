import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  List<_SalesData> dataSales = [
    _SalesData('januari', 35),
    _SalesData('Februari', 80),
    _SalesData('Maret', 34),
    _SalesData('April', 32),
    _SalesData('Mei', 40)
  ];
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
        enable: true,
        // Templating the tooltip
        builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
            int seriesIndex) {
          var data2 = data as _SalesData;
          return Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(' ${data2.sales}'),
              ));
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(children: [
          //Initialize the chart widget
          SfCartesianChart(
              primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(width: 0),
              ),
              plotAreaBorderWidth: 0,
              primaryYAxis: NumericAxis(
                majorGridLines: MajorGridLines(width: 0, color: Colors.blue),
              ),
              title: ChartTitle(text: 'Half yearly sales analysis'),
              tooltipBehavior: TooltipBehavior(
                enable: true,
              ),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    dataSource: dataSales,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'Sales',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: false))
              ]),
        ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
