// المسار: lib/features/home/presentation/views/widgets/income_expense_stat.dart

import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';


class IncomeExpenseStat extends StatelessWidget {
  const IncomeExpenseStat({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
    required this.currency,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String amount;
  final String currency;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Row(
      children: [
        Container(
          width: AppComponentSize.statIconCircle,
          height: AppComponentSize.statIconCircle,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withValues(alpha: 0.15),
          ),
          child: Icon(icon, size: AppIconSize.medium, color: color),
        ),
        AppGap.hMd,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: AppTextStyles.caption.copyWith(
                  color: colors.onSummaryCardMuted,
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      amount,
                      textDirection: TextDirection.ltr,
                      style: AppTextStyles.amountSmall.copyWith(color: color),
                    ),
                    AppGap.hXs,
                    Text(
                      currency,
                      style: AppTextStyles.caption.copyWith(color: color),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}