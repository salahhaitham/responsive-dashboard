
import 'package:flutter/material.dart';

import '../models/expensesItemModel.dart';
import 'ActiveExpensesItem.dart';
import 'InActivexpensesItem.dart';

class allExpensesItem extends StatelessWidget {
  const allExpensesItem({
    Key? key,
    required this.isActive,
    required this.expensesItemModel,
  }) : super(key: key);
  final bool isActive;
  final ExpensesItemModel expensesItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(expensesItemModel: expensesItemModel)
        : InActiveExpensesItem(expensesItemModel: expensesItemModel);
  }
}