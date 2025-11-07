import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Views/SignUpScreen/RolePage/UserAndRiderpage/RiderAccountpage.dart';
import 'package:onboarding/Views/SignUpScreen/RolePage/UserAndRiderpage/UserAccountpage.dart';
import '../../../Controllers/RolepageController/RolepageController.dart';
import '../../../Widgets/CustomText.dart';

class CustomTabbar extends StatelessWidget {
  CustomTabbar({super.key});

  final TabControllerX controller = Get.put(TabControllerX());

  final List<Widget> pages = [
    Useraccountpage(url: "https://www.google.com"),
    Rideraccountpage(url: "https://www.google.com"),
  ];

  final List<Map<String, dynamic>> tabs = [
    {"text": "User"},
    {"text": "Rider"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
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

                const SizedBox(height: 15),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 37),
                    child: Row(
                      children: List.generate(tabs.length, (index) {
                        bool selected = controller.selectedIndex.value == index;

                        return Expanded(
                          child: GestureDetector(
                            onTap: () => controller.changeIndex(index),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              height: 48,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: selected ? Colors.green : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: selected ? Colors.black : Colors.green,
                                ),
                              ),
                              child: Center(
                                child: AnimatedDefaultTextStyle(
                                  duration: const Duration(milliseconds: 300),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: selected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  child: Text(tabs[index]["text"]),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Obx(() {
                    return pages[controller.selectedIndex.value];
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
