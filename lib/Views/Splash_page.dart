import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:get/get.dart';
import 'package:onboarding/Controllers/SplashController.dart';

class SplashPage extends StatelessWidget {
   SplashPage({super.key});

   final controller = Get.put(SplashController());

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.green,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child:CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/picone.png"),
          ),
        ),
      ),
    );
  }
}
