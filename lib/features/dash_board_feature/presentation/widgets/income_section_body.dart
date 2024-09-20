import 'package:dash_board/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'detailed_income_chart.dart';
import 'fl_chart_section.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Padding(
          padding:  EdgeInsets.symmetric(vertical: 16,horizontal: 24),
          child:  DetailedIncomeChart(),
        )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: MyChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
