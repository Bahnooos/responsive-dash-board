import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_background_container.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/laatest_transaction.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/quick_invoice_form.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';



class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackfroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
      QuickInvoiceForm(),
      ],
    ));
  }
}
