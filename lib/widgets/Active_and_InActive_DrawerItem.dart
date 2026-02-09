
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_styles.dart';
import '../models/DrawerItemModel.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(
        color: Color(0xff4EB7F2),
        width: 3.7,
      ),
    );
  }
}
class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
 required this.title, required this.image,
  });

final String title,image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.styleRegular16(context),
      ),
      leading: SvgPicture.asset(image),
    );
  }
}
