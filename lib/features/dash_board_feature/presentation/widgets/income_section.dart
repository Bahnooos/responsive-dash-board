import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_background_container.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/fl_chart_section.dart';
import 'package:flutter/material.dart';

import 'income_details.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackfroundContainer(
      child:  Column(
        children: [
           IncomeSectionHeader(),
           Expanded(
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(child: MyChart()),
                 Expanded(child: IncomeDetails()),
               ],
             ),
           ),
        ],
      ),
    );
  }
}



