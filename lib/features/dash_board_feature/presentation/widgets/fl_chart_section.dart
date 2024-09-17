import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyChart> {
  int activeIndix=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChart()));
  }

  PieChartData getPieChart() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled:true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndix=pieTouchResponse?.touchedSection?.touchedSectionIndex ??-1;
          setState(() {
            
          });
        },
         ),
      sections: [
      PieChartSectionData(
        value: 40,
        radius:activeIndix==0 ? 60: 50,
        showTitle: false,
        color: const Color(0xff208CC8),
      ),
      PieChartSectionData(
        value: 22,
        radius:activeIndix==1 ?60 : 50,
        showTitle: false,
        color: const Color(0xffE2DECD),
      ),
      PieChartSectionData(
        value: 20,
        radius:activeIndix==2? 60: 50,
        showTitle: false,
        color: const Color(0xff064061),
      ),
      PieChartSectionData(
        value: 25,
        radius:activeIndix==3?60: 50,
        showTitle: false,
        color: const Color(0xff4EB7F2),
      ),
      ]);
  }
}
