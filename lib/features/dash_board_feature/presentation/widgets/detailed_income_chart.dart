import 'package:dash_board/core/utils/app_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailedIncomeChart> {
  int activeIndix = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChart()));
  }

  PieChartData getPieChart() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndix =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: activeIndix == 0 ? null : Colors.white),
             titlePositionPercentageOffset:activeIndix == 0 ? 1.5 :null,
            value:  40,
            radius: activeIndix == 0 ? 60 : 50,
            title:activeIndix == 0 ? 'Design service' :'40%',
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: activeIndix == 1 ? null : Colors.white),
                             titlePositionPercentageOffset:activeIndix == 1 ? 1.5 :null,

            title: activeIndix == 1 ?'Other' : '22%',
            value: 22,
            radius: activeIndix == 1 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: activeIndix == 2 ? null : Colors.white),
                             titlePositionPercentageOffset:activeIndix == 2 ? 1.6 :null,

            title:activeIndix == 2? 'Product royalti':'20%',
            value: 20,
            radius: activeIndix == 2 ? 60 : 50,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titleStyle: AppStyle.styleMedium16(context)
                .copyWith(color: activeIndix == 3 ? null : Colors.white),
                             titlePositionPercentageOffset:activeIndix == 3 ? 1.3 :null,

            title:activeIndix == 3 ? 'Design product' :'25%',
            value: 25,
            radius: activeIndix == 3 ? 60 : 50,
            color: const Color(0xff4EB7F2),
          ),
        ]);
  }
}
