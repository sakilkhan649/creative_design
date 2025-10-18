import 'dart:async';

import 'package:get/get.dart';
import 'package:onboarding/Routes/Routespages.dart';

class SplashController extends GetxController {
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.offAllNamed(Routes.ondoardingpage);
    });
  }
}
