import 'package:dash_board/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'range_option.dart';

class AllExpensiveHeader extends StatelessWidget {
  const AllExpensiveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20(context),
        ),
         const Expanded(
          child:  SizedBox(),
        ),
        const RangeOption(),
      ],
    );
  }
}

