import 'package:flutter/material.dart';
import 'package:flutter_application_1/ColumScreen.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return MyLayout(
            orientation: orientation,
            screenSize: MediaQuery.of(context).size,
          );
        },
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  final Orientation orientation;
  final Size screenSize;

  MyLayout({required this.orientation, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    // Adjust layout based on orientation and screenSize
    return orientation == Orientation.portrait ? ColumScreen() : ColumScreen();
  }
}
