import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/Core/themes/app_colors.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class DoNotHaveAccount extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.l10n.dontHaveAccount,
            style: AppTextStyles.body,
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text:context.l10n.createAccount,
            style: AppTextStyles.bodyMedium.copyWith(
              color: context.colors.primary,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                GoRouter.of(context).push(AppRoutes.signup);
              },
          ),
        ],
      ),
    );
  }
}
