import 'package:flutter/material.dart';
import 'package:flutter_application_1/blog_overview.dart';

class Details extends StatelessWidget {
  final String title;
  final String link;
  const Details(this.title, this.link, {super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          // Icon color
        ),
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
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
      body: BlogOverview(
        title,
        'rmentum, vel tincidunt nunc laoreet',
        Image.network(
          link,
          fit: BoxFit.cover,
        ),
        true,
      ),
    );

    //  Center(
    //   child: Text(title),
    // );
  }
}
