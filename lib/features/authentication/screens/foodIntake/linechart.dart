import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



class DailyDataChart extends StatefulWidget {
  const DailyDataChart({super.key});


  @override
  State<DailyDataChart> createState() => _DailyDataChartState();
}

class _DailyDataChartState extends State<DailyDataChart> {


  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(

      )
    );
  }
}
