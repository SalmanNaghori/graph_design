// import 'dart:ui';

// import 'package:flutter/material.dart';



// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';


// class HomeScreen extends StatelessWidget {
//  HomeScreen({super.key});

//  final List<ChartData> data = [
//     ChartData(17, 21500, "0"),
//     ChartData(18, 22684, "1"),
//     ChartData(19, 21643, "2"),
//     ChartData(20, 22997, "3"),
//     ChartData(21, 22883, "4"),
//     ChartData(22, 22635, "5"),
//     ChartData(23, 21800, "6"),
//     ChartData(24, 23500, "7"),
//     ChartData(25, 21354, "8"),
//     ChartData(26, 22354, "9"),
//   ];

//   final List<ChartDataa> chartDataa = [
//     ChartDataa(2010, 35, 23),
//     ChartDataa(2011, 38, 49),
//     ChartDataa(2012, 34, 12),
//     ChartDataa(2013, 52, 33),
//     ChartDataa(2014, 40, 30)
//   ];

//   final List<ChartData1> chartData1 = [
//     ChartData1('China', 10, 3, 14, 20),
//     ChartData1('USA', 14, 8, 18, 23),
//     ChartData1('UK', 12, 4, 15, 20),
//     ChartData1('Brazil', 18, 9, 18, 24)
//   ];

//   final List<ChartData2> chartData2 = [
//     ChartData2("1924", 90, AppStyle.accent_color, 1924),
//     ChartData2("1925", 50, Colors.blueAccent, 1925),
//     ChartData2("1926", 70, Colors.deepPurple, 1926),
//   ];

//   final List<ChartData3> chartData3 = [
//     ChartData3('David', 25),
//     ChartData3('Steve', 38),
//     ChartData3('Jack', 34),
//     ChartData3('Others', 52)
//   ];

//   final List<ChartData4> chartData4 = [
//     ChartData4(2010, 32),
//     ChartData4(2011, 40),
//     ChartData4(2012, 34),
//     ChartData4(2013, 52),
//     ChartData4(2014, 42),
//     ChartData4(2015, 38),
//     ChartData4(2016, 41),
//   ];

//   final List<ChartDataR> chartDataR = [
//     ChartDataR('Jan', 40, 30, 10, 5, 5, 10),
//     // ChartDataR('Feb', 45, 47, 41),
//     // ChartDataR('Mar', 50, 42, 42),
//     // ChartDataR('Apr', 44, 48, 40),
//     // ChartDataR('May', 43, 49, 43),
//     // ChartDataR('June', 44, 48, 42),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppStyle.bg_color,
//       appBar: AppBar(
//         elevation: 0,
//         // centerTitle: true,
//         backgroundColor: AppStyle.bg_color,
//         title: const Text("Charts"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: TextButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ProviderPage(),
//                     ));
//               },
//               child: const Text(
//                 "Riverpod",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: TextButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ShoppingPage(),
//                     ));
//               },
//               child: const Text(
//                 "Getx",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: TextButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => LocalState(),
//                     ));
//               },
//               child: const Text(
//                 "Local",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(
//                 child: SfCartesianChart(
//                   title: ChartTitle(
//                     text: "CartesianChart",
//                     textStyle: const TextStyle(
//                       color: Color.fromARGB(255, 132, 200, 255),
//                     ),
//                   ),
//                   margin: EdgeInsets.zero,
//                   borderWidth: 0,
//                   plotAreaBorderWidth: 0,
//                   borderColor: Colors.transparent,
//                   primaryXAxis: NumericAxis(
//                     minimum: 17,
//                     maximum: 26,
//                     isVisible: false,
//                     interval: 1,
//                     borderWidth: 0,
//                     borderColor: Colors.transparent,
//                   ),
//                   primaryYAxis: NumericAxis(
//                     minimum: 19000,
//                     maximum: 24000,
//                     interval: 1000,
//                     isVisible: false,
//                     borderWidth: 0,
//                     borderColor: Colors.transparent,
//                   ),
//                   series: <ChartSeries<ChartData, int>>[
//                     SplineAreaSeries(
//                       splineType: SplineType.natural,
//                       dataSource: data,
//                       xValueMapper: (ChartData data, _) => data.day,
//                       yValueMapper: (ChartData data, _) => data.price,
//                       gradient: LinearGradient(
                        // colors: [
                        //   AppStyle.spline_color,
                        //   AppStyle.bg_color.withAlpha(150),
                        // ],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                       ),
