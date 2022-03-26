import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/menu/bindings/menu_binding.dart';
import '../modules/menu/views/menu_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/order_summary/bindings/order_summary_binding.dart';
import '../modules/order_summary/views/order_summary_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/request_mitra/bindings/request_mitra_binding.dart';
import '../modules/request_mitra/views/request_mitra_view.dart';
import '../modules/topup/bindings/topup_binding.dart';
import '../modules/topup/views/topup_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.TOPUP,
      page: () => TopupView(),
      binding: TopupBinding(),
    ),
    GetPage(
      name: _Paths.REQUEST_MITRA,
      page: () => RequestMitraView(),
      binding: RequestMitraBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_SUMMARY,
      page: () => OrderSummaryView(),
      binding: OrderSummaryBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
