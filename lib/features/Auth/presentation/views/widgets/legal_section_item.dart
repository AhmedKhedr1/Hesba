// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class LegalSectionItem extends StatelessWidget {
  const LegalSectionItem({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  final int number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Container(
              width: AppComponentSize.statIconCircle,
              height: AppComponentSize.statIconCircle,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colors.primarySoft,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$number',
                style: AppTextStyles.link.copyWith(color: colors.primary),
              ),
            ),
            AppGap.hMd,
            Expanded(child: Text(title, style: AppTextStyles.titleSmall)),
          ],
        ),
        AppGap.vMd,
        Text(
          description,
          style: AppTextStyles.body.copyWith(
            color: colors.textSecondary,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}
