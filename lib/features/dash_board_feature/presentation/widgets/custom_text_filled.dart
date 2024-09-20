import 'package:dash_board/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFilled extends StatelessWidget {
  const CustomTextFilled({super.key, required this.hint});
 final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText:hint ,
        hintStyle: AppStyle.styleRegular16(context).copyWith(color:const Color(0xFFAAAAAA),),
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        border: outlineBorder(),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFFAFAFA),
          ),
          borderRadius: BorderRadius.circular(12));
  }
}
