import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/features/home/presentation/views/widgets/income_expense_stat%20.dart';
import 'package:hesba/features/home/presentation/views/widgets/money_formatter.dart';
import 'package:hesba/features/home/presentation/views/widgets/spending_progress.dart';

class SummaryCard extends StatelessWidget {
  const new({
    super.key,
    required this.balanceMinor,
    required this.incomeMinor,
    required this.expenseMinor,
    required this.currency,
  });
  final int balanceMinor;
  final int incomeMinor;
  final int expenseMinor;
  final String currency;
  @override
  Widget build(BuildContext context) {
    final hasIncome = incomeMinor > 0;
    final ratio = hasIncome
        ? (expenseMinor / incomeMinor).clamp(0.0, 1.0).toDouble()
        : 0.0;
    final spentPercent = (ratio * 100).round();
    final remainingPercent = 100 - spentPercent;
    return Container(
      padding: EdgeInsets.only(top: 16),
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: context.colors.summaryCardBackground,
        borderRadius: BorderRadius.circular(AppRadius.summaryCard),
        border: Border.all(
          color: context.colors.summaryCardBorder,
          width: AppBorderWidth.thin,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.screen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  context.l10n.remainingBalance,
                  style: AppTextStyles.body.copyWith(color: Colors.white),
                ),
                Spacer(),
                Container(
                  width: 76.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),

                    color: context.colors.primary.withValues(alpha: 0.1),
                  ),
                  child: Center(
                    child: Text(
                      context.l10n.updatedJustNow,
                      style: AppTextStyles.caption.copyWith(
                        color: context.colors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppGap.vXs,
          Padding(
            padding: AppPadding.screen,

            child: Text(
              '4,250 ج.م',
              style: AppTextStyles.headline.copyWith(color: Colors.white),
            ),
          ),
          AppGap.vLg,
          SpendingProgress(
            progress: ratio,
            spentLabel: context.l10n.spentPercentOfIncome(spentPercent),
            remainingLabel: context.l10n.remainingPercent(remainingPercent),
          ),
          AppGap.vLg,
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.lg + AppSpacing.xs,
              vertical: AppSpacing.lg,
            ),
            decoration: BoxDecoration(
              color: context.colors.summaryStatsBackground.withValues(
                alpha: 0.05,
              ),
              border: Border(
                top: BorderSide(
                  color: context.colors.onSummaryCardMuted.withValues(
                    alpha: 0.15,
                  ),
                  width: AppBorderWidth.thin,
                ),
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: IncomeExpenseStat(
                      icon: Icons.arrow_upward_rounded,
                      label: context.l10n.totalIncome,
                      amount: MoneyFormatter.format(incomeMinor),
                      currency: currency,
                      color: context.colors.summaryIncome,
                    ),
                  ),
                  VerticalDivider(
                    width: AppSpacing.lg * 2,
                    thickness: AppDividerSize.thickness,
                    color: context.colors.onSummaryCardMuted.withValues(
                      alpha: 0.2,
                    ),
                  ),
                  Expanded(
                    child: IncomeExpenseStat(
                      icon: Icons.arrow_downward_rounded,
                      label: context.l10n.totalExpenses,
                      amount: MoneyFormatter.format(expenseMinor),
                      currency: currency,
                      color: context.colors.summaryExpense,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
