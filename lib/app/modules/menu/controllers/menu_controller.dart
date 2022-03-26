import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gebu_client/app/modules/history/views/history_view.dart';
import 'package:gebu_client/app/modules/home/views/home_view.dart';
import 'package:gebu_client/app/modules/order/views/order_view.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../order/controllers/order_controller.dart';

class MenuController extends GetxController {
  final orderC = Get.put(OrderController());
  final argument = Get.arguments;
  PersistentTabController tabController =
      PersistentTabController(initialIndex: 0);

  List<Widget> tabItemScreens() {
    return [
      OrderView(),
      HistoryView(),
      HomeView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.cart),
        title: ("Order"),
        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemOrange,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.clock),
        title: ("History"),
        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemOrange,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeOrange,
        inactiveColorPrimary: CupertinoColors.systemOrange,
      ),
    ];
  }

  @override
  void onInit() {
    super.onInit();
  }
}
