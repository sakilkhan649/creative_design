import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Routes/Routespages.dart';
import 'CustomButton.dart';
import 'CustomText.dart';
import 'SearchingRiderBottomSheet.dart';

class OrderSummaryBottomSheet extends StatelessWidget {
  const OrderSummaryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
              SizedBox(height: 12),

              _buildRecipientInfoCard(),
              SizedBox(height: 16),

              _buildParcelDetailsCard(),
              SizedBox(height: 20),

              CustomButton(
                backgroundColor: Colors.green,
                textColor: Colors.white,
                text: "Send Request",
                onPressed: () {
                  Get.toNamed(Routes.riderpag);
                  Get.bottomSheet(
                    SearchingRiderBottomSheet(),
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
      ),
    );
  }

  Widget _buildParcelDetailsCard() {
    return Container(
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
