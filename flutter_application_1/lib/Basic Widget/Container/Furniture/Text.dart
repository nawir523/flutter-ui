import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
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
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Text(
              "Discover the most modern furniture",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1),
            )
          ],
        ),
      ),
      ),
    );
  }
}