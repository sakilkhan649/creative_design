import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Widgets/CustomButton.dart';
import '../../Core/AppRoutes/AppRoute.dart';
import '../../Widgets/CustomText.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Choose Location",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset("assets/backicon.png"),
        ),
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 15, 17, 15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  elevation: 1,
                  child: Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("assets/pikucpicon.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Customtext(
                                text: "Pick up location",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                              Customtext(
                                text: "Hatari Housing No.21, Wangon",
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            child: Image.asset("assets/chevron-down.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {},
                child: Card(
                  color: Colors.white,
                  clipBehavior: Clip.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  elevation: 1,
                  child: Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                "assets/destinationicon.png",
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Customtext(
                                text: "Destination",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                              Customtext(
                                text: "Mangunsari Park, Purwokerto City",
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            child: Image.asset("assets/chevron-down.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 289,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  image: DecorationImage(
                    image: AssetImage("assets/locationmainpic.png"),
                    fit: BoxFit.cover, // পুরো container ভরে যাবে
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                backgroundColor: Colors.green,
                textColor: Colors.white,
                text: "Confirm Location",
                onPressed: () {
                  Get.toNamed(Routes.parcelpage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
