import 'package:dash_board/core/utils/dash_board_adaptive_layout.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout());
  }
}
