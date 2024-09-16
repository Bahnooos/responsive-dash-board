import 'package:dash_board/features/dash_board_feature/presentation/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: List.generate(3, (index)=>  Padding(
        padding:const  EdgeInsets.only(right: 6.0),
        child: CustomDotIndicator(isActive: index==currentPageIndex),
      )),
    );
  }
}