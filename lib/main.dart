import 'package:dash_board/features/dash_board_feature/presentation/view/dash_board_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoardView(),
    );
  }
}

