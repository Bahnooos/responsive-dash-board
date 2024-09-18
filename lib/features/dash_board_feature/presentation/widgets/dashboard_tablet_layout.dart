import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_card_and_transction_section.dart';
import 'tablet_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TabletLayout(),
                    SizedBox(
                      height: 40,
                    ),
                    MyCardAndTransctionSection(),
                    SizedBox(
                      height: 24,
                    ),
                    IncomeSection(),
                  ],
                ),
              )),
          SizedBox(
            width: 32,
          ),
        ],
      ),
    );
  }
}
