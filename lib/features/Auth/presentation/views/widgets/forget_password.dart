// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class ForgetPassword extends StatelessWidget {
  new({super.key, required this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
           context.l10n.forgotPassword,
            style: AppTextStyles.label.copyWith(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
