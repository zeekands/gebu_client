import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../components/google_fonts.dart';
import '../../home/views/home_view.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/home_header.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 650.h,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 74.h),
                  UserHeader(),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextMonserratBold(
                    text: "In & Out Order History",
                    fontSize: 12.sp,
                    textColour: Colors.black,
                  ),
                  Flexible(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.r),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/100/100',
                                      width: 50.w,
                                      height: 50.w,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextMonserratBold(
                                        text: "Beulah Ferguso",
                                        fontSize: 12.sp,
                                        textColour: Colors.black,
                                      ),
                                      TextMonserratNormal(
                                        text: "20 Decembe 2021",
                                        fontSize: 10.sp,
                                        textColour: Colors.black,
                                      ),
                                      Icon(
                                        CupertinoIcons.star_fill,
                                        size: 10.sp,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextMonserratBold(
                                        text: "10 Hours",
                                        fontSize: 12.sp,
                                        textColour: Colors.black,
                                      ),
                                      TextMonserratBold(
                                        text: "Part Time",
                                        fontSize: 10.sp,
                                        textColour: Colors.green,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
