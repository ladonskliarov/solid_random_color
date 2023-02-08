import 'package:flutter/material.dart';
import 'package:random_color/presentation/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random colors',
      home: MainScreen()
    );
  }
}