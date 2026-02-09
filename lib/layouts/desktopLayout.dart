import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/Utils/app_styles.dart';
import 'package:responsive_dashboard1/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard1/models/DrawerItemModel.dart';

import '../models/expensesItemModel.dart';
import '../widgets/Active_and_InActive_DrawerItem.dart';
import '../widgets/CustomDrawer.dart';
import '../widgets/DrawerItem.dart';
import '../widgets/allExpensesHeader.dart';
import '../widgets/allExpensesList.dart';
import '../widgets/itemInfoListTile.dart';

class desctopLayout extends StatelessWidget {
  const desctopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: allExpenses()),
      ],
    );
  }
}

class allExpenses extends StatelessWidget {
  const allExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 20),
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: allExpensesHeader(),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: allExpensesList(),
            ),
          ],
        ),
      ),
    );
  }
}









