import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Searchpage extends StatelessWidget {
  final int index;
  const Searchpage({super.key,required this.index});

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
      body: Center(child: Text("Index : ${index.toString()}")),
    );
  }
}
