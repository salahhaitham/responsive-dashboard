
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/userInfoModel.dart';
import 'itemInfoListTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({Key? key}) : super(key: key);

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items.map((e)=>IntrinsicWidth(child: itemInfoListTile(userInfoModel: e))).toList()
      ),
    );

  }
}
