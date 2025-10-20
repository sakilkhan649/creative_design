import 'package:get/get.dart';

class Secondslider extends GetxController {
  RxDouble slidermode = .4.obs;
  modechenge(double changemode) {
    slidermode.value = changemode;
  }
}
