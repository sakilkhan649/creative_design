import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/CheckController.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Controllers/passwoardController.dart';
import '../Routes/Routespages.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomText.dart';
import '../Widgets/CustomTextField.dart';

class Accountpage extends StatelessWidget {
  final String url;
  Accountpage({super.key, required this.url});

  final CheckController controller = Get.put(CheckController());

  Future<void> openLink() async {
    final uri = Uri.parse(url);
    await launchUrl(uri);
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final controllerpass = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Customtext(
                      text: "Create Your Account",
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text: "Join us to explore top Canadian-made",
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                        textline: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      child: Customtext(
                        text: "products, exclusive deals, and great rewards",
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                        textline: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 13),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Customtext(
                        text: "Select your role",
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                        textline: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.userColor.value = 0;
                                  controller.update();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: controller.userColor == 0
                                        ? Colors.green
                                        : Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "User",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: controller.userColor == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  controller.userColor.value = 1;
                                  controller.update();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 44,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: controller.userColor == 1
                                        ? Colors.green
                                        : Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Rider",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: controller.userColor == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23),
              Customtext(
                text: "Full Name",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 8),
              Customtextfield(
                controller: emailController,
                hintText: "Enter your full name",
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),

              SizedBox(height: 16),

              Customtext(
                text: "Email",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 8),
              Customtextfield(
                controller: emailController,
                hintText: "Enter your email address",
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 16),
              Customtext(
                text: "Phone",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 8),
              Customtextfield(
                controller: passwordController,
                hintText: "Enter your phone number",
                obscureText: true,
                color: Colors.black45,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 16),
              Customtext(
                text: "Password",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 8),
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
                          controllerpass.pass.value =
                              !controllerpass.pass.value;
                        },
                        icon: controllerpass.pass.value
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: controllerpass.pass.value,
                  ),
                ),
              ),

              SizedBox(height: 16),
              Customtext(
                text: "Confirm Password",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 8),

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
                          controllerpass.password.value =
                              !controllerpass.password.value;
                        },
                        icon: controllerpass.password.value
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: controllerpass.password.value,
                  ),
                ),
              ),

              SizedBox(height: 19),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: controller.isChecked.value,
                        activeColor: Colors.black,
                        onChanged: controller.checkController,
                      ),
                      Customtext(
                        text: "I agree to the ",
                        color: Colors.black45,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                      ),
                      Customtext(
                        text: "Terms and Conditions ",
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                      ),
                      Customtext(
                        text: "and",
                        color: Colors.black45,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                      ),
                      Customtext(
                        text: "Privacy Policy",
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        maxlines: 2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11),
              CustomButton(
                text: "Continue",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed(Routes.accountverify);
                  // print("Email: ${emailController.text}");
                  // print("Password: ${passwordController.text}");
                },
              ),
              SizedBox(height: 12),

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
              SizedBox(height: 12),
              CustomButton(
                text: "Continue with Google",
                backgroundColor: Colors.white,
                textColor: Colors.black,
                onPressed: openLink,
              ),
              SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtext(
                    text: "Allready have an account?",
                    color: Colors.black45,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    maxlines: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.homepage);
                    },
                    child: Customtext(
                      text: "Sign in",
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
