
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import 'TransactionHistoryHeader.dart';
import 'TransactionHistoryListView.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height:16 ,),
        TransactionHistoryListView()
      ],
    );
  }
}