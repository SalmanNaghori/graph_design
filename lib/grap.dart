import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GrapScreen extends StatefulWidget {
  const GrapScreen({Key? key}) : super(key: key);

  @override
  State<GrapScreen> createState() => _GrapScreenState();
}

class _GrapScreenState extends State<GrapScreen> {
  final List<ChartData> chartData = [
    ChartData(2010, 35, 23),
    ChartData(2011, 38, 49),
    ChartData(2012, 34, 12),
    ChartData(2013, 52, 33),
    ChartData(2014, 40, 30)
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

              //          enable: true,
              // color: Colors.transparent,
              // header: "",
              // duration: 0,
              // format: "point.y%\npoint.x",
              // canShowMarker: false,
              // textAlignment: ChartAlignment.center
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
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}
