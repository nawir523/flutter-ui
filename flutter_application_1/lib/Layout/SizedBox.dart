import 'package:flutter/material.dart';

void main() {
  runApp(CustomSizedBox());
}

class CustomSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Add to Cart Button')),
body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Size",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Height 120cm",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Width 80cm",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),      
      ),
    );
  }
}
