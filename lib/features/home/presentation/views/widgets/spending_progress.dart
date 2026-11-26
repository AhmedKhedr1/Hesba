import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class SpendingProgress extends StatelessWidget {
  const SpendingProgress({
    super.key,
    required this.progress,
    required this.spentLabel,
    required this.remainingLabel,
  });

  final double progress;
  final String spentLabel;
  final String remainingLabel;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: AppPadding.screen,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                spentLabel,
                style: AppTextStyles.caption.copyWith(color: Colors.white),
              ),
              Text(
                remainingLabel,
                style: AppTextStyles.captionMedium.copyWith(
                  color: colors.summaryAccent,
                ),
              ),
            ],
          ),
          AppGap.vSm,
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.circle),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: AppDividerSize.progressBar,
              color: colors.summaryAccent,
              backgroundColor: colors.onSummaryCardMuted.withValues(
                alpha: 0.25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
