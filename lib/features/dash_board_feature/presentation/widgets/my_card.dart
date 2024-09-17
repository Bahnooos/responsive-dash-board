import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.only(left: 31, right: 42, top: 12),
          title: Text(
            'Name card',
            style: AppStyle.styleRegular16.copyWith(color: Colors.white),
          ),
          subtitle: const Text(
            'Syah Bandi',
            style: AppStyle.styleMedium20,
          ),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style:
                    AppStyle.styleSemiBold24.copyWith(color: Colors.white),
              ),
              Text('12/20',
                  style:
                      AppStyle.styleRegular16.copyWith(color: Colors.white))
            ],
          ),
        ),
     
      ],
    );
  }
}
