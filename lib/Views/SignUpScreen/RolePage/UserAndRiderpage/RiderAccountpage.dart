import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../Controllers/CheckController/CheckController.dart';
import '../../../../Controllers/PasswordController/passwoardController.dart';
import '../../../../Core/AppRoutes/AppRoute.dart';
import '../../../../Widgets/CustomButton.dart';
import '../../../../Widgets/CustomText.dart';
import '../../../../Widgets/CustomTextField.dart';

class Rideraccountpage extends StatelessWidget {
  final String url;
  Rideraccountpage({super.key, required this.url});

  final CheckController controller = Get.put(CheckController());

  Future<void> openLink() async {
    final uri = Uri.parse(url);
    await launchUrl(uri);
  }

  //Global Variable..............
  final _formkey = GlobalKey<FormState>();

  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  final controllerpass = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Customtext(
                  text: "Full Name",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                CustomTextField(
                  keyboardType: TextInputType.text,
                  controller: fullnameController,
                  hintText: "Enter your full name",
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Name";
                    }
                    if (!RegExp(r"^[A-Za-z :]+$").hasMatch(value)) {
                      return "Enter Your Name";
                    }
                    return null;
                  },
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
                CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: "Enter your email address",
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email";
                    }
                    if (!RegExp(
                      r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
                    ).hasMatch(value)) {
                      return "Enter a valid email address";
                    }
                    return null;
                  },
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
                CustomTextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  hintText: "Enter your phone number",
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your mobile number";
                    }
                    if (!RegExp(
                      r'^(?:\+88|88)?(01[3-9]\d{8})$',
                    ).hasMatch(value)) {
                      return "Enter a valid Bangladeshi mobile number";
                    }

                    return null;
                  },
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
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        }
                        if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        }
                        if (!RegExp(
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$',
                        ).hasMatch(value)) {
                          return "Password must include upper, lower, number & special character";
                        }

                        return null;
                      },
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
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.visiblePassword,
                      controller: confirmpasswordController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password";
                        }
                        if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        }
                        if (!RegExp(
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$',
                        ).hasMatch(value)) {
                          return "Password must include upper, lower, number & special character";
                        }

                        return null;
                      },
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
                    if (_formkey.currentState!.validate()) {
                      Get.toNamed(Routes.accountverify);
                    }

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
                        if (_formkey.currentState!.validate()) {
                          Get.toNamed(Routes.mainpage);
                        }
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
      ),
    );
  }
}
