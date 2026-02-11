import 'package:flutter/material.dart';

import 'Custom_Container.dart';
import 'allExpensesHeader.dart';
import 'allExpensesList.dart';

class allExpenses extends StatelessWidget {
  const allExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
      child: Column(
        children: [
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: allExpensesHeader(),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: allExpensesList(),
          ),
        ],
      ),
    );
  }
}
