import 'package:dash_board/core/utils/app_style.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/transaction_items_list_view.dart';
import 'package:flutter/material.dart';

import 'transaction_history_header.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       const TransactionItemsListView(),
      ],
    );
  }
}
