import 'package:dash_board/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardInfo extends StatelessWidget {
  const MyCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image:
              const DecorationImage(image: AssetImage(Assets.imagesCardBack)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child:const MyCard(),
      ),
    );
  }
}

