
import 'package:flutter/material.dart';

class Custom_Container extends StatelessWidget {
  const Custom_Container({
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
