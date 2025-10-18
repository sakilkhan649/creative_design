import 'package:get/get.dart';
import 'package:onboarding/Views/Account_verify.dart';
import 'package:onboarding/Views/Accountpage.dart';
import 'package:onboarding/Views/Change_pass_page.dart';
import 'package:onboarding/Views/Forgot_page.dart';
import 'package:onboarding/Views/Home_page.dart';
import 'package:onboarding/Views/Onboarding_page.dart';
import 'package:onboarding/Views/Singin_page.dart';
import 'package:onboarding/Views/Splash_page.dart';
import 'package:onboarding/Views/Verify_page.dart';

class Dependencys{
  void dependencys(){
    Get.lazyPut(()=> OnboardingPage(),fenix: true);
    Get.lazyPut(()=> SigninPage(),fenix: true);
    Get.lazyPut(()=> ForgotPage(),fenix: true);
    Get.lazyPut(()=> VerifyPage(),fenix: true);
    Get.lazyPut(()=> ChangePassPage(),fenix: true);
    Get.lazyPut(()=> SplashPage(),fenix: true);
    Get.lazyPut(()=> AccountVerify(),fenix: true);
    Get.lazyPut(()=> HomePage(),fenix: true);
    Get.lazyPut(()=> Accountpage(url: "https://www.google.com",),fenix: true);
  }
}