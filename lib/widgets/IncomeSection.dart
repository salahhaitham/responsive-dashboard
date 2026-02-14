
import 'dart:math';

import 'package:flutter/material.dart';

import '../layouts/desktopLayout.dart';
import 'Custom_Container.dart';
import 'InComeChart.dart';
import 'detailed_income_chart.dart';
import 'inComeBody.dart';
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

