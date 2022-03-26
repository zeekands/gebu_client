import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(scaffoldBackgroundColor: mainBlack),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
