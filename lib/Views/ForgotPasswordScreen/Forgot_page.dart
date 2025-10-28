import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Core/AppRoutes/AppRoute.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/CustomText.dart';
import '../../Widgets/CustomTextField.dart';

class ForgotPage extends StatelessWidget {
  ForgotPage({super.key});

  final phoneController = TextEditingController();

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
                      text: "Forgot Password",
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text: "Enter the phone number associated with",
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
                        text: "your account and we’ll send you OTP to reset",
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
                        text: "your password",
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

              SizedBox(height: 30),

              Customtext(
                text: "Phone",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 5),
              Customtextfield(
                controller: phoneController,
                hintText: "Ex : +980010101010",
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),

              SizedBox(height: 30),

              CustomButton(
                text: "Confirm",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed(Routes.verifypage);
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
