import 'package:flutter/material.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLoaderSize.small,
      height: AppLoaderSize.small,
      child: const CircularProgressIndicator(
        strokeWidth: AppLoaderSize.strokeWidth,
      ),
    );
  }
}
