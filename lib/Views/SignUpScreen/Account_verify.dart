import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Core/AppRoutes/AppRoute.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/CustomText.dart';
import '../../Widgets/CustomVerify.dart';

class AccountVerify extends StatelessWidget {
  AccountVerify({super.key});

  final oneController = TextEditingController();
  final twoController = TextEditingController();
  final threeController = TextEditingController();
  final fourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset("assets/backicon.png"),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Customtext(
                      text: "Verify OTP",
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text:
                            "Enter your OTP which has been sent to your email",
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                        textline: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text: "and completely verify your account.",
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                        textline: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Customverify(
                      hintText: "1",
                      controller: oneController,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Customverify(
                      hintText: "2",
                      controller: twoController,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(child: Customverify(controller: threeController)),
                  SizedBox(width: 20),
                  Expanded(child: Customverify(controller: fourController)),
                ],
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.center,
                child: Customtext(
                  text: "A code has been sent to your email",
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  maxlines: 1,
                  textline: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Customtext(
                  text: "Resend in 00:57",
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  maxlines: 1,
                ),
              ),
              SizedBox(height: 25),

              CustomButton(
                text: "Verify",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed(Routes.mainpage);
                  //Get.toNamed(Routes.changepasspage);
                  // print("Email: ${emailController.text}");
                  // print("Password: ${passwordController.text}");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
