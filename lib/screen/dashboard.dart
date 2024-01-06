import 'dart:core';
import 'package:flutter/material.dart';
import 'package:frema/composable/side-drawer.dart';
import 'package:frema/main.dart';
import 'package:frema/models/freelance.dart';
import 'package:frema/screen/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Future<List<Freelance>> _projectsFuture = _queryData();

  Future<List<Freelance>> _queryData() async {
    List<Freelance> projects = [];

    final User? user = supabase.auth.currentUser;

    if (user != null) {
      final List<Map<String, dynamic>> rows = await supabase
          .from('datatable_project')
          .select('*')
          .match({'owner_id': user.id});

      for (var element in rows) {
        projects.add(Freelance.fromMap(element));
      }
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }

    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard'),
        shadowColor: Theme.of(context).colorScheme.shadow,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: () {
          setState(() {
            _projectsFuture = _queryData();
          });
          return _projectsFuture;
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Project Timeline - Range Area Chart
              Container(
                padding: const EdgeInsets.all(10.0),
                child: FutureBuilder<List<Freelance>>(
                  future: _projectsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Text('No data available');
                    } else {
                      final projectData = snapshot.data!;

                      // Create data for the range area chart
                      final List<RangeAreaChartData> rangeAreaChartData =
                          projectData
                              .map((freelance) => RangeAreaChartData(
                                    x: freelance.title,
                                    low: DateTime.parse(freelance.startDate)
                                        .millisecondsSinceEpoch,
                                    high: DateTime.parse(freelance.endDate)
                                        .millisecondsSinceEpoch,
                                  ))
                              .toList();

                      return SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        primaryYAxis:
                            DateTimeAxis(title: AxisTitle(text: 'Time Range')),
                        series: <RangeAreaSeries<RangeAreaChartData, String>>[
                          RangeAreaSeries<RangeAreaChartData, String>(
                            dataSource: rangeAreaChartData,
                            xValueMapper: (RangeAreaChartData data, _) =>
                                data.x,
                            lowValueMapper: (RangeAreaChartData data, _) =>
                                data.low,
                            highValueMapper: (RangeAreaChartData data, _) =>
                                data.high,
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),

              // Project Status Distribution - Doughnut Chart
              Container(
                padding: const EdgeInsets.all(10.0),
                child: FutureBuilder<List<Freelance>>(
                  future: _projectsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(); // or any other loading indicator
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Text('No data available');
                    } else {
                      return SfCircularChart(
                        title: ChartTitle(text: 'Project Status Distribution'),
                        legend: const Legend(isVisible: true),
                        series: <DoughnutSeries<Freelance, String>>[
                          DoughnutSeries<Freelance, String>(
                            dataSource: snapshot.data!,
                            xValueMapper: (Freelance data, _) => data.status,
                            yValueMapper: (Freelance data, _) => data.phase,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),

              // Project Revenue - Bar Chart
              Container(
                padding: const EdgeInsets.all(10.0),
                child: FutureBuilder<List<Freelance>>(
                  future: _projectsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Text('No data available');
                    } else {
                      final projectData = snapshot.data!;

                      // Create data for the bar chart
                      final List<ChartData> barChartData = projectData
                          .map((freelance) => ChartData(
                                projectName: freelance.title,
                                revenue: double.parse(freelance.price),
                              ))
                          .toList();

                      return SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        primaryYAxis:
                            NumericAxis(title: AxisTitle(text: 'Revenue')),
                        series: <ColumnSeries<ChartData, String>>[
                          ColumnSeries<ChartData, String>(
                            dataSource: barChartData,
                            xValueMapper: (ChartData data, _) =>
                                data.projectName,
                            yValueMapper: (ChartData data, _) => data.revenue,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),

              // Monthly Sum Prices - Bar Chart
              Container(
                padding: const EdgeInsets.all(10.0),
                child: FutureBuilder<List<Freelance>>(
                  future: _projectsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Text('No data available');
                    } else {
                      final projectData = snapshot.data!;

                      // Map each project to a pair of (month, price)
                      final Map<String, double> monthlySumPrices = {};
                      projectData.forEach((freelance) {
                        final month = DateTime.parse(freelance.endDate)
                            .toLocal()
                            .month
                            .toString();
                        final price = double.parse(freelance.price);

                        monthlySumPrices.update(
                          month,
                          (value) => value + price,
                          ifAbsent: () => price,
                        );
                      });

                      // Find the month with the most and least startDate
                      String mostStartDateMonth = '';
                      String leastStartDateMonth = '';
                      int maxStartDateCount = 0;

                      // ...

                      double minStartDateCount = double.infinity;

                      projectData.forEach((freelance) {
                        final month = DateTime.parse(freelance.startDate)
                            .toLocal()
                            .month
                            .toString();

                        // Count occurrences of each month
                        final count = monthlySumPrices[month]?.toInt() ?? 0;

                        if (count > maxStartDateCount) {
                          maxStartDateCount = count;
                          mostStartDateMonth = month;
                        }

                        if (count < minStartDateCount) {
                          minStartDateCount = count.toDouble();
                          leastStartDateMonth = month;
                        }
                      });

                      return Column(
                        children: [
                          SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(
                                title: AxisTitle(text: 'Sum Price')),
                            series: <ColumnSeries<String, String>>[
                              ColumnSeries<String, String>(
                                dataSource: monthlySumPrices.keys.toList(),
                                xValueMapper: (String month, _) => month,
                                yValueMapper: (String month, _) =>
                                    monthlySumPrices[month]!,
                                dataLabelSettings:
                                    const DataLabelSettings(isVisible: true),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                              'Month with most startDate: $mostStartDateMonth'),
                          Text(
                              'Month with least startDate: $leastStartDateMonth'),
                        ],
                      );
                    }
                  },
                ),
              ),

              // Add more charts as needed
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String projectName;
  final double revenue;

  ChartData({required this.projectName, required this.revenue});
}

class RangeAreaChartData {
  final String x;
  final int low;
  final int high;

  RangeAreaChartData({required this.x, required this.low, required this.high});
}
