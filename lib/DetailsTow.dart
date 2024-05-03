import 'package:flutter/material.dart';
import 'package:flutter_application_1/blog_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter OverflowBar Demo'),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => _buildBlog(index),
        separatorBuilder: (context, index) => Divider(
          height: 80.0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.0),
      ),
    );
  }

  Widget _buildBlog(int index) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      child: BlogOverview(
        'Blog Nature ',
        'rmentum, vel tincidunt nunc laoreet',
        Image.asset(
          'assets/forest${index % 5 + 1}.jpg',
          fit: BoxFit.cover,
        ),
        index.isOdd,
      ),
    );
  }
}
