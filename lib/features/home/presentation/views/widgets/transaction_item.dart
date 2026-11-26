import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/Core/widgets/themed_svg_icon.dart';
import 'package:hesba/features/home/data/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const new({super.key, required this._transactionModel});

  final TransactionModel _transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.w),
      padding: AppPadding.categoryTile,
      width: double.infinity,
      height: 64.h,
      decoration: BoxDecoration(
        color: context.colors.card,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: context.colors.border,
          width: AppBorderWidth.thin,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: AppComponentSize.categoryIconCircle,
            height: AppComponentSize.categoryIconCircle,
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colors.primary.withValues(alpha: 0.2),
                width: AppBorderWidth.thin,
              ),
              color: context.colors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: ThemedSvgIcon(
              lightIcon: _transactionModel.imageLight,
              darkIcon: _transactionModel.imageDark,
              fit: BoxFit.scaleDown,
            ),
          ),
          AppGap.hSm,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_transactionModel.title, style: AppTextStyles.titleSmall),
              Text(
                _transactionModel.subtitle,
                style: AppTextStyles.body.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_transactionModel.type == TransactionType.income ? '+' : '-'} ${_transactionModel.amount}',
                style: AppTextStyles.titleSmall.copyWith(
                  color: _transactionModel.type == TransactionType.income
                      ? context.colors.income
                      : context.colors.expense,
                ),
              ),
              AppGap.vXs,
              Text(
                _transactionModel.time,
                style: AppTextStyles.caption.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
