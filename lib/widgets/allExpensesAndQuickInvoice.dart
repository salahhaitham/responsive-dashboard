import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/Utils/app_styles.dart';
import 'package:responsive_dashboard1/models/userInfoModel.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';
import 'package:responsive_dashboard1/widgets/itemInfoListTile.dart';

import '../generated/assets.dart';
import 'LatestTransaction.dart';
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

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            QuickIncvoiceHeader(),
            SizedBox(height: 24),
            LatestTransaction(),
            SizedBox(height: 24),
            Divider(color: Color(0xffF1F1F1)),
            SizedBox(height: 24),
            QuickInvoiceForm(),
            SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}



