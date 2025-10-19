import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/CarboxController.dart';
import 'package:onboarding/Controllers/SecondSlidercontroller.dart';
import 'package:onboarding/Controllers/SliderController.dart';

import '../Routes/Routespages.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomText.dart';
import '../Widgets/CustomTextField.dart';

class ParcelPage extends StatelessWidget {
  ParcelPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  SliderController controller = Get.put(SliderController());
  CarboxController carboxController = Get.put(CarboxController());
  Secondslider secondslider = Get.put(Secondslider());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Parcel Details",
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
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 16, 20, 80),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Customtext(
                  text: "Receivers Name",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                Customtextfield(
                  controller: emailController,
                  hintText: "Enter Receivers name",
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),

                SizedBox(height: 16),

                Customtext(
                  text: "Contact Number",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                Customtextfield(
                  controller: emailController,
                  hintText: "Enter contact Number",
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 16),
                Customtext(
                  text: "Additional Instruction",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                Customtextfield(
                  controller: passwordController,
                  hintText: "Giver Additional Instruction ",
                  obscureText: true,
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 16),
                Customtext(
                  text: "Parcel Type",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    // hintText: "Enter Password",
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/chevron-down.png"),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Customtext(
                  text: "Parcel Value",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 8),
                Customtextfield(
                  controller: passwordController,
                  hintText: "Give product value amount",
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 16),
                Customtext(
                  text: "Parcel Weight",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "0Kg - 5kg",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                Obx(
                  () => Container(
                    width: double.maxFinite,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.green,
                        activeTrackColor: Colors.black,
                        inactiveTrackColor: Colors.grey,
                        //overlayColor: Colors.green.withOpacity(0.2), // টাচ করলে হালকা glow
                      ),
                      child: RangeSlider(
                        values: controller.rangeValues.value,
                        min: 0,
                        max: 100,
                        // divisions: 50,
                        labels: RangeLabels(
                          controller.rangeValues.value.start.toStringAsFixed(1),
                          controller.rangeValues.value.end.toStringAsFixed(1),
                        ),
                        onChanged: (RangeValues values) {
                          controller.setRange(values);
                        },
                      ),
                    ),
                  ),
                ),

                Customtext(
                  text: "Select Ride",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  maxlines: 1,
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Column(
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              carboxController.carselect.value = 0;
                            },
                            child: Container(
                              height: 98,
                              width: 98,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: carboxController.carselect.value == 0
                                      ? Colors.green
                                      : Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 56,
                                    width: 58,
                                    child: Image.asset("assets/bayceicon.png"),
                                  ),
                                  Customtext(
                                    text: "Bike",
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    maxlines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              carboxController.carselect.value = 1;
                            },
                            child: Container(
                              height: 98,
                              width: 98,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: carboxController.carselect.value == 1
                                      ? Colors.green
                                      : Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 56,
                                    width: 58,
                                    child: Image.asset("assets/caricon.png"),
                                  ),
                                  Customtext(
                                    text: "Car",
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    maxlines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 31),

                CustomButton(
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  text: "Continue",
                  onPressed: () {
                    Get.toNamed(Routes.summerypage);

                    //=================================
                    Get.bottomSheet(
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          height: 452,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 18, 0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 21, 8, 0),
                                  child: Container(
                                    height: 5,
                                    width: 134,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
                                Container(
                                  height: 129,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      12,
                                      12,
                                      81,
                                      12,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Customtext(
                                          text: "Recipient Information",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          maxlines: 1,
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/homeiconpersion.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "Emma Hardy",
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              maxlines: 1,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/callicon.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "(555) 123-4567",
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              maxlines: 1,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/locationicon.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text:
                                                  "Mangunsari Park, Purwokerto City",
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
                                SizedBox(height: 16),

                                Container(
                                  height: 157,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      12,
                                      12,
                                      81,
                                      12,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Customtext(
                                          text: "Parcel Details",
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          maxlines: 1,
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 18,
                                              width: 18,
                                              child: Image.asset(
                                                "assets/shapebox.png",
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "Parcel Type: Gift",
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              maxlines: 1,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/dolaricon.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "Parcel Value : 100",
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              maxlines: 1,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/distance 1.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "Distance: 5 KM",
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              maxlines: 1,
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/alldolaricon.png",
                                                color: Colors.green,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Customtext(
                                              text: "Delivery Charge:10",
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

                                //=============================
                                SizedBox(height: 20),
                                CustomButton(
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  text: "Send Request ",
                                  onPressed: () {
                                    Get.toNamed(Routes.riderpag);
                                    //=============================
                                    Get.bottomSheet(
                                      SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Container(
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
                                            padding: EdgeInsets.fromLTRB(
                                              20,
                                              0,
                                              18,
                                              0,
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                    0,
                                                    21,
                                                    8,
                                                    0,
                                                  ),
                                                  child: Container(
                                                    height: 5,
                                                    width: 134,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                            Radius.circular(50),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Customtext(
                                                    text: "Searching Rider",
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    maxlines: 1,
                                                  ),
                                                ),

                                                Obx(
                                                  () => Container(
                                                    width: double.maxFinite,
                                                    child: SliderTheme(
                                                      data:
                                                          SliderTheme.of(
                                                            context,
                                                          ).copyWith(
                                                            thumbShape:
                                                                SliderComponentShape
                                                                    .noThumb,
                                                            activeTrackColor:
                                                                Colors.blue,
                                                            inactiveTrackColor:
                                                                Colors.grey,
                                                          ),
                                                      child: Slider(
                                                        value: secondslider
                                                            .slidermode
                                                            .value,
                                                        onChanged: (value) {
                                                          secondslider
                                                              .modechenge(
                                                                value,
                                                              );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                                Container(
                                                  height: 129,
                                                  width: double.maxFinite,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(11),
                                                        ),
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                          12,
                                                          12,
                                                          81,
                                                          12,
                                                        ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Customtext(
                                                          text:
                                                              "Recipient Information",
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          maxlines: 1,
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/homeiconpersion.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Emma Hardy",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/callicon.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "(555) 123-4567",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/locationicon.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Mangunsari Park, Purwokerto City",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 16),

                                                Container(
                                                  height: 157,
                                                  width: double.maxFinite,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(11),
                                                        ),
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                          12,
                                                          12,
                                                          81,
                                                          12,
                                                        ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Customtext(
                                                          text:
                                                              "Parcel Details",
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          maxlines: 1,
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 18,
                                                              width: 18,
                                                              child: Image.asset(
                                                                "assets/shapebox.png",
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Parcel Type: Gift",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/dolaricon.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Parcel Value : 100",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/distance 1.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Distance: 5 KM",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),

                                                        SizedBox(height: 10),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 16,
                                                              width: 16,
                                                              child: Image.asset(
                                                                "assets/alldolaricon.png",
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ),
                                                            SizedBox(width: 6),
                                                            Customtext(
                                                              text:
                                                                  "Delivery Charge:10",
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              maxlines: 1,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                //=============================
                                                SizedBox(height: 20),

                                                GestureDetector(
                                                  child: Container(
                                                    height: 48,
                                                    alignment: Alignment.center,
                                                    width: double.maxFinite,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: Colors.red,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                            Radius.circular(50),
                                                          ),
                                                    ),
                                                    child: Text(
                                                      "Cancel Ruquest",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    //===================================

                                                    Get.bottomSheet(
                                                      SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        child: Container(
                                                          height: 550,
                                                          width:
                                                              double.maxFinite,
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius.only(
                                                                  topLeft:
                                                                      Radius.circular(
                                                                        24,
                                                                      ),
                                                                  topRight:
                                                                      Radius.circular(
                                                                        24,
                                                                      ),
                                                                ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.fromLTRB(
                                                                  24,
                                                                  32,
                                                                  24,
                                                                  50,
                                                                ),
                                                            child: Column(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 50,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .greenAccent,
                                                                  backgroundImage:
                                                                      AssetImage(
                                                                        "assets/illustration.png",
                                                                      ),
                                                                ),

                                                                SizedBox(height: 24,),

                                                                Customtext(
                                                                  text:
                                                                      "Are you Sure you Want to",
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  maxlines: 1,
                                                                ),
                                                                Customtext(
                                                                  text:
                                                                  "Cancel?",
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  maxlines: 1,
                                                                ),

                                                                SizedBox(
                                                                  height: 24,
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {},
                                                                  child: Container(
                                                                    height: 48,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: double
                                                                        .maxFinite,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .red,
                                                                      border: Border.all(
                                                                        color: Colors
                                                                            .red,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                            Radius.circular(
                                                                              50,
                                                                            ),
                                                                          ),
                                                                    ),
                                                                    child: Text(
                                                                      "Yes",
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),

                                                                SizedBox(
                                                                  height: 28,
                                                                ),

                                                                GestureDetector(
                                                                  onTap: () {},
                                                                  child: Container(
                                                                    height: 48,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: double
                                                                        .maxFinite,
                                                                    decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      border: Border.all(
                                                                        color: Colors
                                                                            .grey,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                            Radius.circular(
                                                                              50,
                                                                            ),
                                                                          ),
                                                                    ),
                                                                    child: Text(
                                                                      "No",
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .green,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),

                                                                //========================================
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                    //========================
                                                  },
                                                ),

                                                //========================================
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                    //========================

                                    //===========================
                                  },
                                ),

                                //========================================
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                    //========================
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
