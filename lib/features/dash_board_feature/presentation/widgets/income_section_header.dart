import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyle.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyle.styleMedium16(context),
              ),
              Transform.rotate(
                  angle: -1.5708,
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
