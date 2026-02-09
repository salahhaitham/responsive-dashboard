
import 'package:flutter/material.dart';

import '../models/DrawerItemModel.dart';
import 'Active_and_InActive_DrawerItem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.drawerItemModel, required this.isActive}) : super(key: key);
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ?ActiveDrawerItem(drawerItemModel: drawerItemModel):InActiveDrawerItem(title: drawerItemModel.title,image: drawerItemModel.image,);
  }
}