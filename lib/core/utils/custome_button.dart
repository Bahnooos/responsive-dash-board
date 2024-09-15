import 'package:dash_board/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key, this.backgroundColor,  this.textColor});
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor:backgroundColor?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child:  Text(
          'Send Money',
          style: AppStyle.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
