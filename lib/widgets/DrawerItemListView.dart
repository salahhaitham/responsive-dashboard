
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/DrawerItemModel.dart';
import 'DrawerItem.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: "DashBoard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "Trasnsaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  int activeItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          activeItem = index;
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeItem == index,
          ),
        ),
      ),
    );
  }
}