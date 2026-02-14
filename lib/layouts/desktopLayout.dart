import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/models/TransactionItemModel.dart';
import 'package:responsive_dashboard1/widgets/Custom_Container.dart';
import 'package:responsive_dashboard1/widgets/MyCardSection.dart';
import 'package:responsive_dashboard1/widgets/income_details.dart';
import '../Utils/app_styles.dart';
import '../widgets/CustomDrawer.dart';
import '../widgets/IncomeSection.dart';
import '../widgets/MyCardsAndTransctionHistorySection.dart';
import '../widgets/TransactionHistoryHeader.dart';
import '../widgets/TransactionHistoryListView.dart';
import '../widgets/allExpensesAndQuickInvoice.dart';
import '../widgets/inComeHeader.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: const Row(
        children: [
          Expanded(child: CustomDrawer(), flex: 1),
          SizedBox(width: 32),

          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: allExpensesAndQuickInvoice(),
                          )),
                      SizedBox(width: 24),
                      Expanded(
                        flex: 1,
                        child: Column(

                          children: [
                            SizedBox(height: 35,),
                            MyCardsAndTransctionHistorySection(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
