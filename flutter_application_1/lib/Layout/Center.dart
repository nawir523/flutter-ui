import 'package:flutter/material.dart';

void main() {
  runApp(CustomCenter());
}

class CustomCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Add to Cart Button')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan aksi di sini
                    print("Add to Cart clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.grey[200],
                    elevation: 5.0,
                  ),
                  child: Text(
                    "Add To Cart".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
