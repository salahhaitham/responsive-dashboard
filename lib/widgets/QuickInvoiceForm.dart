
import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'TitleTextField.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                text: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                text: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                text: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(text: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                buttonColor: Colors.white,
                text: "Add more details",
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                buttonColor: Color(0xff4EB7F2),
                text: "Send Money",
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
