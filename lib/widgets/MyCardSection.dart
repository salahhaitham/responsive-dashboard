
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import 'CardPageView.dart';
import 'Dots Indicator.dart';

class MycardSection extends StatefulWidget {
  const MycardSection({Key? key}) : super(key: key);

  @override
  State<MycardSection> createState() => _MycardSectionState();
}

class _MycardSectionState extends State<MycardSection> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My card", style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        CardPageView(pageController: pageController),
        SizedBox(height: 20),
        DotsIndicator(currentpage: currentpage),
      ],
    );
  }
}