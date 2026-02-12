
import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';
import 'CustomTextField.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({Key? key, required this.text, required this.hint})
      : super(key: key);
  final String text, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
