import 'package:flutter/material.dart';
import 'package:frema/composable/side-drawer.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

List<_PieData> pieData = [
    _PieData('Category 1', 30, 'Label 1'),
    _PieData('Category 2', 20, 'Label 2'),
    _PieData('Category 3', 50, 'Label 3'),
    // Add more data points as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard'),
        shadowColor: Theme.of(context).colorScheme.shadow,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(10.0),
              child: SfCircularChart(
                  title: ChartTitle(text: 'Sales by sales person'),
                  legend: Legend(isVisible: true),
                  series: <PieSeries<_PieData, String>>[
                    PieSeries<_PieData, String>(
                        explode: true,
                        explodeIndex: 0,
                        dataSource: pieData,
                        xValueMapper: (_PieData data, _) => data.xData,
                        yValueMapper: (_PieData data, _) => data.yData,
                        dataLabelMapper: (_PieData data, _) => data.text,
                        dataLabelSettings: DataLabelSettings(isVisible: true)),
                  ])),
        ],
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}
