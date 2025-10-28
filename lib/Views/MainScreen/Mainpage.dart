import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/BottomNavigationController/BottomController.dart';
import 'package:onboarding/Views/BottomNavthreeScreen/Profilepage.dart';
import 'package:onboarding/Views/BottomNavthreeScreen/Searchpage.dart';
import 'package:onboarding/Widgets/CustomBottomNavigationBar.dart';
import '../BottomNavthreeScreen/Favoritepage.dart';
import '../HomeScreen/Home_page.dart';

class MainPage extends StatelessWidget {
  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> icons = [
    Image.asset("assets/homeicon.png", height: 24, width: 24),
    Image.asset("assets/homeiconlist.png", height: 24, width: 24),
    Image.asset("assets/homeiconlist.png", height: 24, width: 24),
    Image.asset("assets/homeiconpersion.png", height: 24, width: 24),
  ];

  final List<String> labels = ['Home', 'Search', 'Favorite', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        int currentIndex = navController.selectedIndex.value;
        return IndexedStack(
          index: currentIndex,
          children: [
            HomePage(),
            Searchpage(index: currentIndex),
            Favoritepage(index: currentIndex),
            Profilepage(index: currentIndex),
          ],
        );
      }),
      bottomNavigationBar: Custombottomnavigationbar(
        icons: icons,
        labels: labels,
      ),
    );
  }
}