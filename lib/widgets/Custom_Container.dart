
import 'package:flutter/material.dart';

class Custom_BackgroundContainer extends StatelessWidget {
  const Custom_BackgroundContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        color: Colors.white,
      ),
      child:child,
    );
  }
}
