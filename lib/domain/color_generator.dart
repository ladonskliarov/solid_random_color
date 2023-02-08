import 'package:flutter/material.dart';
import 'package:random_color/domain/color_picker.dart';
import 'package:random_color/domain/randomizer.dart';

///ColorGenerator combines functions from ColorPicker class and
///Randomizer class
class ColorGenerator {
  final ColorPicker _colorPicker = ColorPicker();

  ///Main function that return random Color value
  Color getColor(){
    return _colorPicker.generateHex(
        r: Randomizer.getRandomNumber(),
        g: Randomizer.getRandomNumber(),
        b: Randomizer.getRandomNumber(),
    );
  }
}
