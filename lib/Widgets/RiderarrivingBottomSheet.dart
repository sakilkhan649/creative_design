import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Routes/Routespages.dart';
import 'package:onboarding/Widgets/CancelConfirmationBottomSheet.dart';

import 'CustomText.dart';

class Riderarrivingbottomsheet extends StatelessWidget {
  const Riderarrivingbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 414,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 21, 8, 0),
              child: Container(
                height: 5,
                width: 134,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Customtext(
                  text: "Rider is arriving in 10 min",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 5,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
            SizedBox(height: 16),

            _buildRecipientInfoCard(),

            SizedBox(height: 16),

            GestureDetector(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 48,
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(
                          "assets/callicon.png",
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Call Rider",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),

            SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: GestureDetector(
                child: Container(
                  height: 48,
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Text(
                    "Cancel Request",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  Get.bottomSheet(
                    CancelConfirmationBottomSheet(),
                    isScrollControlled: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipientInfoCard() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        height: 102,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(11)),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 12, 20, 12),
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/userpic.jpeg"),
                    ),
                    SizedBox(width: 11),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Customtext(
                          text: "Md.Sakil",
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          maxlines: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/staricon.png"),
                            ),
                            Customtext(
                              text: "4.9  ( 35 Trips)",
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              maxlines: 1,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/cicelyicon.png"),
                            ),
                            Customtext(
                              text: " Bike: Yamaha YZF-R1",
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              maxlines: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
