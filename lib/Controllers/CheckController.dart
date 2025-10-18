import 'package:get/get.dart';

class CheckController extends GetxController {
  RxBool isChecked = false.obs;

  void checkController(bool? value) {
    isChecked.value = value ?? false;
  }
}
