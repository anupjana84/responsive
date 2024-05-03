import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/DesktopScree.dart';
import 'package:flutter_application_1/details.dart';
import 'package:flutter_application_1/detailsOne.dart';
import 'package:flutter_application_1/gird.dart';
import 'package:flutter_application_1/layout.dart';
import 'package:flutter_application_1/mobileScreen.dart';
import 'package:flutter_application_1/rotated.dart';
import 'package:flutter_application_1/tablateScreen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> listOfMaps = [
    {
      'name':
          'https://images.pexels.com/photos/3532555/pexels-photo-3532555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': 'One'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532546/pexels-photo-3532546.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': 'Two'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532542/pexels-photo-3532542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': 'Three'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532540/pexels-photo-3532540.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'title': 'Four'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532551/pexels-photo-3532551.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'title': 'Five'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532551/pexels-photo-3532551.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'title': 'Six'
    },
    {
      'name':
          'https://images.pexels.com/photos/3532556/pexels-photo-3532556.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'title': "Seven"
    },
    {
      'name':
          'https://images.pexels.com/photos/2522665/pexels-photo-2522665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': 'Eight'
    },
    {
      'name':
          'https://images.pexels.com/photos/2522665/pexels-photo-2522665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': "nine"
    },
  ];
  final ispotrait = Orientation.portrait;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2CAB00),
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: const Color(0xff7ACA5E), // Background color of the circle
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
      body: OverflowBarExample(),
    );
  }
}
