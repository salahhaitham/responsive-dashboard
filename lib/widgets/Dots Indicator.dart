
import 'package:flutter/material.dart';

import '../layouts/desktopLayout.dart';
import 'CustomDotIndicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key? key, required this.currentpage}) : super(key: key);
  final int currentpage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
            (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: currentpage == index),
        ),
      ),
    );
  }
}