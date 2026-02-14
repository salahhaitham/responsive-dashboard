
import 'dart:math';

import 'package:flutter/material.dart';

import '../layouts/desktopLayout.dart';
import 'Custom_Container.dart';
import 'InComeChart.dart';
import 'detailed_income_chart.dart';
import 'inComeHeader.dart';
import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Custom_BackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          InComeHeader(),

          inComeBody(),
        ],
      ),
    );
  }
}

class inComeBody extends StatelessWidget {
  const inComeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1650
        ? const Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        ))
        : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 2, child: IncomeDetails()),
      ],
    );
  }
}