//                     ),
//                     SplineSeries(
//                       markerSettings: MarkerSettings(
//                         color: AppStyle.spline_color,
//                         borderWidth: 3,
//                         shape: DataMarkerType.circle,
//                         isVisible: true,
//                         borderColor: AppStyle.accent_color,
//                       ),
//                       color: AppStyle.accent_color,
//                       dataSource: data,
//                       xValueMapper: (ChartData data, _) => data.day,
//                       yValueMapper: (ChartData data, _) => data.price,
//                     )
//                   ],
//                 ),
//               ),
//               SfCircularChart(
//                 title: ChartTitle(
//                   text: 'CircularChart',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 // legend: Legend(isVisible: true),
//                 series: <PieSeries<ChartData, int>>[
//                   PieSeries<ChartData, int>(
//                       // explode: true,
//                       // explodeIndex: 0,
//                       dataSource: data,
//                       xValueMapper: (ChartData data, _) => data.day,
//                       yValueMapper: (ChartData data, _) => data.price,
//                       dataLabelMapper: (ChartData data, _) => data.text,
//                       dataLabelSettings: const DataLabelSettings(
//                           isVisible: true,
//                           textStyle: TextStyle(color: Colors.white),
//                           labelPosition: ChartDataLabelPosition.outside)),
//                 ],
//               ),
//               SfCircularChart(
//                 title: ChartTitle(
//                   text: 'CircularChart DoughnutSeries',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 series: <DoughnutSeries<ChartData, int>>[
//                   DoughnutSeries<ChartData, int>(
//                     // explode: true,
//                     // explodeIndex: 0,
//                     dataSource: data,
//                     xValueMapper: (ChartData data, _) => data.day,
//                     yValueMapper: (ChartData data, _) => data.price,
//                     dataLabelMapper: (ChartData data, _) => data.text,
//                     dataLabelSettings: const DataLabelSettings(
//                         isVisible: true,
//                         textStyle: TextStyle(color: Colors.white),
//                         labelPosition: ChartDataLabelPosition.outside),
//                   ),
//                 ],
//               ),
//               SfCartesianChart(
//                 primaryXAxis: CategoryAxis(),
//                 // Chart title
//                 title: ChartTitle(
//                   text: 'Linear series',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 // Enable legend
//                 // legend: Legend(isVisible: true),
//                 // Enable tooltip
//                 // tooltipBehavior: _tooltipBehavior,

