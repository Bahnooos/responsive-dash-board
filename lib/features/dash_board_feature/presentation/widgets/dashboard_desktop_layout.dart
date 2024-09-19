import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_drawer.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/income_section.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/my_card_and_transction_section.dart';

import 'package:flutter/material.dart';

import 'tablet_layout.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: TabletLayout(),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(height: 40,),
                MyCardAndTransctionSection(),
                SizedBox(height: 24,),
                Expanded(child: IncomeSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
