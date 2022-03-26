import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/components/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
                  SizedBox(height: 36.h),
                  CardInformation(),
                  SizedBox(height: 21.h),
                  GroupInformation(),
                  SizedBox(
                    height: 27.h,
                  ),
                  TextMonserratBold(
                    text: "In & Out Transactions",
                    fontSize: 12.sp,
                    textColour: Colors.black,
                  ),
                  Container(
                    height: 350.h,
                    width: Get.width,
                    child: ListView.builder(
                        itemCount: 100,
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
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextMonserratBold(
                                        text: "+ 25,000",
                                        fontSize: 12.sp,
                                        textColour: Colors.black,
                                      ),
                                      TextMonserratBold(
                                        text: "Sales",
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

class GroupInformation extends StatelessWidget {
  const GroupInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            ItemInformation(
              icon: "assets/images/icon_todays_income.png",
              tittle: "Todays Income",
              text: "Rp. 1.000.000",
            ),
            Spacer(),
            ItemInformation(
              icon: "assets/images/icon_gross_profit.png",
              tittle: "Gross profit (per month)",
              text: "Rp. 8.000.000",
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemInformation(
              icon: "assets/images/icon_expenditure.png",
              tittle: "Total Expenditure",
              text: "Rp. 1.000.000",
            ),
            Spacer(),
            ItemInformation(
              icon: "assets/images/icon_margin.png",
              tittle: "Margin",
              text: "Rp. 8.000.000",
            ),
            SizedBox(width: 19.w),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

class ItemInformation extends StatelessWidget {
  final String icon;
  final String tittle;
  final String text;
  const ItemInformation({
    Key? key,
    required this.icon,
    required this.tittle,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              icon,
              width: 35.w,
              height: 35.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextMonserratBold(
                  text: tittle,
                  fontSize: 10.sp,
                  textColour: Colors.black,
                ),
                TextMonserratNormal(
                  text: text,
                  fontSize: 10.sp,
                  textColour: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardInformation extends StatelessWidget {
  const CardInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 140.h,
        width: 379.w,
        child: Padding(
          padding: EdgeInsets.only(left: 22.h, right: 22.h),
          child: Column(
            children: [
              SizedBox(
                height: 22.h,
              ),
              Row(
                children: [
                  TextMonserratBold(
                    text: "My current quota",
                    fontSize: 13.sp,
                    textColour: Colors.black,
                  ),
                  Spacer(),
                  TextMonserratBold(
                    text: "12 Hours",
                    fontSize: 12.sp,
                    textColour: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemView(
                    icon: "assets/images/icon_plan_schedule.png",
                    text: "Plan Schedule",
                  ),
                  SizedBox(
                    width: 33.w,
                  ),
                  ItemView(
                    icon: "assets/images/icon_req_partner.png",
                    text: "Request Partner",
                  ),
                  SizedBox(
                    width: 51.w,
                  ),
                  ItemView(
                    icon: "assets/images/icon_history.png",
                    text: "History",
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final String icon;
  final String text;
  const ItemView({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            icon,
            width: 35.w,
            height: 35.w,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        TextMonserratNormal(
          text: text,
          fontSize: 12.sp,
          textColour: Colors.black,
        )
      ],
    );
  }
}

class UserHeader extends StatelessWidget {
  const UserHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            TextMonserratBold(text: "Hey Baihaki,", fontSize: 24.sp),
            TextMonserratBold(
              text: "What will you do today?",
              fontSize: 12.sp,
            ),
          ],
        ),
        Spacer(),
        ClipOval(
          child: Image.network(
            'https://picsum.photos/100/100',
            width: 50.w,
            height: 50.w,
          ),
        ),
      ],
    );
  }
}
