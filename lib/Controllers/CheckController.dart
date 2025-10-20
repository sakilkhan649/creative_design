import 'package:get/get.dart';

class CheckController extends GetxController {
  RxBool isChecked = false.obs;
  RxInt userColor = 0.obs;

  void checkController(bool? value) {
    isChecked.value = value ?? false;
  }
}
