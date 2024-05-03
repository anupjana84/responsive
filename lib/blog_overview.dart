import 'package:flutter/material.dart';

class BlogOverview extends StatelessWidget {
  final Widget image;
  final String title;
  final String text;
  final bool reversed;

  const BlogOverview(this.title, this.text, this.image, this.reversed,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      overflowAlignment: OverflowBarAlignment.center,
      spacing: 20.0,
      overflowSpacing: 16.0,
      textDirection: !reversed ? TextDirection.rtl : TextDirection.ltr,
      children: [
        _buildImageWidget(),
        _buildDescriptionPanel(),
      ],
    );
  }

  Widget _buildImageWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        fit: StackFit.loose,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tight(Size.square(350.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: image,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 12.00),
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.red, fontSize: 20.00),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDescriptionPanel() {
    return Container(
      constraints: BoxConstraints.tight(Size.fromWidth(300.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            child: const Text('No container'),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(double.maxFinite),
            ),
            onPressed: () {},
          ),
          Text(
            text,
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("data")],
          ),
        ],
      ),
    );
  }
}
