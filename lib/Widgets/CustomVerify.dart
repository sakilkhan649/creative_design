import 'package:flutter/material.dart';

class Customverify extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final ValueChanged<String>? onChanged;

  Customverify({
    super.key,
    required this.controller,
    this.hintText = " ",
    this.width = 48,
    this.color = Colors.black45,
    this.fontSize = 18,
    this.fontWeight = FontWeight.bold,
    this.onChanged,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: width,
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          textAlign: TextAlign.center,
          maxLength: 1,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: "",
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
