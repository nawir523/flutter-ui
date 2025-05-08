import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final List<String> categories = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coding Flutter - ListView"),
      ),
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                top: 30,
                bottom: 40,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.categories,
    required this.scrollDirection,
  });

  final List<String> categories;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Text(categories[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                )),
          ),
        );
      },
    );
  }
}
