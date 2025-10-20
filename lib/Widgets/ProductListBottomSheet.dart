import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/ProductController.dart';
import 'package:onboarding/Widgets/OrderSummaryBottomSheet.dart';

import '../Routes/Routespages.dart';
import 'CustomButton.dart';
import 'CustomText.dart';

class Productlistbottomsheet extends StatelessWidget {
  Productlistbottomsheet({super.key});

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 1000,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(22, 23, 18, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(90, 0, 8, 0),
                    child: Container(
                      height: 5,
                      width: 134,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 24,
                      width: 24,
                      child: Image.asset("assets/pluseicon.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _buildRecipientInfoCard(),

              SizedBox(height: 16),

              CustomButton(
                backgroundColor: Colors.green,
                textColor: Colors.white,
                text: "Continue",
                onPressed: () {
                  Get.toNamed(Routes.summerypage);
                  Get.bottomSheet(
                    OrderSummaryBottomSheet(),
                    isScrollControlled: true,
                    isDismissible: true,
                    enableDrag: true,
                  );

                  //========================
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipientInfoCard() {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            itemCount: productController.productlist.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final product = productController.productlist[index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Container(
                  height: 86,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    productController
                                            .productlist[index]["image"] ??
                                        "assets/images/default.png",
                                  ),
                                ),
                              ),
                              SizedBox(width: 0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Customtext(
                                    text:
                                        productController
                                            .productlist[index]["name"] ??
                                        "Unknown Product",
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    maxlines: 1,
                                  ),
                                  Customtext(
                                    text:
                                        productController
                                            .productlist[index]["date"] ??
                                        "",
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    maxlines: 2,
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
              );
            },
          ),
        ],
      ),
    );
  }
}
