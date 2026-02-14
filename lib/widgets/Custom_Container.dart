
import 'package:flutter/material.dart';

class Custom_BackgroundContainer extends StatelessWidget {
  const Custom_BackgroundContainer({
    super.key, required this.child, this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
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
