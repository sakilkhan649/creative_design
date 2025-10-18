import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/Onboarding_controller.dart';
import 'package:onboarding/Routes/Routespages.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final controller = OnboardingController();

  // Button style
  ButtonStyle buttonStyleone = ElevatedButton.styleFrom(
    minimumSize: const Size(280, 50),
    backgroundColor: Colors.green,
    padding: EdgeInsets.all(10),
  );
  // Button style
  ButtonStyle buttonStyletwo = ElevatedButton.styleFrom(
    minimumSize: const Size(280, 50),
    backgroundColor: Colors.white,
    padding: EdgeInsets.all(10),
    side: BorderSide(color: Colors.green),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: controller.selectedPageIndex,
                itemCount: controller.onboardingpage.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 260,
                          width: double.maxFinite,
                          child: Image.asset(
                            controller.onboardingpage[index].imageAsesst,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Text(
                              controller.onboardingpage[index].title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64.0),
                              child: Text(
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                controller.onboardingpage[index].descripsion,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 190),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.onboardingpage.length,
                      (index) => Obx(() {
                        return Container(
                          height: 12,
                          width: 12,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: controller.selectedPageIndex.value == index
                                ? Colors.black
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.accountpage);
                        },
                        style: buttonStyleone,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.singinpage);
                        },
                        style: buttonStyletwo,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
