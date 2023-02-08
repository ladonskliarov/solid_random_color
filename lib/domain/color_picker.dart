import 'package:flutter/material.dart';

///Color Picker class created to pick a color using input values
class ColorPicker {
  ///Hex generator takes a values which can be use in rgb system
  Color generateHex({required int r, required int g, required int b}) {
    final String _generatedHexValue = [r, g, b]
        .map((e) => e.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0'))
        .join()
        .toUpperCase();
    final String _hexColor = '0xff$_generatedHexValue';

    return Color(int.parse(_hexColor));
  }
}
