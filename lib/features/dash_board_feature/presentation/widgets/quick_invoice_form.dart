import 'package:dash_board/core/utils/custome_button.dart';
import 'package:flutter/material.dart';

import 'title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
              Expanded(child: CustomTitleText(title: 'Customer name', hint: 'Type customer name')),
              SizedBox(width: 16,),
              Expanded(child: CustomTitleText(title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
              Expanded(child: CustomTitleText(title: 'Item name', hint: 'Type customer name')),
              SizedBox(width: 16,),
              Expanded(child: CustomTitleText(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomeButton(backgroundColor: Colors.transparent,textColor:Color(0xFF4DB7F2),)),
            SizedBox(width: 16,),
            Expanded(child: CustomeButton()),
          ],
        ),
      ],
    );
  }
}