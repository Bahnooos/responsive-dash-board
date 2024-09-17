import 'package:dash_board/core/utils/app_style.dart';
import 'package:dash_board/features/dash_board_feature/presentation/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyle.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyle.styleSemiBold20.copyWith(
              color: transactionModel.isdrawing
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
