import 'package:flutter/material.dart';

class ColorPicker {
  Color generateHex({required int r, required int g, required int b}) {
    String _generatedHexValue = [r, g, b]
        .map((e) => e.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0'))
        .join()
        .toUpperCase();
    String hexColor = '0xff$_generatedHexValue';
    return Color(int.parse(hexColor));
  }
}