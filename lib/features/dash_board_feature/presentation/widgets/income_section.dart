import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackfroundContainer(
      child:   Column(
        children: [
            IncomeSectionHeader(),
            IncomeSectionBody(),
        ],
      ),
    );
  }
}

