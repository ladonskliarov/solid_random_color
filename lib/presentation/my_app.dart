import 'package:flutter/material.dart';
import 'package:random_color/presentation/main_screen.dart';

///Widget MyApp that access app to functionality and material design
///of Flutter SDK by MaterialApp
class MyApp extends StatelessWidget {
  ///Constructor of MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random colors',
      home: MainScreen(),
    );
  }
}
