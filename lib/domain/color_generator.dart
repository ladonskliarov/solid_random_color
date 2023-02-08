import 'package:flutter/material.dart';
import 'package:random_color/domain/color_picker.dart';
import 'package:random_color/domain/randomizer.dart';

class ColorGenerator {
  ColorPicker colorPicker = ColorPicker();

  Color getColor(){
    return colorPicker.generateHex(
        r: Randomizer.getRandomNumber(),
        g: Randomizer.getRandomNumber(),
        b: Randomizer.getRandomNumber()
    );
  }
}