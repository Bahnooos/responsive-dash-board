import 'package:dash_board/core/utils/app_style.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(height: 24,),
         const LatestTransactionListView(),
      
      ],
    );
  }
}
