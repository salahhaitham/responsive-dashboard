
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class allExpensesItemHeader extends StatelessWidget {
  const allExpensesItemHeader({
    Key? key,
    this.backgroundColor,
    this.imageColor,
    required this.image,
  }) : super(key: key);
  final Color? backgroundColor, imageColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.567434 * 2,
          child: Icon(Icons.arrow_back_ios_new_rounded,color: imageColor??Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}