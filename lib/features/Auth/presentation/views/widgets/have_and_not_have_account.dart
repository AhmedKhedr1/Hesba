// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class HaveAndNotHaveAccount extends StatelessWidget {
  new({
    super.key,
    required this.message,
    required this.actionText,
    required this.onTap,
  });
  final String message, actionText;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: message, style: AppTextStyles.body),
          const TextSpan(text: ' '),
          TextSpan(
            text: actionText,
            style: AppTextStyles.bodyMedium.copyWith(
              color: context.colors.primary,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
