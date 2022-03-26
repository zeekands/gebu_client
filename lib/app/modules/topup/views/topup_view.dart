import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:gebu_client/components/rounded_button.dart';

import 'package:get/get.dart';

import '../../../../components/google_fonts.dart';
import '../../order/views/order_view.dart';
import '../controllers/topup_controller.dart';

class TopupView extends GetView<TopupController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => Scaffold(
        backgroundColor: mainBlack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 26.h),
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
                      left: 23.w,
                      right: 23.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () => Get.back(),
                                child:
                                    Image.asset('assets/images/ic_back.png')),
                            TextMonserratBold(
                              text: "Top Up",
                              fontSize: 36.sp,
                              textColour: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        TextMonserratNormal(
                          text: "Choose the amount of hours needed",
                          fontSize: 12.sp,
                          textColour: Colors.black,
                        ),
                        SizedBox(
                          height: 39.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TopUpItem(
                              path: "assets/images/ic_hour.png",
                              price: "Rp. 650.000",
                              isSelected: true,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            TopUpItem(
                              path: "assets/images/ic_hours.png",
                              price: "Rp. 3.000.000",
                              isSelected: false,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 47.h,
                        ),
                        Center(
                          child: RoundedButton(
                            height: 41.h,
                            text: "Continue to payment",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopUpItem extends StatelessWidget {
  final String path;
  final String price;
  final bool? isSelected;
  const TopUpItem({
    Key? key,
    required this.path,
    required this.price,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.h,
      width: 105.w,
      decoration: isSelected == true
          ? BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20.r),
            )
          : BoxDecoration(),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: 92.w,
            height: 92.h,
            decoration: BoxDecoration(
              color: mainOrange,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  path,
                  width: 51.w,
                  height: 47.h,
                ),
                TextMonserratBold(
                  text: "50 Hours",
                  fontSize: 12.sp,
                  textColour: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextMonserratBold(
            text: price,
            fontSize: 12.sp,
            textColour: Colors.black,
          ),
          SizedBox(
            height: 5.h,
          ),
          isSelected == true
              ? Image.asset("assets/images/ic_ok.png")
              : SizedBox()
        ],
      ),
    );
  }
}
