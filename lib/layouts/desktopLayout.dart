import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/models/TransactionItemModel.dart';
import '../Utils/app_styles.dart';
import '../widgets/CustomDrawer.dart';
import '../widgets/MyCardsAndTransctionHistorySection.dart';
import '../widgets/TransactionHistoryHeader.dart';
import '../widgets/TransactionHistoryListView.dart';
import '../widgets/allExpensesAndQuickInvoice.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: const Row(
        children: [
          Expanded(child: CustomDrawer(), flex: 1),
          SizedBox(width: 32),

          Expanded(flex: 2, child: allExpensesAndQuickInvoice()),
          SizedBox(width: 32),
          Expanded(child: MyCardsAndTransctionHistorySection(), flex: 1),
        ],
      ),
    );
  }
}





