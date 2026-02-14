import 'package:flutter/material.dart';

import 'Custom_Container.dart';
import 'allExpensesHeader.dart';
import 'allExpensesList.dart';

class allExpenses extends StatelessWidget {
  const allExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_BackgroundContainer(
      child: Column(
        children: [
            allExpensesHeader(),
          SizedBox(height: 16),
          allExpensesList(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
