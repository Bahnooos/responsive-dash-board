import 'package:dash_board/features/dash_board_feature/presentation/models/transaction_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isdrawing: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amount: r'$2,000',
        isdrawing: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isdrawing: false),
  ];

  @override
  Widget build(BuildContext context) {

    return   Column(children: items.map((e)=> TransactionItem(transactionModel: e)).toList(),);
 
  }
}
