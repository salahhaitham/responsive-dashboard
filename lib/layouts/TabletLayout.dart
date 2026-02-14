import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/widgets/allExpensesAndQuickInvoice.dart';

import '../widgets/CustomDrawer.dart';
import '../widgets/IncomeSection.dart';
import '../widgets/MyCardsAndTransctionHistorySection.dart';
import 'DashBoardMobileLayout.dart';
import 'desktopLayout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: DashBoardMobileLayout(),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}

