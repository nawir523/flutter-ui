import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({super.key, required this.title});

  final String title;

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ),
            const Text(
              "Detail",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.share,
                size: 32,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
