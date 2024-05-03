import 'package:flutter/material.dart';

class ColumScreen extends StatefulWidget {
  const ColumScreen({super.key});

  @override
  State<ColumScreen> createState() => _ColumScreenState();
}

class _ColumScreenState extends State<ColumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
              child: Image.network(
                // // Replace with your image asset
                'https://images.pexels.com/photos/2522665/pexels-photo-2522665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            // Centered Text
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 12.00),
                  child: Text(
                    "index['title']",
                    style: const TextStyle(color: Colors.red, fontSize: 20.00),
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
