import 'package:get/get.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class OrderController extends GetxController {
  final isSelectedJob = false.obs;
  final allJob = false.obs;
  final count = 0.obs;

  final date = "Select the date".obs;
  final timeStart = "6.00".obs;
  final timeEnd = "10.00".obs;
  var twillioFlutter = TwilioFlutter(
    accountSid: 'AC98aeb5d25ddbed881e66f546f6a1ab5d',
    authToken: '36474c842a4cd10346467bc75a261423',
    twilioNumber: '+14233974815',
  );
  @override
  void onInit() {
    super.onInit();
  }

  void sendWhatsapp() async {
    await twillioFlutter.sendWhatsApp(
        toNumber: "+6281266931095", messageBody: "Hello");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
