
import 'package:flutter/material.dart';

import 'Custom_Container.dart';
import 'LatestTransaction.dart';
import 'QuickInvoiceForm.dart';
import 'QuickInvoiceHeader.dart';

class QuickInvoice extends StatelessWidget {
  const   QuickInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_BackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickIncvoiceHeader(),

          LatestTransaction(),
          SizedBox(height: 24),
          Divider(color: Color(0xffF1F1F1)),
          SizedBox(height: 24),
          QuickInvoiceForm(),

        ],
      ),
    );
  }
}
