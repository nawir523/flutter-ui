import 'package:flutter/material.dart';
import 'Basic Widget/scaffold.dart';
import 'Basic Widget/Container/contoh.dart';
import 'Basic Widget/Container/Furniture/Text.dart';
import 'Basic Widget/Container/Furniture/Button.dart';
import 'Basic Widget/Container/Furniture/Icon.dart';
import 'Basic Widget/Container/Furniture/Images.dart';
import 'Layout/AspectRatio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Aspectratio()
    );
  }
}

