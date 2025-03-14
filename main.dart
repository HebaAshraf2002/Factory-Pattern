import 'package:flutter/material.dart';
import 'package:practicefactorydesignpattern/ShapeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factory Pattern in Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ShapeScreen(),
    );
  }
}
