import 'package:flutter/cupertino.dart';
import 'package:onboarding/Models/Onboarding_info.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  List<OnboardingInfo> onboardingpage = [
    OnboardingInfo(
      "assets/imageone.png",
      "Welcome to [App Name],",
      "Your go-to solution for fast, reliable parcel delivery. Whether you're sending or receiving, we make it easy and quick.",
    ),
    OnboardingInfo(
      "assets/imagetwo.png",
      "Fast Deliveries, Anytime",
      "Need a quick delivery? Simply book a ride, and we’ll take care of the rest. Trust us to get your parcels to their destination, safely and on time.",
    ),
    OnboardingInfo(
      "assets/image.png",
      "Ready to Deliver?",
      "Let’s get your parcels moving! With just a few taps, your package is on its way. Speedy, secure, and hassle-free deliveries—every time.",
    ),
  ];
}
