import 'package:get/get.dart';
import 'package:onboarding/Views/ForgotPasswordScreen/Change_pass_page.dart';
import 'package:onboarding/Views/ForgotPasswordScreen/Forgot_page.dart';
import 'package:onboarding/Views/HomeScreen/Home_page.dart';
import 'package:onboarding/Views/ChooseLocationScreen/Location_page.dart';
import 'package:onboarding/Views/MainScreen/Mainpage.dart';
import 'package:onboarding/Views/OnboardScreen/Onboarding_page.dart';
import 'package:onboarding/Views/BottomNavthreeScreen/Profilepage.dart';
import 'package:onboarding/Views/SearchingRiderScreen/Rider_page.dart';
import 'package:onboarding/Views/BottomNavthreeScreen/Searchpage.dart';
import 'package:onboarding/Views/RiderScreen/SecondRider_page.dart';
import 'package:onboarding/Views/SignInScreen/Singin_page.dart';
import 'package:onboarding/Views/OnboardScreen/Splash_page.dart';
import 'package:onboarding/Views/SummeryScreen/Summery_page.dart';
import 'package:onboarding/Views/ForgotPasswordScreen/Verify_page.dart';
import 'package:onboarding/Views/ParcelDetailsScreen/parcel_page.dart';
import '../../Controllers/BottomNavigationController/BottomController.dart';
import '../../Views/BottomNavthreeScreen/Favoritepage.dart';
import '../../Views/SignUpScreen/Account_verify.dart';
import '../../Views/SignUpScreen/Accountpage.dart';


final BottomNavController navController = Get.put(BottomNavController());

int currentIndex = navController.selectedIndex.value;

class Routes {
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
  static const String searchpage = "/Searchpage";
  static const String favoritepage = "/Favoritepage";
  static const String profilepage = "/Profilepage";
  static const String mainpage = "/Mainpage";

  static List<GetPage> routes = [
    GetPage(name: ondoardingpage, page: () => OnboardingPage()),
    GetPage(name: singinpage, page: () => SigninPage()),
    GetPage(name: forgotpage, page: () => ForgotPage()),
    GetPage(name: verifypage, page: () => VerifyPage()),
    GetPage(name: changepasspage, page: () => ChangePassPage()),
    GetPage(name: splashpage, page: () => SplashPage()),
    GetPage(name: accountverify, page: () => AccountVerify()),
    GetPage(name: homepage, page: () => HomePage()),
    GetPage(name: locationpage, page: () => LocationPage()),
    GetPage(name: parcelpage, page: () => ParcelPage()),
    GetPage(name: summerypage, page: () => SummeryPage()),
    GetPage(name: riderpag, page: () => RiderPage()),
    GetPage(name: secondriderpage, page: () => SecondriderPage()),
    GetPage(name: searchpage, page: () => Searchpage(index:currentIndex ,)),
    GetPage(name: favoritepage, page: () => Favoritepage(index:currentIndex ,)),
    GetPage(name: profilepage, page: () => Profilepage(index:currentIndex ,)),
    GetPage(name: mainpage, page: () => MainPage()),
    GetPage(
      name: accountpage,
      page: () => Accountpage(url: "https://www.google.com"),
    ),
  ];
}
