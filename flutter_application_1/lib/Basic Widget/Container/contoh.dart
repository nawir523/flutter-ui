import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
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
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 15.0,
              offset: Offset.zero,
            ),
          ],
        ),
      ),
      ),
    );
  }
}