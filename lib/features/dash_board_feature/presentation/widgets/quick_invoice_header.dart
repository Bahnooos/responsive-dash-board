import 'package:dash_board/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyle.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration:const ShapeDecoration(
         color: Color(0xffFAFAFA),
         shape: OvalBorder(),
          
          ),
          child:const Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}
