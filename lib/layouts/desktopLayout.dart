import 'package:flutter/material.dart';
import '../widgets/CustomDrawer.dart';
import '../widgets/MyCardSection.dart';
import '../widgets/allExpensesAndQuickInvoice.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer(), flex: 1),
        SizedBox(width: 32),

        Expanded(flex: 2, child: allExpensesAndQuickInvoice()),
        SizedBox(width: 32),
        Expanded(child: MyCardSection(), flex: 1),
      ],
    );
  }
}




