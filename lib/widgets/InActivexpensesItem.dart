
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import '../layouts/desktopLayout.dart';
import '../models/expensesItemModel.dart';
import 'allExpensesItemHeader.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.expensesItemModel});
  final ExpensesItemModel expensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
          side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            allExpensesItemHeader(image: expensesItemModel.image),

            SizedBox(height: 34),
            Text(
              expensesItemModel.text,
              style: AppStyles.styleSemiBold16(context),
            ),
            SizedBox(height: 8),
            Text(
              expensesItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            SizedBox(height: 16),
            Text(
              expensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}