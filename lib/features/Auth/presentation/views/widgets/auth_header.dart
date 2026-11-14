import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/theme_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  const new({super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          context.brightness == Brightness.light
              ? AppAssets.appIconLight
              : AppAssets.appIconDark,
          width: AppLogoSize.auth,
        ),
        AppGap.vSm,
        Text(
          title,
          style: AppTextStyles.headline.copyWith(
            color: context.colors.textPrimary,
          ),
        ),
        AppGap.vXs,
        Text(
          subTitle,
          style: AppTextStyles.body.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
      ],
    );
  }
}
