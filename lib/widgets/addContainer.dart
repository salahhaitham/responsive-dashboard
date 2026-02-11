
import 'package:flutter/material.dart';

class addContainer extends StatelessWidget {
  const addContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: ShapeDecoration(
        color: Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(28),
        ),
      ),
      child: Icon(Icons.add, color: Color(0xff4EB7F2)),
    );
  }
}
