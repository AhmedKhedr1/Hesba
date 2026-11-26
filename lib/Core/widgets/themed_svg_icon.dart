
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThemedSvgIcon extends StatelessWidget {
  const ThemedSvgIcon({
    super.key,
    required this.lightIcon,
    required this.darkIcon,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  final String lightIcon;
  final String darkIcon;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return SvgPicture.asset(
      isLight ? lightIcon : darkIcon,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
