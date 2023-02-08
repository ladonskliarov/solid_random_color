import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _firstColor = Colors.blue;
  Color _secondColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _firstColor = Colors.white;
          _secondColor = Colors.black;
        });
      },
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
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