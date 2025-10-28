import 'dart:async';

import 'package:get/get.dart';

import '../../Core/AppRoutes/AppRoute.dart';

class SplashController extends GetxController {
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.offAllNamed(Routes.ondoardingpage);
    });
  }
}
