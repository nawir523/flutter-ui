import 'package:flutter/material.dart';

class CustomImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Container', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
         body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: 180,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset('assets/images/furniture/img_product_1.jpg'),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}