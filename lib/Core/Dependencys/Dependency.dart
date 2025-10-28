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

class Dependencys {
  void dependencys() {
    Get.lazyPut(() => OnboardingPage(), fenix: true);
    Get.lazyPut(() => SigninPage(), fenix: true);
    Get.lazyPut(() => ForgotPage(), fenix: true);
    Get.lazyPut(() => VerifyPage(), fenix: true);
    Get.lazyPut(() => ChangePassPage(), fenix: true);
    Get.lazyPut(() => SplashPage(), fenix: true);
    Get.lazyPut(() => AccountVerify(), fenix: true);
    Get.lazyPut(() => HomePage(), fenix: true);
    Get.lazyPut(() => LocationPage(), fenix: true);
    Get.lazyPut(() => ParcelPage(), fenix: true);
    Get.lazyPut(() => SummeryPage(), fenix: true);
    Get.lazyPut(() => RiderPage(), fenix: true);
    Get.lazyPut(() => SecondriderPage(), fenix: true);
    Get.lazyPut(() => Searchpage(index:currentIndex ,), fenix: true);
    Get.lazyPut(() => Favoritepage(index:currentIndex ,), fenix: true);
    Get.lazyPut(() => Profilepage(index:currentIndex ,), fenix: true);
    Get.lazyPut(() => MainPage(), fenix: true);
    Get.lazyPut(() => Accountpage(url: "https://www.google.com"), fenix: true);
  }
}
