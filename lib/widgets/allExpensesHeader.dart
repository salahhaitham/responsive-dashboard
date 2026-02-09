
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class allExpensesHeader extends StatelessWidget {
  const allExpensesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
              side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            child: Row(
              children: [
                Text("Monthly", style: AppStyles.styleMedium16(context)),
                SizedBox(width: 18),
                Transform.rotate(
                  angle: -1.5643423,
                  child: Icon(Icons.arrow_back_ios_rounded),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}