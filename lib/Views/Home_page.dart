import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/BoxController.dart';
import 'package:onboarding/Widgets/CustomText.dart';
import 'package:onboarding/Widgets/CustomTextField.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final nameController = TextEditingController();
  Controller obj = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/userpic.jpeg"),
                    ),
                    SizedBox(width: 2),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Customtext(
                              text: "Hi, Sakil",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              maxlines: 1,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/locationicon.png"),
                              ),
                              Customtext(
                                text: "Riyadh ,Saudi Arabia",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                              Container(
                                height: 16,
                                width: 16,
                                child: Image.asset("assets/doperreicon.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 0,
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/notificationicon.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  height: 133,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Customtext(
                          text: "Track your Parcel",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          maxlines: 1,
                        ),
                        Customtext(
                          text: "Please enter your order ind",
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          maxlines: 1,
                        ),
                        SizedBox(height: 8),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Order id",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),
                                          child: Container(
                                            height: 28,
                                            width: 28,
                                            child: Image.asset(
                                              "assets/searchicon.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    image: DecorationImage(
                      image: AssetImage("assets/covericon.png"),
                      fit: BoxFit.cover, // পুরো container ভরে যাবে
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 32,
                          width: 32,
                          child: Image.asset("assets/boxicon.png"),
                        ),
                      ),
                      Customtext(
                        text: "Create New Shipment",
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        maxlines: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Customtext(
                      text: "Recent",
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  alignment: Alignment.centerLeft,
                  height: 86,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/shapebox.png"),
                        ),
                      ),
                      Container(
                        height: 62,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 1,
                            vertical: 5,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Customtext(
                                  text: "Robert Downy",
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  maxlines: 1,
                                ),
                              ),
                              Customtext(
                                text: "D.I Panjaitan Street, Purwokerto City",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                maxlines: 1,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset("assets/manybox.png"),
                                  ),
                                  Customtext(
                                    text: "10 April 2025 , 10:30 am",
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    maxlines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
         // backgroundColor: Colors.green,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: "Home",
            ),
          ],
          onTap: (int index) {
            if (index == 0) {}
            if (index == 1) {}
            if (index == 2) {}
            if (index == 3) {}
          },
        ),
      ),
    );
  }
}
