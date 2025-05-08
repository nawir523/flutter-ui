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
       body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 50,
            ),
            Positioned(
              top: -4,
              right: -4,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
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
