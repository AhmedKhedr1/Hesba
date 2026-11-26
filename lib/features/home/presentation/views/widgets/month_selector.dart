// المسار: lib/features/home/presentation/views/widgets/month_selector.dart

import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:intl/intl.dart';

class MonthSelector extends StatelessWidget {
  const MonthSelector({
    super.key,
    required this.month,
    required this.onPrevious,
    this.onNext,
  });

  final DateTime month;
  final VoidCallback onPrevious;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final locale = Localizations.localeOf(context).toString();
    final label = '${DateFormat.MMMM(locale).format(month)} ${month.year}';

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: colors.card,
          borderRadius: BorderRadius.circular(AppRadius.circle),
          border: Border.all(color: colors.border, width: AppBorderWidth.thin),
        ),
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.xs),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: onPrevious,
              icon: const Icon(Icons.chevron_left),
              iconSize: AppIconSize.large,
              color: colors.textSecondary,
              visualDensity: VisualDensity.compact,
            ),
            Icon(
              Icons.calendar_month_outlined,
              size: AppIconSize.small,
              color: colors.primary,
            ),
            AppGap.hSm,
            Text(label, style: AppTextStyles.titleSmall),
            AppGap.hSm,
            IconButton(
              onPressed: onNext,
              icon: const Icon(Icons.chevron_right),
              iconSize: AppIconSize.large,
              color: colors.textSecondary,
              disabledColor: colors.border,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
