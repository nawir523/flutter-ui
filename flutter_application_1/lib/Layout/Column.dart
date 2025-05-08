import 'package:flutter/material.dart';

class CustomColumn extends StatefulWidget {
  const CustomColumn({super.key, required this.title});

  final String title;

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Text(
              "Stylish Chair",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rp. 350.000",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9A9390),
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