//                 series: <LineSeries<SalesData, String>>[
//                   LineSeries<SalesData, String>(
//                       dataSource: <SalesData>[
//                         SalesData('Jan', 0),
//                         SalesData('Feb', 28),
//                         SalesData('Mar', 34),
//                         SalesData('Apr', 32),
//                         SalesData('May', 40)
//                       ],
//                       xValueMapper: (SalesData sales, _) => sales.year,
//                       yValueMapper: (SalesData sales, _) => sales.sales,
//                       // Enable data label
//                       dataLabelSettings: const DataLabelSettings(
//                           isVisible: true,
//                           textStyle: TextStyle(color: Colors.white)))
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: Text(
//                   "SparkLineChart",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//               ),
//               SfSparkLineChart(
//                 axisLineColor: Colors.white,
//                 //Enable the trackball
//                 trackball: const SparkChartTrackball(
//                     activationMode: SparkChartActivationMode.tap),
//                 //Enable marker
//                 marker: const SparkChartMarker(
//                     displayMode: SparkChartMarkerDisplayMode.all),
//                 //Enable data label
//                 labelDisplayMode: SparkChartLabelDisplayMode.all,
//                 labelStyle: const TextStyle(color: Colors.white),
//                 data: const <double>[
//                   1,
//                   5,
//                   -6,
//                   0,
//                   1,
//                   -2,
//                   7,
//                   -7,
//                   -4,
//                   -10,
//                   13,
//                   -6,
//                   7,
//                   5,
//                   11,
//                   5,
//                   3
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.all(15.0),
//                 child: Text(
//                   "ColumnChart",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//               ),
//               SfCartesianChart(
//                 // Columns will be rendered back to back
//                 enableSideBySideSeriesPlacement: false,
//                 series: <ChartSeries<ChartDataa, int>>[
//                   ColumnSeries<ChartDataa, int>(
//                       dataSource: chartDataa,
//                       xValueMapper: (ChartDataa data, _) => data.x,
//                       yValueMapper: (ChartDataa data, _) => data.y),
//                   ColumnSeries<ChartDataa, int>(
//                       opacity: 0.9,
//                       width: 0.4,
//                       dataSource: chartDataa,
//                       xValueMapper: (ChartDataa data, _) => data.x,
//                       yValueMapper: (ChartDataa data, _) => data.y1)
//                 ],
//               ),
//               SfCartesianChart(
//                 title: ChartTitle(
//                   text: 'StackedLine',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 primaryXAxis: CategoryAxis(),
//                 series: <ChartSeries>[
//                   StackedLineSeries<ChartData1, String>(
//                       groupName: 'Group A',
//                       dataLabelSettings: const DataLabelSettings(
//                           isVisible: true,
//                           showCumulativeValues: true,
//                           useSeriesColor: true),
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y1),
//                   StackedLineSeries<ChartData1, String>(
//                       groupName: 'Group B',
//                       dataLabelSettings: const DataLabelSettings(
//                           isVisible: true,
//                           showCumulativeValues: true,
//                           useSeriesColor: true),
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y2),
//                   StackedLineSeries<ChartData1, String>(
//                       groupName: 'Group A',
//                       dataLabelSettings: const DataLabelSettings(
//                           isVisible: true,
//                           showCumulativeValues: true,
//                           useSeriesColor: true),
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y3),
//                 ],
//               ),
//               SfCartesianChart(
//                 title: ChartTitle(
//                   text: 'StackedArea',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 primaryXAxis: CategoryAxis(),
//                 series: <ChartSeries>[
//                   StackedAreaSeries<ChartData1, String>(
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y1),
//                   StackedAreaSeries<ChartData1, String>(
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y2),
//                   StackedAreaSeries<ChartData1, String>(
//                       dataSource: chartData1,
//                       xValueMapper: (ChartData1 data, _) => data.x,
//                       yValueMapper: (ChartData1 data, _) => data.y3),
//                 ],
//               ),
//               SfCircularChart(
//                 title: ChartTitle(
//                   text: 'RadialBar',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 series: <RadialBarSeries<ChartData2, int>>[
//                   RadialBarSeries<ChartData2, int>(
//                     useSeriesColor: true,
//                     trackOpacity: 0.3,
//                     cornerStyle: CornerStyle.bothCurve,
//                     dataSource: chartData2,
//                     pointRadiusMapper: (ChartData2 data, _) => data.x,
//                     pointColorMapper: (ChartData2 data, _) => data.color,
//                     xValueMapper: (ChartData2 sales, _) => sales.z,
//                     yValueMapper: (ChartData2 sales, _) => sales.y,
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40),
//                 child: SfPyramidChart(
//                     title: ChartTitle(
//                       text: 'PyramidChart',
//                       textStyle: const TextStyle(
//                         color: Color.fromARGB(255, 132, 200, 255),
//                       ),
//                     ),
//                     // Enables the legend
//                     legend: Legend(
//                         isVisible: true,
//                         position: LegendPosition.bottom,
//                         textStyle: const TextStyle(
//                           color: Color.fromARGB(255, 132, 200, 255),
//                         )),
//                     series: PyramidSeries<ChartData3, String>(
//                         dataSource: chartData3,
//                         xValueMapper: (ChartData3 data, _) => data.x,
//                         yValueMapper: (ChartData3 data, _) => data.y,
//                         dataLabelSettings:
//                             const DataLabelSettings(isVisible: true))),
//               ),
//               SfCartesianChart(
//                 title: ChartTitle(
//                   text: 'StepArea StepLine',
//                   textStyle: const TextStyle(
//                     color: Color.fromARGB(255, 132, 200, 255),
//                   ),
//                 ),
//                 plotAreaBorderWidth: 0,
//                 primaryYAxis: NumericAxis(isVisible: false),
//                 primaryXAxis: DateTimeAxis(isVisible: false),
//                 series: <ChartSeries>[
//                   // Renders step line chart
//                   StepAreaSeries<ChartData4, DateTime>(
//                       gradient: LinearGradient(
//                         colors: [
//                           AppStyle.spline_color,
//                           AppStyle.bg_color.withAlpha(150),
//                         ],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                       ),
//                       dataSource: chartData4,
//                       xValueMapper: (ChartData4 data, _) => DateTime(data.x),
//                       yValueMapper: (ChartData4 data, _) => data.y),
//                   StepLineSeries<ChartData4, DateTime>(
//                       color: AppStyle.accent_color,
//                       dataSource: chartData4,
//                       xValueMapper: (ChartData4 data, _) => DateTime(data.x),
//                       yValueMapper: (ChartData4 data, _) => data.y)
//                 ],
//               ),
//               Container(
//                 height: 100,
//                 child: SfCartesianChart(
//                     palette: [
//                       Colors.blueAccent,
//                       Colors.white,
//                       Colors.green,
//                       Colors.red,
//                       Colors.grey,
//                       Colors.black,
//                     ],
//                     legend: Legend(
//                       isVisible: true,
//                     ),
//                     plotAreaBorderWidth: 0,
//                     primaryYAxis: NumericAxis(isVisible: false),
//                     // title: ChartTitle(
//                     //   text: 'StackedBar100Series',
//                     //   textStyle: const TextStyle(
//                     //     color: Color.fromARGB(255, 132, 200, 255),
//                     //   ),
//                     // ),
//                     primaryXAxis: CategoryAxis(isVisible: false),
//                     series: <ChartSeries>[
//                       StackedBar100Series<ChartDataR, String>(
//                           legendIconType: LegendIconType.horizontalLine,
//                           width: 1,
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               bottomLeft: Radius.circular(10)),
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y),
//                       StackedBar100Series<ChartDataR, String>(
//                           isVisibleInLegend: false,
//                           width: 1,
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y2),
//                       StackedBar100Series<ChartDataR, String>(
//                           width: 1,
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y3),
//                       StackedBar100Series<ChartDataR, String>(
//                           width: 1,
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y4),
//                       StackedBar100Series<ChartDataR, String>(
//                           width: 1,
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y5),
//                       StackedBar100Series<ChartDataR, String>(
//                           width: 1,
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(10),
//                               bottomRight: Radius.circular(10)),
//                           dataSource: chartDataR,
//                           xValueMapper: (ChartDataR data, _) => data.x,
//                           yValueMapper: (ChartDataR data, _) => data.y6)
//                     ]),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   int day = 0;
//   double price = 0;
//   String text = "";
//   ChartData(this.day, this.price, this.text);
// }

// class ChartDataR {
//   final String x;
//   final num y;
//   final num y2;
//   final num y3;
//   final num y4;
//   final num y5;
//   final num y6;
//   ChartDataR(this.x, this.y, this.y2, this.y3, this.y4, this.y5, this.y6);
// }

// class SalesData {
//   SalesData(this.year, this.sales);
//   final String year;
//   final double sales;
// }

// class ChartDataa {
//   ChartDataa(this.x, this.y, this.y1);
//   final int x;
//   final double y;
//   final double y1;
// }

// class ChartData1 {
//   ChartData1(this.x, this.y1, this.y2, this.y3, this.y4);
//   final String x;
//   final int y1;
//   final int y2;
//   final int y3;
//   final int y4;
// }

// class ChartData2 {
//   ChartData2(this.x, this.y, this.color, this.z);
//   final int z;
//   final String x;
//   final double y;
//   final Color color;
// }

// class ChartData3 {
//   ChartData3(this.x, this.y);
//   final String x;
//   final double y;
// }

// class ChartData4 {
//   ChartData4(
//     this.x,
//     this.y,
//   );
//   final int x;
//   final double y;
// }