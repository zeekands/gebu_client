import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../components/colors.dart';
import '../../../../components/google_fonts.dart';
import '../../order/views/order_view.dart';
import '../controllers/order_summary_controller.dart';

class OrderSummaryView extends GetView<OrderSummaryController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 26.w, right: 26.w, top: 26.h),
                    child: Header(),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      color: Colors.white,
                      height: Get.height,
                      width: 428.w,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          right: 24.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15.h),
                            //backButton(),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 40.r,
                                height: 40.r,
                                decoration: BoxDecoration(
                                  color: mainOrange,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                                child: Icon(
                                  CupertinoIcons.back,
                                  color: mainBlack,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TextMonserratBold(
                              text: "Order Summary",
                              fontSize: 30.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 30.h),
                            Container(
                              width: 400.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: mainBlack,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 16.w, right: 16.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    Center(
                                      child: TextMonserratBold(
                                        text: "Company detail",
                                        fontSize: 16.sp,
                                        textColour: mainBlack,
                                      ),
                                    ),
                                    SizedBox(height: 25.h),
                                    TextMonserratBold(
                                      text: "Company Name",
                                      fontSize: 14.sp,
                                      textColour: mainBlack,
                                    ),
                                    SizedBox(height: 5.h),
                                    TextMonserratNormal(
                                      text: "zeekands.corp",
                                      fontSize: 12.sp,
                                      textColour: mainBlack,
                                    ),
                                    SizedBox(height: 15.h),
                                    TextMonserratBold(
                                      text: "Company Address",
                                      fontSize: 14.sp,
                                      textColour: mainBlack,
                                    ),
                                    SizedBox(height: 5.h),
                                    TextMonserratNormal(
                                      text:
                                          "Jl. Punai, Kp. Melayu, Kec. Sukajadi, Kota Pekanbaru, Riau 28122",
                                      fontSize: 12.sp,
                                      textColour: mainBlack,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30.h),
                            TextDivider(text: "Part time details"),
                            SizedBox(height: 10.h),
                            TextMonserratNormal(
                                text: "Day and Date Scheduled",
                                fontSize: 12.sp,
                                textColour: mainBlack),
                            SizedBox(height: 5.h),
                            TextMonserratNormal(
                              text: "Monday, May 20, 2020",
                              fontSize: 12.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 15.h),
                            TextMonserratNormal(
                                text: "Time Scheduled",
                                fontSize: 12.sp,
                                textColour: mainBlack),
                            SizedBox(height: 5.h),
                            TextMonserratNormal(
                              text: "10:00 AM - 12:00 PM",
                              fontSize: 12.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 20.h),
                            TextDivider(text: "Partner details"),
                            SizedBox(height: 10.h),
                            TextMonserratBold(
                                text: "Cashier",
                                fontSize: 12.sp,
                                textColour: mainBlack),
                            SizedBox(height: 5.h),
                            TextMonserratNormal(
                              text: "Zeekands",
                              fontSize: 12.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 15.h),
                            TextMonserratBold(
                                text: "Waiters",
                                fontSize: 12.sp,
                                textColour: mainBlack),

                            SizedBox(height: 5.h),
                            TextMonserratNormal(
                              text: "Zeekands",
                              fontSize: 12.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 5.h),
                            TextMonserratNormal(
                              text: "Monalisa",
                              fontSize: 12.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 5.h),
                            TextDivider(text: "Total hours"),
                            SizedBox(height: 10.h),
                            Center(
                              child: TextMonserratBold(
                                text: "10 hours",
                                fontSize: 20.sp,
                                textColour: mainBlack,
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
            Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: mainOrange,
                    minimumSize: Size(299.w, 50.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 10.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed(Routes.MENU);
                    Get.snackbar(
                      "Success",
                      "Order placed successfully",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: mainOrange,
                      borderRadius: 20.0,
                      margin: EdgeInsets.all(20.0),
                    );
                  },
                  child: TextMonserratBold(
                    text: "Order",
                    fontSize: 16.sp,
                    textColour: Colors.white,
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
