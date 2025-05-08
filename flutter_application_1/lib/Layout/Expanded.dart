import 'package:flutter/material.dart';

void main() {
  runApp(CustomExpanded());
}

class CustomExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Add to Cart Button')),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "List checklist ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  color: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
