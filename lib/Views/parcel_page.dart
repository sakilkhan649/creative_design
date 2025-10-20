import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/CarboxController.dart';
import 'package:onboarding/Controllers/SecondSlidercontroller.dart';
import 'package:onboarding/Controllers/SliderController.dart';
import 'package:onboarding/Widgets/ProductListBottomSheet.dart';
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
                Container(
                  height: 48,
                  width: double.maxFinite,
                  child: TextField(
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
                    Get.bottomSheet(
                      Productlistbottomsheet(),
                      isScrollControlled: true,
                      isDismissible: true,
                      enableDrag: true,
                    );
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
