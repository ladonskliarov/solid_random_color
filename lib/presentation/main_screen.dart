import 'package:flutter/material.dart';
import 'package:random_color/domain/color_generator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ColorGenerator colorGenerator = ColorGenerator();
  Color _firstColor = Colors.blue;
  Color _secondColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _firstColor = colorGenerator.getColor();
          print(_firstColor);
          _secondColor = colorGenerator.getColor();
        });
      },
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 25 + MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.w500),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      _firstColor,
                      _secondColor
                    ])
            ),
            child: const Center(
              child: Text(
                'Hey there',
              ),
            ),
          ),
        ),
      ),
    );
  }
}