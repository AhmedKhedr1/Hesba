import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Brightness get brightness => Theme.of(this).brightness;

  bool get isDarkMode => brightness == Brightness.dark;

  bool get isLightMode => brightness == Brightness.light;
}