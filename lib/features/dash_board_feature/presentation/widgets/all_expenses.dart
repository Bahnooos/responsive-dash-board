import 'package:dash_board/features/dash_board_feature/presentation/widgets/all_expensess_list_view.dart';
import 'package:flutter/material.dart';

import 'all_expensive_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackfroundContainer(
      child: Column(
        children: [
          AllExpensiveHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessListView(),
        ],
      ),
    );
  }
}

