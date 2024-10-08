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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyle.styleSemiBold16(context),
              )),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyle.styleRegular14(context),
              )),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyle.styleSemiBold24(context),
              )),
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
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: deprecated_member_use
          AllExpensesItemHeader(
            image: itemModel.image,
            // ignore: deprecated_member_use
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.title,
                style: AppStyle.styleSemiBold16(context)
                    .copyWith(color: Colors.white),
              )),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.date,
                style: AppStyle.styleRegular14(context)
                    .copyWith(color: const Color(0xffFAFAFA)),
              )),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyle.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
