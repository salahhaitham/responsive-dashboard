
import 'package:flutter/material.dart';

import 'InComeChart.dart';
import 'detailed_income_chart.dart';
import 'income_details.dart';

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
