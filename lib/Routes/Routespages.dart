import 'package:get/get.dart';
import 'package:onboarding/Views/Account_verify.dart';
import 'package:onboarding/Views/Accountpage.dart';
import 'package:onboarding/Views/Change_pass_page.dart';
import 'package:onboarding/Views/Forgot_page.dart';
import 'package:onboarding/Views/Home_page.dart';
import 'package:onboarding/Views/Location_page.dart';
import 'package:onboarding/Views/Onboarding_page.dart';
import 'package:onboarding/Views/Rider_page.dart';
import 'package:onboarding/Views/SecondRider_page.dart';
import 'package:onboarding/Views/Singin_page.dart';
import 'package:onboarding/Views/Splash_page.dart';
import 'package:onboarding/Views/Summery_page.dart';
import 'package:onboarding/Views/Verify_page.dart';
import 'package:onboarding/Views/parcel_page.dart';

class Routes{
  static const String ondoardingpage = "/Onboardingpage";
  static const String singinpage = "/Singinpage";
  static const String forgotpage = "/Forgotpage";
  static const String verifypage = "/Verifypage";
  static const String changepasspage = "/Changepasspage";
  static const String splashpage = "/Splashpage";
  static const String accountpage = "/Accountpage";
  static const String accountverify = "/Accountverify";
  static const String homepage = "/Homepage";
  static const String locationpage = "/Locationpage";
  static const String parcelpage = "/Parcelpage";
  static const String summerypage = "/Summerypage";
  static const String riderpag = "/Riderpage";
  static const String secondriderpage = "/Secondriderpage";

  static List<GetPage> routes=[
    GetPage(name: ondoardingpage, page: ()=> OnboardingPage()),
    GetPage(name: singinpage, page: ()=> SigninPage()),
    GetPage(name: forgotpage, page: ()=> ForgotPage()),
    GetPage(name: verifypage, page: ()=> VerifyPage()),
    GetPage(name: changepasspage, page: ()=> ChangePassPage()),
    GetPage(name: splashpage, page: ()=> SplashPage()),
    GetPage(name: accountverify, page: ()=> AccountVerify()),
    GetPage(name: homepage, page: ()=> HomePage()),
    GetPage(name: locationpage, page: ()=> LocationPage()),
    GetPage(name: parcelpage, page: ()=> ParcelPage()),
    GetPage(name: summerypage, page: ()=> SummeryPage()),
    GetPage(name: riderpag, page: ()=> RiderPage()),
    GetPage(name: secondriderpage, page: ()=> SecondriderPage()),
    GetPage(name: accountpage, page: ()=> Accountpage(url: "https://www.google.com",)),
  ];


}