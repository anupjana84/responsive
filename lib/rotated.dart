import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class OverflowBarExample extends StatefulWidget {
  @override
  _OverflowBarExampleState createState() => _OverflowBarExampleState();
}

class _OverflowBarExampleState extends State<OverflowBarExample> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
  bool showOverflow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: showOverflow ? items.length : 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(items[index]),
                  );
                },
              ),
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(
                    showOverflow ? 'Hide Overflow' : 'Show Overflow',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    setState(() {
                      showOverflow = !showOverflow;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
