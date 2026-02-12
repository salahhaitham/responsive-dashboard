import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/Utils/app_styles.dart';
import 'package:responsive_dashboard1/models/userInfoModel.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';
import 'package:responsive_dashboard1/widgets/itemInfoListTile.dart';

import '../generated/assets.dart';
import 'LatestTransaction.dart';
import 'QuickInvoice.dart';
import 'QuickInvoiceForm.dart';
import 'QuickInvoiceHeader.dart';
import 'allExpenses.dart';

class allExpensesAndQuickInvoice extends StatelessWidget {
  const allExpensesAndQuickInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [allExpenses(), SizedBox(height: 24), QuickInvoice()],
    );
  }
}




