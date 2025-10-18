import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Dependencys/Dependencys.dart';
import 'package:onboarding/Routes/Routespages.dart';

import 'Views/Onboarding_page.dart' show OnboardingPage;

void main() {
  Dependencys di=Dependencys();
  di.dependencys();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages:Routes.routes,
      initialRoute: Routes.splashpage,
    );
  }
}
