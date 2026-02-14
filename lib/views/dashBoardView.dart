
import 'package:flutter/material.dart';
import 'package:responsive_dashboard1/layouts/TabletLayout.dart';
import 'package:responsive_dashboard1/widgets/CustomDrawer.dart';
import 'package:responsive_dashboard1/widgets/adaptive_layout_widget.dart';

import '../layouts/DashBoardMobileLayout.dart';
import '../layouts/desktopLayout.dart';

class dashBoardView extends StatefulWidget {
  const dashBoardView({Key? key}) : super(key: key);

  @override
  State<dashBoardView> createState() => _dashBoardViewState();
}

class _dashBoardViewState extends State<dashBoardView> {
  GlobalKey<ScaffoldState>scaffoldKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width<800 ?AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
             scaffoldKey.currentState!.openDrawer();

        }, icon: Icon(Icons.menu)),
      ):null,
      drawer: MediaQuery.sizeOf(context).width<800 ?CustomDrawer():null ,
      body: AdaptiveLayout(mobileLayout: (context) => DashBoardMobileLayout(), tabletLayout: (context) => DashBoardTabletLayout(), desktopLayout: (context)=>DesctopLayout()),
    );
  }
}
