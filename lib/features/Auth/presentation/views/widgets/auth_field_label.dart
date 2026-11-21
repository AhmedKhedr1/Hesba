import 'package:flutter/material.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class AuthFieldLabel extends StatelessWidget {
  const new({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text(title, style: AppTextStyles.bodyMedium)],
    );
  }
}
