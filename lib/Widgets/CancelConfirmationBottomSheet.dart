import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Routes/Routespages.dart';
import 'CustomText.dart';

class CancelConfirmationBottomSheet extends StatelessWidget {
  const CancelConfirmationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 50),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.greenAccent,
              backgroundImage: AssetImage("assets/illustration.png"),
            ),
            SizedBox(height: 24),
            Customtext(
              text: "Are you Sure you Want to",
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              maxlines: 1,
            ),
            Customtext(
              text: "Cancel?",
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              maxlines: 1,
            ),
            SizedBox(height: 8),
            Customtext(
              text: "Cancelling will remove all your order details. If",
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              maxlines: 1,
            ),
            Customtext(
              text: "you proceed, you'll need to start a new order.",
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              maxlines: 1,
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.homepage);
              },
              child: Container(
                height: 48,
                alignment: Alignment.center,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Text(
                  "Yes",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 48,
                alignment: Alignment.center,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Text(
                  "No",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
