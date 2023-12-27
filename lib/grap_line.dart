// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineGraph extends StatefulWidget {
  const LineGraph({super.key});

  @override
  State<LineGraph> createState() => _LineGraphState();
}

class _LineGraphState extends State<LineGraph> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 35, 23),
      ChartData(2011, 38, 49),
      ChartData(2012, 34, 12),
      ChartData(2013, 52, 33),
      ChartData(2014, 40, 30)
    ];

    return Scaffold(
        body: Center(
      child: Container(
        child: SfCartesianChart(
          series: <CartesianSeries>[
            // Renders line chart
            LineSeries<ChartData, int>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              markerSettings: MarkerSettings(isVisible: true),
              enableTooltip: true,
            ),
            LineSeries<ChartData, int>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y1,
              markerSettings: MarkerSettings(isVisible: true),
              enableTooltip: true,
            )
          ],
        ),
      ),
    ));
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.y1,
  );
  final int x;
  final double y;
  final double y1;
}
