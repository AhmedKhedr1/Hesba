import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/Core/widgets/themed_svg_icon.dart';
import 'package:hesba/features/home/data/category_model.dart';

class CategoryItem extends StatelessWidget {
  const new({super.key, required this._categoryModel});
  final CategoryModel _categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.w),
      width: AppComponentSize.categoryTileWidth,
      height: AppComponentSize.categoryTileHeight,
      decoration: BoxDecoration(
        color: context.colors.card,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: context.colors.border,
          width: AppBorderWidth.thin,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              lightIcon: _categoryModel.imageLight,
              darkIcon: _categoryModel.imageDark,
              fit: BoxFit.scaleDown,
            ),
          ),
          AppGap.vSm,
          Text(_categoryModel.title, style: AppTextStyles.amountSmall),
          AppGap.vXs,
          Text(
            _categoryModel.totalAmount,
            style: AppTextStyles.captionMedium.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
