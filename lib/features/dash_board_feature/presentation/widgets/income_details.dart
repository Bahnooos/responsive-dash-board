
import 'package:dash_board/features/dash_board_feature/presentation/models/income_item_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items=[
    IncomeItemModel(color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemModel(color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemModel(color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeItemModel(color:  Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeItemModel: items[index]);
      },);
  }
}

