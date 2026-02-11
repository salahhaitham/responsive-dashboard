
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import 'addContainer.dart';
import 'allExpensesAndQuickInvoice.dart';

class QuickIncvoiceHeader extends StatelessWidget {
  const QuickIncvoiceHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        addContainer(),
      ],
    );
  }
}