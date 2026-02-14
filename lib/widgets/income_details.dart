import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      color: Color(0xFF208BC7),
      title: 'Design service',
      value: '%40',
    ),
    ItemDetailsModel(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      value: '%25',
    ),
    ItemDetailsModel(
      color: Color(0xFF064060),
      title: 'Product royalti',
      value: '%20',
    ),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return
      Column(children: items.map((e)=>ItemDetails(itemDetailsModel: e)).toList(),);

      ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>ItemDetails(itemDetailsModel: items[index]),);


  }
}
