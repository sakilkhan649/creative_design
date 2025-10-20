import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Widgets/CustomDialog.dart';
import '../Controllers/passwoardController.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomText.dart';

class ChangePassPage extends StatelessWidget {
  ChangePassPage({super.key});

  final changepassController = TextEditingController();
  final changepassnewController = TextEditingController();
  final controller = Get.put(PasswordController());

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
                      text: "Reset Password",
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
                            "Please set a new password to secure your account",
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
                        text: "and regain access",
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
                      hintText: "Create a password",
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

              SizedBox(height: 15),

              Customtext(
                text: "Confirm New Password",
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
                      hintText: "Re-enter your new password",
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
                          controller.password.value =
                              !controller.password.value;
                        },
                        icon: controller.password.value
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: controller.password.value,
                  ),
                ),
              ),

              SizedBox(height: 30),

              CustomButton(
                text: "Save Changes",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => Customdialog(
                      title: "Password Changed!",
                      imagePath: "assets/checkicon.png",
                      color: Colors.green,
                    ),
                  );
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
