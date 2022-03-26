import 'package:flutter/material.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: mainBlack),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PersistentTabView(
          context,
          controller: controller.tabController,
          screens: controller.tabItemScreens(),
          items: controller.navBarsItems(),

          confineInSafeArea: true,
          backgroundColor: Colors.black, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true,
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.linear,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}
