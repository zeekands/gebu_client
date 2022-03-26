import 'package:get/get.dart';

import '../controllers/request_mitra_controller.dart';

class RequestMitraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestMitraController>(
      () => RequestMitraController(),
    );
  }
}
