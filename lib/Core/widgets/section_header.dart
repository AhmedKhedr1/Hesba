import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.actionText,
    required this.onActionTap,
  });

  final String title;
  final String actionText;
  final VoidCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.title),
        GestureDetector(
          onTap: onActionTap,
          child: Text(
            actionText,
            style: AppTextStyles.groupHeader.copyWith(
              color: context.colors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
