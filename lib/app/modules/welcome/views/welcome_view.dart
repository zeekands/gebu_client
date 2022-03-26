import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/app/routes/app_pages.dart';
import 'package:gebu_client/components/google_fonts.dart';
import 'package:gebu_client/components/rounded_button.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF002434)),
      home: ScreenUtilInit(
        designSize: Size(428, 926),
        builder: () => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 55.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 44.h,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                  ),
                  TextMonserratBold(
                    text: "#GEBUKINAJA",
                    fontSize: 9.sp,
                    textColour: Colors.white,
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  TextMonserratBold(
                    text: "HOLA,\nOWNERS!",
                    fontSize: 40.sp,
                    textColour: Colors.white,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextMonserratBold(
                    text: "Let us Help your bussiness,\nWith GEBU Ecosystem",
                    fontSize: 14.sp,
                    textColour: Colors.white,
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  RoundedButton(
                    text: "Gebu Point of Sales",
                    width: 189.w,
                    height: 35.h,
                    onPressed: () {
                      Get.toNamed(Routes.MENU);
                    },
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  RoundedButton(
                    text: "Gebu Point of Sales",
                    width: 189.w,
                    height: 35.h,
                    onPressed: () {
                      Get.toNamed(Routes.MENU);
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/maskot.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
