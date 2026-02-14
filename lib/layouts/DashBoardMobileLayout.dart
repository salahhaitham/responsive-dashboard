import 'package:flutter/material.dart';

import '../widgets/IncomeSection.dart';
import '../widgets/MyCardsAndTransctionHistorySection.dart';
import '../widgets/allExpensesAndQuickInvoice.dart';
import 'desktopLayout.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          allExpensesAndQuickInvoice(),
          SizedBox(height: 20),
          MyCardsAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
          SizedBox(height: 24,)
        ],
      ),
    );
  }
}
