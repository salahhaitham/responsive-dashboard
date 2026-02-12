
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import '../models/TransactionItemModel.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({Key? key, required this.transactionItemModel})
      : super(key: key);
  final TransactionItemModel transactionItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionItemModel.transactionSubject,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(context),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItemModel.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}