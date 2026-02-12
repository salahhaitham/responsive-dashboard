
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Text(
          "see all",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
