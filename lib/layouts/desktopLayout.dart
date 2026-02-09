import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/Utils/app_styles.dart';
import 'package:responsive_dashboard1/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard1/models/DrawerItemModel.dart';

import '../widgets/Active_and_InActive_DrawerItem.dart';
import '../widgets/DrawerItem.dart';
import '../widgets/itemInfoListTile.dart';

class desctopLayout extends StatelessWidget {
  const desctopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Expanded(child: CustomDrawer())]);
  }
}

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
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              image: Assets.imagesAvatar1,
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
