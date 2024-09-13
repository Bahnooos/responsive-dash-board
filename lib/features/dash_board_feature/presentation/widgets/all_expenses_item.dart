import 'package:dash_board/features/dash_board_feature/presentation/models/all_expenses_item_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/inactive_and_active_selected_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return  isSelected ? ActiveSelectedItem(itemModel: itemModel): InActiveSelectedItem(itemModel: itemModel);
  }
}
