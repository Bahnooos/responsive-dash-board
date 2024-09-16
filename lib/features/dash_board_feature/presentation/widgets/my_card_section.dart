import 'package:dash_board/core/utils/app_style.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/dots_indicator.dart';
import 'package:dash_board/features/dash_board_feature/presentation/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex=0;


  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() {
          currentPageIndex=pageController.page!.toInt();

      setState(() {
      
    });
    },);
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(
          width: 420,
          child: Text('My card', style: AppStyle.styleSemiBold20),
        ),
      const  SizedBox(
          height: 20,
        ),
        MyCardPageView(pageController: pageController,),
      const  SizedBox(
          height: 20,
        ),
        DotsIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}
