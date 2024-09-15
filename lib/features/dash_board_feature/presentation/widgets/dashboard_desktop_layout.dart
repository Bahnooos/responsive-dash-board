import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_drawer.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/my_card.dart';
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
            flex: 2,
            child: TabletLayout(),
          ),
          Expanded(child: MyCard())
        ],
      ),
    );
  }
}

