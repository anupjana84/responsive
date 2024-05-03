import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_application_1/details.dart';

class LayOut extends StatefulWidget {
  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

var list = [1, 2, 3, 4, 5, 6, 7];

class _LayOutState extends State<LayOut> {
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

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        print(sizingInformation);
        print("sizingInformation");
        int crossAxisCount = 2; // Default number of columns

        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          crossAxisCount = 5; // Adjust columns for desktop
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          crossAxisCount = 4; // Adjust columns for tablet
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.mobile) {
          crossAxisCount = 2; // Adjust columns for tablet
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 3
                    : crossAxisCount, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
          ),
          padding: const EdgeInsets.all(8.0), // padding around the grid
          itemCount: listOfMaps.length, // total number of items
          itemBuilder: (context, index) {
            // print(listOfMaps[index]['name']);
            return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(
                            listOfMaps[index]['title'],
                            listOfMaps[index]['name'])),
                  );
                },
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                      child: Image.network(
                        listOfMaps[index]
                            ['name'], // Replace with your image asset
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
                          padding:
                              const EdgeInsets.only(left: 12.0, bottom: 12.00),
                          child: Text(
                            listOfMaps[index]['title'],
                            style: const TextStyle(
                                color: Colors.red, fontSize: 20.00),
                          ),
                        )
                      ],
                    )
                  ],
                ));
          },
        );
      },
    );
  }
}
