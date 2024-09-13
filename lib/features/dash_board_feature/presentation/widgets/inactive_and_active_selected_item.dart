import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../models/all_expenses_item_model.dart';
import 'all_expenses_item_header.dart';

class InActiveSelectedItem extends StatelessWidget {
  const InActiveSelectedItem({
    super.key,
    required this.itemModel,
  });

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader( image: itemModel.image,),
         const SizedBox(height: 34,),
         Text(itemModel.title,style: AppStyle.styleSemiBold16,),
         const SizedBox(height: 8,),
         Text(itemModel.date,style: AppStyle.styleRegular14,),
         const SizedBox(height: 16,),
         Text(itemModel.price,style: AppStyle.styleSemiBold24,),
        ],
      ),
    );
  }
}

class ActiveSelectedItem extends StatelessWidget {
  const ActiveSelectedItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color:const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          
            borderRadius: BorderRadius.circular(12)),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader( image: itemModel.image,),
         const SizedBox(height: 34,),
         Text(itemModel.title,style: AppStyle.styleSemiBold16.copyWith(color: Colors.white),),
         const SizedBox(height: 8,),
         Text(itemModel.date,style: AppStyle.styleRegular14.copyWith(color:const Color(0xffFAFAFA)),),
         const SizedBox(height: 16,),
         Text(itemModel.price,style: AppStyle.styleSemiBold24.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}
