import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gebu_client/app/routes/app_pages.dart';
import 'package:gebu_client/components/colors.dart';
import 'package:gebu_client/components/google_fonts.dart';
import 'package:gebu_client/components/rounded_button.dart';
import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: () => Scaffold(
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
                        TextMonserratBold(
                          text: "Order",
                          fontSize: 36.sp,
                          textColour: Colors.black,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextMonserratNormal(
                          text:
                              "Choose the position you need to fill the part time jobs and discover Gebu partners.",
                          fontSize: 14.sp,
                          textColour: Colors.black,
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        QuotaInformation(),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextDivider(
                          text: " Choose your part time specialty ",
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SelectPartTime(),
                        SizedBox(
                          height: 11.h,
                        ),
                        TextDivider(
                          text: "Select date and hours for order",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 126.w,
                              height: 41.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: TextMonserratNormal(
                                  text: "Daily",
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              width: 126.w,
                              height: 41.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Colors.grey[400],
                              ),
                              child: Center(
                                child: TextMonserratNormal(
                                  text: "Schedule",
                                  fontSize: 12.sp,
                                  textColour: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime.now(),
                                  theme: DatePickerTheme(
                                      headerColor: mainOrange,
                                      backgroundColor: mainBlack,
                                      itemStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      doneStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16)), onChanged: (date) {
                                print('change $date in time zone ' +
                                    date.timeZoneOffset.inHours.toString());
                              }, onConfirm: (date) {
                                controller.date.value = date.day.toString() +
                                    "/" +
                                    date.month.toString() +
                                    "/" +
                                    date.year.toString();
                                print('confirm $date');
                              },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.en);
                            },
                            child: Container(
                              width: 379.w,
                              height: 41.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Colors.grey[400],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Row(
                                  children: [
                                    TextMonserratNormal(
                                      text: controller.date.value,
                                      fontSize: 14.sp,
                                      textColour: Colors.grey[200],
                                    ),
                                    Spacer(),
                                    Icon(
                                      CupertinoIcons.forward,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 21.h,
                        ),
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: GestureDetector(
                                  onTap: () {
                                    DatePicker.showTimePicker(context,
                                        showTitleActions: true,
                                        theme: DatePickerTheme(
                                            headerColor: mainOrange,
                                            backgroundColor: mainBlack,
                                            itemStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            doneStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        onChanged: (date) {
                                      print('change $date in time zone ' +
                                          date.timeZoneOffset.inHours
                                              .toString());
                                    }, onConfirm: (date) {
                                      controller.timeStart.value =
                                          date.hour.toString() + ":00";
                                      print('confirm $date');
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en);
                                  },
                                  child: Container(
                                    height: 41.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Colors.grey[400],
                                    ),
                                    child: Center(
                                      child: TextMonserratBold(
                                        text: controller.timeStart.value,
                                        fontSize: 12.sp,
                                        textColour: mainBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              TextMonserratNormal(
                                text: "To",
                                fontSize: 12.sp,
                                textColour: mainBlack,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Flexible(
                                child: GestureDetector(
                                  onTap: () {
                                    DatePicker.showTimePicker(context,
                                        showTitleActions: true,
                                        theme: DatePickerTheme(
                                            headerColor: mainOrange,
                                            backgroundColor: mainBlack,
                                            itemStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            doneStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        onChanged: (date) {
                                      print('change $date in time zone ' +
                                          date.timeZoneOffset.inHours
                                              .toString());
                                    }, onConfirm: (date) {
                                      controller.timeEnd.value =
                                          date.hour.toString() + ":00";
                                      print('confirm $date');
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en);
                                  },
                                  child: Container(
                                    height: 41.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Colors.grey[400],
                                    ),
                                    child: Center(
                                      child: TextMonserratBold(
                                        text: controller.timeEnd.value,
                                        fontSize: 12.sp,
                                        textColour: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                        // Center(
                        //   child: TextMonserratNormal(
                        //     text: "add more days with different times",
                        //     fontSize: 11.sp,
                        //     textColour: mainBlack,
                        //   ),
                        // ),
                        // Center(
                        //   child: Icon(
                        //     CupertinoIcons.add_circled_solid,
                        //     color: mainOrange,
                        //     size: 30.r,
                        //   ),
                        // ),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextDivider(text: "Request our gebu Partner?"),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextMonserratBold(
                              text: "Yes",
                              fontSize: 14.sp,
                              textColour: mainBlack,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            TextMonserratNormal(
                              text: "No",
                              fontSize: 14.sp,
                              textColour: mainBlack,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        //confirm button
                        Center(
                          child: RoundedButton(
                            height: 41.h,
                            text: "Confirm Schedule",
                            onPressed: () {
                              Get.toNamed(Routes.REQUEST_MITRA);
                            },
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
      ),
    );
  }
}

class PartTimeJob {
  final String name;
  final String image;
  final bool isSelected;
  PartTimeJob(
      {required this.name, required this.image, required this.isSelected});
}

class SelectPartTime extends StatelessWidget {
  const SelectPartTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final partTimeJob = [
      PartTimeJob(
        name: "Waiters",
        image: "assets/images/ic_waiter.png",
        isSelected: false,
      ),
      PartTimeJob(
        name: "Cashier",
        image: "assets/images/ic_cashier.png",
        isSelected: false,
      ),
      PartTimeJob(
        name: "SPG/SPB",
        image: "assets/images/ic_spg.png",
        isSelected: false,
      ),
      PartTimeJob(
        name: "Helper",
        image: "assets/images/ic_pack_helper.png",
        isSelected: false,
      ),
      PartTimeJob(
        name: "Data entry",
        image: "assets/images/ic_waiter.png",
        isSelected: false,
      ),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final job in partTimeJob)
              Builder(builder: (context) {
                final isSelected = false.obs;

                return Obx(
                  () => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          isSelected.value = !isSelected.value;
                        },
                        child: PartTimeItem(
                          title: job.name,
                          path: job.image,
                          isSelected: isSelected.value,
                        ),
                      ),
                    ],
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }
}

class PartTimeItem extends StatelessWidget {
  final String path;
  final String title;
  final bool? isSelected;
  const PartTimeItem({
    Key? key,
    required this.path,
    required this.title,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119.h,
      width: 79.w,
      decoration: isSelected == true
          ? BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(10.r),
            )
          : BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          ClipOval(
            child: Image.asset(
              path,
              width: 48.w,
              height: 48.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextMonserratNormal(
            text: title,
            fontSize: 12.sp,
            textColour: mainBlack,
          ),
          Spacer(),
          isSelected == true
              ? Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 20.r,
                )
              : SizedBox(),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 1.h,
            color: mainBlack,
          ),
        ),
        TextMonserratNormal(
          text: text,
          fontSize: 12.sp,
          textColour: Colors.black,
        ),
        Flexible(
          child: Container(
            height: 1.h,
            color: mainBlack,
          ),
        ),
      ],
    );
  }
}

class QuotaInformation extends StatelessWidget {
  const QuotaInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: mainBlack,
        ),
        height: 85.h,
        width: 358.w,
        child: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: mainOrange,
                ),
                height: 62.h,
                width: 109.w,
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextMonserratNormal(
                        text: "Current Quota",
                        fontSize: 12.sp,
                        textColour: Colors.black,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            size: 17.w,
                            color: Colors.white,
                          ),
                          TextMonserratBold(
                            text: "2 Hours",
                            fontSize: 12.sp,
                            textColour: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextMonserratNormal(
                    text: "Quota Used",
                    fontSize: 12.sp,
                    textColour: mainOrange,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextMonserratBold(
                    text: "36 Hours",
                    fontSize: 12.sp,
                    textColour: mainOrange,
                  )
                ],
              ),
              SizedBox(
                width: 26.w,
              ),
              Container(
                width: 1.w,
                height: 56.h,
                color: mainOrange,
              ),
              SizedBox(
                width: 37.w,
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.TOPUP),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.plus,
                      color: mainOrange,
                      size: 30.r,
                    ),
                    TextMonserratNormal(text: "Top Up", fontSize: 12.sp)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: ScreenUtil().setWidth(100),
          height: ScreenUtil().setHeight(100),
        ),
        Spacer(),
        Icon(
          CupertinoIcons.person_circle,
          color: Colors.orange,
          size: ScreenUtil().setSp(40),
        ),
      ],
    );
  }
}
