import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../models/income_item_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          color: incomeItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title:  Text(incomeItemModel.title, style: AppStyle.styleRegular16(context)),
      trailing:  Text(incomeItemModel.value, style: AppStyle.styleMedium16(context)),
    );
  }
}
