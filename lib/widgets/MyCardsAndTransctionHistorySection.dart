
import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';

import '../Utils/app_styles.dart';
import '../layouts/desktopLayout.dart';
import 'CardPageView.dart';
import 'Dots Indicator.dart';
import 'TransactionHistorySection.dart';

class MyCardsAndTransctionHistorySection extends StatefulWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  State<MyCardsAndTransctionHistorySection> createState() => _MyCardsAndTransctionHistorySectionState();
}

class _MyCardsAndTransctionHistorySectionState extends State<MyCardsAndTransctionHistorySection> {
  late PageController pageController;
  int currentpage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentpage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Custom_BackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My card", style: AppStyles.styleSemiBold20(context)),
            SizedBox(height: 20),
            CardPageView(pageController: pageController),
            SizedBox(height: 16),
            DotsIndicator(currentpage: currentpage),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Divider(color: Color(0xffF1F1F1),thickness: 1,),
            ),

            TransactionHistorySection()
          ],
        ),
      ),
    );
  }
}
