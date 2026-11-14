// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';

class AuthTextButton extends StatelessWidget {
  new({super.key, required this.onPressed, required this.title});
  void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppButtonSize.heightSmall,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            AppGap.hSm,
            SvgPicture.asset(AppAssets.loginArrow, width: AppIconSize.small),
          ],
        ),
      ),
    );
  }
}
