
import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/widgets/adaptive_layout_widget.dart';

import '../layouts/desktopLayout.dart';

class dashBoardView extends StatelessWidget {
  const dashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(mobileLayout: (context) => SizedBox(), tabletLayout: (context) => SizedBox(), desktopLayout: (context)=>desctopLayout()),
    );
  }
}
