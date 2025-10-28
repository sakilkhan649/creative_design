import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Core/AppRoutes/AppRoute.dart';
import 'Core/Dependencys/Dependency.dart';
import 'Views/OnboardScreen/Onboarding_page.dart' show OnboardingPage;

void main() {
  Dependencys di = Dependencys();
  di.dependencys();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      initialRoute: Routes.splashpage,
    );
  }
}
