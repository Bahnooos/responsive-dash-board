import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_background_container.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/my_card_section.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/transaction.dart';
import 'package:flutter/material.dart';

class MyCardAndTransctionSection extends StatelessWidget {
  const MyCardAndTransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackfroundContainer(
      child: Column(children: [
        MyCardSection(),
        Divider(height: 40,),
        Transaction(),
      ],),
    );
  }
}