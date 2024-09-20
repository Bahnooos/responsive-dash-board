import 'package:dash_board/core/utils/app_style.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_text_filled.dart';
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({super.key, required this.title, required this.hint});
  final String title,hint;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16(context),
        ),
       const SizedBox(height: 12,),
        CustomTextFilled(hint: hint,),
      ],
    );
  }
}
