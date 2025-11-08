import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Servicess/ApiServicess.dart';

class ApiController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future login() async {
    final response = await ApiServicess.login(
      email: emailController.text,
      password: passwordController.text,
    );
    if(response.statusCode != 200){
      Get.snackbar("Erorr", "Something is Wrong");
    }

    final decoded=jsonDecode(response.body);
    decoded["token"];


    print(response.body);
  }
}
