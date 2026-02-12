
import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';

import '../Utils/app_styles.dart';
import '../layouts/desktopLayout.dart';
import 'Dots Indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
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
          ],
        ),
      ),
    );
  }
}
