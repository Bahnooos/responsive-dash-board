import 'package:dash_board/core/utils/app_images.dart';
import 'package:dash_board/features/dash_board_feature/presentation/models/drawer_item_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/models/user_info_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

import 'custom_user_info_list_tile.dart';

import 'drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com'),
           
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
