
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/app_styles.dart';

class itemInfoListTile extends StatelessWidget {
  const itemInfoListTile({Key? key, required this.title, required this.subtitle, required this.image}) : super(key: key);
  final String title,subtitle,image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title,style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(subtitle,style: AppStyles.styleRegular12(context),),
      ),
    );
  }
}
