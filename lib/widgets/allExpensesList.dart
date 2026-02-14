import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../layouts/desktopLayout.dart' show allExpensesItem;
import '../models/expensesItemModel.dart';
import 'allExpensesItem.dart';

class allExpensesList extends StatefulWidget {
  const allExpensesList({Key? key}) : super(key: key);

  @override
  State<allExpensesList> createState() => _allExpensesListState();
}

class _allExpensesListState extends State<allExpensesList> {
  final List<ExpensesItemModel> items = [
    ExpensesItemModel(
      Assets.imagesBalance,
      "Balance",
      "April 2022",
      r"$20,129",
    ),
    ExpensesItemModel(Assets.imagesIncome, "Income", "April 2022", r"$20,129"),
    ExpensesItemModel(
      Assets.imagesExpenses,
      "Expenses",
      "April 2022",
      r"$20,129",
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: allExpensesItem(
              isActive: activeIndex == 0,
              expensesItemModel: items[0],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: allExpensesItem(
              isActive: activeIndex == 1,
              expensesItemModel: items[1],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: allExpensesItem(
              isActive: activeIndex == 2,
              expensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );

    Row(
      children: items.asMap().entries.map((e) {
        final index = e.key;
        final model = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: allExpensesItem(
                  isActive: activeIndex == index,
                  expensesItemModel: model,
                ),
              ),
            ),
          );
        } else
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: allExpensesItem(
                isActive: activeIndex == index,
                expensesItemModel: model,
              ),
            ),
          );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }
}
