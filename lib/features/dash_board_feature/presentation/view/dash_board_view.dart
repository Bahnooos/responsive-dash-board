import 'package:dash_board/core/utils/dash_board_adaptive_layout.dart';
import 'package:dash_board/core/utils/size_config.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_drawer.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/dashboard_desktop_layout.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/dashboard_mobile_layout.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width <  SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
