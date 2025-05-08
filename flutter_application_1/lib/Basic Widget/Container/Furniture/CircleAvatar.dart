import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coding Flutter - CircleAvatar"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: colors[index],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}