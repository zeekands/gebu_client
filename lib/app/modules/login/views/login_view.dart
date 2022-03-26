import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/app/routes/app_pages.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:gebu_client/components/google_fonts.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/home_header.png'),
            Padding(
              padding: EdgeInsets.all(30.r),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Get.height / 1.8,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 30.w, right: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextMonserratBold(
                        text: "Login",
                        fontSize: 40.sp,
                        textColour: Colors.black,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextMonserratNormal(
                        text:
                            "Halo GEBU client, silahkan login untuk mengakses akun anda!",
                        fontSize: 16.sp,
                        textColour: Colors.black,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextMonserratNormal(
                        text: "Email",
                        fontSize: 16.sp,
                        textColour: Colors.black,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Masukkan email anda",
                          focusColor: mainOrange,
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextMonserratNormal(
                        text: "Password",
                        fontSize: 16.sp,
                        textColour: Colors.black,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusColor: mainOrange,
                          hintText: "Masukkan password anda",
                          hintStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: Get.width,
                        height: 70.h,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: mainOrange,
                          onPressed: () {
                            Get.toNamed(Routes.MENU);
                          },
                          child: TextMonserratBold(
                            text: "Login",
                            fontSize: 16.sp,
                            textColour: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
