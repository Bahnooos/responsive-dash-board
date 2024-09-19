import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_card_and_transction_section.dart';
import 'tablet_layout.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
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
    );
  }
}
