import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Widgets/CustomText.dart';

import '../Routes/Routespages.dart';
import '../Widgets/CustomButton.dart';

class SummeryPage extends StatelessWidget {
  const SummeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Summery",
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
            padding: EdgeInsets.fromLTRB(20, 16, 17, 67),
            child: Column(
              children: [
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


              ],
            ),
          ),
        ),
      ),
    );
  }
}
