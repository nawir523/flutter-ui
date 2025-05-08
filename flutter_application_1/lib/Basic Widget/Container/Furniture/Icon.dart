import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
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
        color: Colors.blue[200],
        padding: const EdgeInsets.all(20),
        child: const Row(
          children: [
            Icon(
              Icons.home,
              size: 32,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 36,
            ),
          ],
        ),
      ),
      ),
    );
  }
}