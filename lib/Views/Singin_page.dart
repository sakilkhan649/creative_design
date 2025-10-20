import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/passwoardController.dart';
import 'package:onboarding/Routes/Routespages.dart';
import 'package:onboarding/Widgets/CustomButton.dart';
import 'package:onboarding/Widgets/CustomText.dart';
import 'package:onboarding/Widgets/CustomTextField.dart';
import 'package:url_launcher/url_launcher.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final String url = "https://www.google.com";

  Future<void> openLink() async {
    final Uri urle = Uri.parse(url);
    await launchUrl(urle);
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final controller = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      text: "Welcome Back",
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text: "Log in to continue shopping and enjoy ",
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
                        text: "personalized offers ",
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
                text: "Email or Phone Number",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 5),
              Customtextfield(
                controller: emailController,
                hintText: "Enter your email address",
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),

              SizedBox(height: 30),

              Customtext(
                text: "Password",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 5),

              Obx(
                () => Container(
                  height: 48,
                  width: double.maxFinite,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ), // যখন ফোকাস করবে তখন রঙ পাল্টাবে
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.pass.value = !controller.pass.value;
                        },
                        icon: controller.pass.value
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: controller.pass.value,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.forgotpage);
                  },
                  child: Customtext(
                    text: "Forgot password?",
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    maxlines: 1,
                  ),
                ),
              ),

              SizedBox(height: 10),

              CustomButton(
                text: "Sign In",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed(Routes.homepage);
                  // print("Email: ${emailController.text}");
                  // print("Password: ${passwordController.text}");
                },
              ),

              SizedBox(height: 10),

              Align(
                alignment: Alignment.center,
                child: Customtext(
                  text: "or",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  maxlines: 1,
                ),
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Continue with Google",
                backgroundColor: Colors.white,
                textColor: Colors.black,
                onPressed: openLink,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtext(
                    text: "Don’t have an account?",
                    color: Colors.black45,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    maxlines: 1,
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.accountpage);
                    },
                    child: Customtext(
                      text: "Create Account",
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
