import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:onboarding/Controllers/ListViewBilderController/BoxController.dart';
import 'package:onboarding/Controllers/ImagePikerController/ImagePikerController.dart';
import 'package:onboarding/Utils/AppIcons/AppIcons.dart';
import 'package:onboarding/Widgets/CustomText.dart';
import '../../Core/AppRoutes/AppRoute.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final nameController = TextEditingController();
  Controller obj = Get.put(Controller());
  ImagePikerController imageController = Get.put(ImagePikerController());
  FocusNode searchFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //Image Piker Part...............
                  Obx(
                        () => GestureDetector(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: imageController.imagepath.isNotEmpty
                            ? FileImage(
                          File(imageController.imagepath.toString()),
                        ) as ImageProvider
                            : AssetImage("assets/userpic.jpeg"),
                      ),
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Select Image Source',
                          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          content: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.camera_alt, color: Colors.blue),
                                title: Text('Camera'),
                                onTap: () {
                                  Get.back();
                                  imageController.getImage(ImageSource.camera);
                                },
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.photo_library, color: Colors.green),
                                title: Text('Gallery'),
                                onTap: () {
                                  Get.back();
                                  imageController.getImage(ImageSource.gallery);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 6,
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
                      child: SvgPicture.asset(AppIcons.notifications),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  alignment: Alignment.center,
                  height: 133,
                  width: 335,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        FocusScope.of(context).unfocus();
                        //TextField theke er focus dur kore
                      },
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
                                          focusNode: searchFocusNode,//TextField Focuse dey
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
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context).requestFocus(searchFocusNode);
                                                //TextField er Focuse dey
                                              },
                                              child: Container(
                                                height: 28,
                                                width: 28,
                                                child: SvgPicture.asset(AppIcons.searchicon),
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
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 317,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        image: DecorationImage(
                          image: AssetImage("assets/covericon.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 150,
                      width: 317,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        image: DecorationImage(
                          image: AssetImage("assets/covericon.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 150,
                      width: 317,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        image: DecorationImage(
                          image: AssetImage("assets/covericon.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.locationpage);
                },
                child: Container(
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
              ListView.builder(
                itemCount: obj.mylist.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Container(
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
                            alignment: Alignment.topLeft,
                            height: 62,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Robert Downy",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "D.I Panjaitan Street, Purwokerto City",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        child: Image.asset(
                                          "assets/manybox.png",
                                        ),
                                      ),
                                      Text(
                                        "10 April 2025 , 10:30 am",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

