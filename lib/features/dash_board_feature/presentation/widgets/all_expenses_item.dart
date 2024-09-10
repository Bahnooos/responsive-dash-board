import 'package:dash_board/features/dash_board_feature/presentation/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';

import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
    final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child:  Column(
        children: [
          AllExpensesItemHeader( image: itemModel.image,),
        ],
      ),
    );
  }
}
