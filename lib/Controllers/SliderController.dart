import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderController extends GetxController{

  Rx<RangeValues> rangeValues = RangeValues(20, 80).obs;

  void setRange(RangeValues values) {
    rangeValues.value = values;
  }


  // RxDouble opacity=.4.obs;
  //
  // setOpacity(double value){
  //   opacity.value=value;
  // }
}