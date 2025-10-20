import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Routes/Routespages.dart';

import 'CustomButton.dart';
import 'CustomText.dart';

class Customdialog extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  Customdialog({
    super.key,
    required this.title,
    required this.imagePath,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 280,
            width: double.maxFinite,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Align(
                  alignment: Alignment.center,
                  child: Customtext(
                    text: "Password Changed!",
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    maxlines: 1,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Customtext(
                    text: "Your can now use your new password to login ",
                    color: Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    maxlines: 1,
                    textline: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Customtext(
                    text: "to your account.",
                    color: Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    maxlines: 1,
                    textline: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "Login",
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.toNamed(Routes.singinpage);
                    // print("Email: ${emailController.text}");
                    // print("Password: ${passwordController.text}");
                  },
                ),
              ],
            ),
          ),

          // 🔹 Circle image on top
          Positioned(
            top: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // foregroundColor: Colors.white,
              radius: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
