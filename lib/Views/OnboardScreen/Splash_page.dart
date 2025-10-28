import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:get/get.dart';
import 'package:onboarding/Controllers/OnboardingController/SplashController.dart';
import 'package:onboarding/Widgets/CustomText.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final shortestSide = size.shortestSide;

    final containerSize = shortestSide * 0.45;
    final finalSize = containerSize.clamp(140.0, 240.0);

    final fontSize = (finalSize * 0.24).clamp(35.0, 60.0);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.green,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.green,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: finalSize,
            width: finalSize,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black26,
              //     blurRadius: 10,
              //     offset: Offset(0, 4),
              //   ),
              // ],
            ),
            // child: ClipOval(
            //             child: Image.asset(
            //               "assets/picone.png",
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            child: Customtext(
              text: "logo",
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              maxlines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
