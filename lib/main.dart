import 'package:flutter/material.dart';
import 'package:flutter_application_1/gird.dart';
import 'package:flutter_application_1/mywdget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff2CAB00),
          leading: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color:
                    const Color(0xff7ACA5E), // Background color of the circle
                shape: BoxShape.rectangle,
                borderRadius:
                    BorderRadius.circular(10.0) // Makes the container circular
                ),
            child: const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            // Icon color
          ),
          title: const Text(
            "Photo Gallery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: GridScreen(),
      ),
    );
  }
}
