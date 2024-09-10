import 'package:dash_board/core/utils/app_images.dart';
import 'package:dash_board/features/dash_board_feature/presentation/models/all_expenses_item_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

import 'all_expensive_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
      ),
      child:const Column(
        children: [
          AllExpensiveHeader(),
          AllExpensesItem(itemModel: AllExpensesItemModel(image: Assets.imagesIncome, title: 'Income', date: 'April 2022', price: r'$20,129'),),
        ],
      ),
    );
  }
}