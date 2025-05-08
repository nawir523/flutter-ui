import 'package:flutter/material.dart';

class MySnackbar extends StatefulWidget {
  const MySnackbar({super.key});

  @override
  State<MySnackbar> createState() => _MySnackbarState();
}

class _MySnackbarState extends State<MySnackbar> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.blue,
            content: Text('Your request is succesful'),
          ),
        );
      },
      child: const Text('Open SnackBar'),
    );
  }
}