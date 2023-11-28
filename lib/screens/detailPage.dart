import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  DetailPage(
      {required this.name, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
