import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class GoogleSignupButton extends StatelessWidget {
  const GoogleSignupButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppButtonSize.heightSmall,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: context.colors.card,
          disabledBackgroundColor: context.colors.card,
        ),
        child: isLoading
            ? SizedBox(
                width: AppLoaderSize.small,
                height: AppLoaderSize.small,
                child: CircularProgressIndicator(
                  strokeWidth: AppLoaderSize.strokeWidth,
                  color: context.colors.primary,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AppAssets.googleicon,
                    width: AppIconSize.large,
                    height: AppIconSize.large,
                  ),
                  AppGap.hMd,
                  Text(
                    context.l10n.continueWithGoogle,
                    style: AppTextStyles.buttonSecondary,
                  ),
                ],
              ),
      ),
    );
  }
}
