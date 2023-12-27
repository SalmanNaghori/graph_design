// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:graph_design/grap_line.dart';

class GrapScreen extends StatefulWidget {
  const GrapScreen({Key? key}) : super(key: key);

  @override
  State<GrapScreen> createState() => _GrapScreenState();
}

class _GrapScreenState extends State<GrapScreen> {
  final List<ChartData> chartData = [
    ChartData(2010, 35, 23, 12),
    ChartData(2011, 38, 49, 5),
    ChartData(2012, 34, 12, 20),
    ChartData(2013, 52, 33, 4),
    ChartData(2014, 40, 30, 25)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/date_image.png",
            width: 197,
            height: 47,
          ),
          SfCartesianChart(
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(width: 0.0),
                majorTickLines: MajorTickLines(width: 0.1),
                axisLine: AxisLine(
                    color: Color(0xffF3F3F3),
                    width: 2,
                    dashArray: <double>[5, 5])),
            primaryYAxis: NumericAxis(
              majorTickLines: MajorTickLines(width: 0.1),
              labelStyle: TextStyle(fontSize: 0),
              majorGridLines: MajorGridLines(
                  color: Color(0xffF3F3F3),
                  width: 2,
                  dashArray: <double>[5, 5]),
              axisLine: AxisLine(color: Colors.transparent, width: 0.0),
            ),
            tooltipBehavior: TooltipBehavior(
              activationMode: ActivationMode.longPress,
              enable: true,
              animationDuration: 1,
              format: 'point.ykWh',
              header: "",
              canShowMarker: false,
              tooltipPosition: TooltipPosition.auto,
            ),
            series: <CartesianSeries<ChartData, String>>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.5,
                spacing: 0.4,
                xValueMapper: (ChartData data, _) => data.x.toString(),
                yValueMapper: (ChartData data, _) => data.y,
                name: 'Gold',
                color: Color(0xff093C71),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              ColumnSeries<ChartData, String>(
                width: 0.5,
                spacing: 0.4,
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x.toString(),
                yValueMapper: (ChartData data, _) => data.y1,
                name: 'Gold',
                color: Color(0xff549AE4),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              )
            ],
          ),
          Expanded(child: LineGraph()),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.y1,
    this.y2,
  );
  final int x;
  final double y;
  final double y1;
  final double y2;
}
