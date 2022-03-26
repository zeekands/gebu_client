import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/app/routes/app_pages.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:gebu_client/components/google_fonts.dart';
import 'package:get/get.dart';

import '../../order/views/order_view.dart';
import '../controllers/request_mitra_controller.dart';

class RequestMitraView extends GetView<RequestMitraController> {
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
                            SizedBox(height: 5.h),
                            TextMonserratBold(
                              text: "Request Partner",
                              fontSize: 30.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 8.h),
                            TextMonserratNormal(
                              text:
                                  "Choose our Gebu partner to fill the part time jobs and discover Gebu partners.",
                              fontSize: 14.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(height: 20.h),
                            Container(
                              width: Get.width,
                              height: 41.h,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20.w),
                                  Icon(
                                    Icons.search,
                                    color: mainBlack,
                                  ),
                                  SizedBox(width: 20.w),
                                  TextMonserratNormal(
                                    text:
                                        "Search for your favourite GEBU partner",
                                    fontSize: 14.sp,
                                    textColour: Colors.grey[600],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemBuilder: (_, i) {
                                  final selected = false.obs;
                                  return Obx(
                                    () => Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: GestureDetector(
                                        onTap: () {
                                          selected.value = !selected.value;
                                          selected.value
                                              ? controller.selectedMitra.add(i)
                                              : controller.selectedMitra
                                                  .remove(i);
                                        },
                                        child: Container(
                                          width: 373.w,
                                          height: 96.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                            color: selected.value
                                                ? Colors.green
                                                : Colors.grey[300],
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(9.r),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 80.w,
                                                  height: 80.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 20.w),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      TextMonserratBold(
                                                        text: "John Doe",
                                                        fontSize: 14.sp,
                                                        textColour: mainBlack,
                                                      ),
                                                      SizedBox(height: 5.h),
                                                      TextMonserratNormal(
                                                        text:
                                                            "Cashier, SPG, Packaging Helper",
                                                        fontSize: 11.sp,
                                                        textColour: mainBlack,
                                                      ),
                                                      SizedBox(height: 5.h),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            CupertinoIcons
                                                                .star_fill,
                                                            color: mainBlack,
                                                            size: 14.sp,
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          TextMonserratBold(
                                                            text: "4.5",
                                                            fontSize: 14.sp,
                                                            textColour:
                                                                mainBlack,
                                                          ),
                                                          Spacer(),
                                                          Icon(
                                                            CupertinoIcons
                                                                .check_mark_circled,
                                                            color: Colors.green,
                                                            size: 14.sp,
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          TextMonserratNormal(
                                                            text: "Available",
                                                            fontSize: 14.sp,
                                                            textColour:
                                                                mainBlack,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(width: 20.w),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: 20,
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
                    Get.toNamed(
                      Routes.ORDER_SUMMARY,
                      arguments: controller.selectedMitra,
                      preventDuplicates: true,
                    );
                  },
                  child: TextMonserratBold(
                    text: "Confirm partner",
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
