import 'package:dash_board/features/dash_board_feature/presentation/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  
  });

 

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
   final List<DrawerItemModel> items = [
   const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashBoard),
   const DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
   const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
   const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
  const  DrawerItemModel(title: 'My Investments', image: Assets.imagesInvestment),
  ];

  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: items.length,
      itemBuilder: (context, index) {
         return GestureDetector(
          onTap: () {
            if (activeIndex !=index) {
              setState(() {
                activeIndex=index;
              });
            }
          },
           child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child:  DrawerItem(drawerItemModel: items[index],isActive: activeIndex==index,),
            ),
         );
          }
    );
  }
}
