
import 'package:flutter/material.dart';

import '../models/TransactionItemModel.dart';
import 'TransactionHistoryItem.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({Key? key}) : super(key: key);

  static const List<TransactionItemModel> items = [
    TransactionItemModel(
      amount: r"$20,129",
      date: "13 Apr, 2022 ",
      isWithdrawal: true,
      transactionSubject: "Cash Withdrawal",
    ),
    TransactionItemModel(
      amount: r"$2,000",
      date: "13 Apr, 2022 ",
      isWithdrawal: false,
      transactionSubject: "Landing Page project",
    ),
    TransactionItemModel(
      amount: r"$20,129",
      date: "13 Apr, 2022 ",
      isWithdrawal: false,
      transactionSubject: "Juni Mobile App project",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: TransactionHistoryItem(transactionItemModel: items[index]),
          ),
    );
  }
}

