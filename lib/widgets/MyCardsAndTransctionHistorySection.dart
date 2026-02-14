import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';

import '../Utils/app_styles.dart';
import '../layouts/desktopLayout.dart';
import 'CardPageView.dart';
import 'Dots Indicator.dart';
import 'MyCardSection.dart';
import 'TransactionHistorySection.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Custom_BackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MycardSection(),

          Divider(height: 40, color: Color(0xffF1F1F1)),

          TransactionHistorySection(),
        ],
      ),
    );
  }
}


