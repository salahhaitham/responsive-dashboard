

import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/models/userInfoModel.dart';

import '../generated/assets.dart';
import '../layouts/desktopLayout.dart';
import 'Active_and_InActive_DrawerItem.dart';
import 'DrawerItemListView.dart';
import 'itemInfoListTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: itemInfoListTile(
              userInfoModel: UserInfoModel(image: Assets.imagesAvatar1, title: "Lekan Okeowo", subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),


          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  title: "Setting system",
                  image: Assets.imagesSettings,
                ),
                SizedBox(height: 20),
                InActiveDrawerItem(
                  title: "Logout account",
                  image: Assets.imagesLogout,
                ),
                SizedBox(height: 48),
              ],
            ),
          ),

        ],
      ),
    );
  }
}