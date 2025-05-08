import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SliverExamplePage(),
    );
  }
}

class SliverExamplePage extends StatelessWidget {
  const SliverExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                "UNISNU Jepara",
                style: TextStyle(color: Colors.black),
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.blueAccent,
                  height: 100,
                  child: Center(
                    child: Text(
                      "Item $index",
                      style: TextStyle(fontSize: 16 * 2), // Adjust the multiplier as needed
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
