
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import 'LatestTransactionListView.dart';
import 'allExpensesAndQuickInvoice.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        LatestTransactionListView()
      ],
    );
  }
}