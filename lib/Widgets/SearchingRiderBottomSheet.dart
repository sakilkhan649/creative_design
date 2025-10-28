import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Widgets/RiderarrivingBottomSheet.dart';
import '../Controllers/SliderController/SecondSlidercontroller.dart';
import '../Core/AppRoutes/AppRoute.dart';
import 'CancelConfirmationBottomSheet.dart';
import 'CustomText.dart';

class SearchingRiderBottomSheet extends StatelessWidget {
  SearchingRiderBottomSheet({super.key});

  final Secondslider secondslider = Get.find<Secondslider>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    borderRadius: BorderRadius.all(Radius.circular(50)),
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
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: SliderComponentShape.noThumb,
                      activeTrackColor: Colors.blue,
                      inactiveTrackColor: Colors.grey,
                    ),
                    child: Slider(
                      value: secondslider.slidermode.value,
                      onChanged: (value) {
                        secondslider.modechenge(value);
                      },
                    ),
                  ),
                ),
              ),
              _buildRecipientInfoCard(),
              SizedBox(height: 16),

              _buildParcelDetailsCard(),
              SizedBox(height: 20),

              GestureDetector(
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipientInfoCard() {
    return Container(
      height: 129,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(11)),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 12, 81, 12),
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customtext(
                text: "Recipient Information",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 10),
              _buildInfoRow("assets/usertwo.png", "Emma Hardy"),
              SizedBox(height: 10),
              _buildInfoRow("assets/callicon.png", "(555) 123-4567"),
              SizedBox(height: 10),
              _buildInfoRow(
                "assets/locationtwo.png",
                "Mangunsari Park, Purwokerto City",
              ),
            ],
          ),
          onTap: () {
            Get.toNamed(Routes.secondriderpage);
            Get.bottomSheet(
              Riderarrivingbottomsheet(),
              isScrollControlled: true,
            );
          },
        ),
      ),
    );
  }

  Widget _buildParcelDetailsCard() {
    return GestureDetector(
      child: Container(
        height: 157,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(11)),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 12, 81, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customtext(
                text: "Parcel Details",
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                maxlines: 1,
              ),
              SizedBox(height: 10),
              _buildInfoRow(
                "assets/shapebox.png",
                "Parcel Type: Gift",
                iconSize: 18,
              ),
              SizedBox(height: 10),
              _buildInfoRow("assets/dolaricon.png", "Parcel Value : 100"),
              SizedBox(height: 10),
              _buildInfoRow("assets/distance 1.png", "Distance: 5 KM"),
              SizedBox(height: 10),
              _buildInfoRow("assets/alldolaricon.png", "Delivery Charge:10"),
            ],
          ),
        ),
      ),
      onTap: () {
        Get.toNamed(Routes.secondriderpage);
        Get.bottomSheet(Riderarrivingbottomsheet(), isScrollControlled: true);
      },
    );
  }

  Widget _buildInfoRow(String iconPath, String text, {double iconSize = 16}) {
    return Row(
      children: [
        Container(
          height: iconSize,
          width: iconSize,
          child: Image.asset(iconPath),
        ),
        SizedBox(width: 6),
        Customtext(
          text: text,
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          maxlines: 1,
        ),
      ],
    );
  }
}
