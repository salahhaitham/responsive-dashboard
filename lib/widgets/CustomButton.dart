
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.text,
    this.textColor,
  });
  final Color? buttonColor, textColor;

  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(
            context,
          ).copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}


