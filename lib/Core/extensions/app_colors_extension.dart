import 'package:flutter/material.dart';
import 'package:hesba/Core/themes/app_colors.dart';

extension AppColorsExtension on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
