import 'package:dash_board/features/dash_board_feature/presentation/models/all_expenses_item_model.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class AllExpensessListView extends StatefulWidget {
  const AllExpensessListView({super.key});


  @override
  State<AllExpensessListView> createState() => _AllExpensessListViewState();
}

class _AllExpensessListViewState extends State<AllExpensessListView> {
     final List<AllExpensesItemModel> items = [
   const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
   const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
   const AllExpensesItemModel(
        image: Assets.imagesExpneses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AllExpensesItem(
                  isSelected: selectedIndex==index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                            isSelected: selectedIndex==index,
                            itemModel: item,
                          ),
              ));
        }
      }).toList(),
    );
  }
  
  void updateIndex(int index) {
    if (selectedIndex!=index) {
  setState(() {
    selectedIndex=index;
  });
}
  }
}
