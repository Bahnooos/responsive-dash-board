import 'package:dash_board/core/utils/app_images.dart';
import 'package:dash_board/features/dash_board_feature/presentation/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import 'custom_user_info_list_tile.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashBoard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
               return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child:  DrawerItem(drawerItemModel: items[index]),
                );
                }
          ),
        ],
      ),
    );
  }
}
