
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class InComeHeader extends StatelessWidget {
  const InComeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child:  Icon(
                  Icons.arrow_back_ios,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}