import 'package:dash_board/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'range_option.dart';

class AllExpensiveHeader extends StatelessWidget {
  const AllExpensiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20,
        ),
         Expanded(
          child: SizedBox(),
        ),
        RangeOption(),
      ],
    );
  }
}

