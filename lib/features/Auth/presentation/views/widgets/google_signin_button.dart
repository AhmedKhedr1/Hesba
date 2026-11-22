import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/helpers/snack_bar_helper.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';
import 'package:hesba/Core/widgets/app_loader.dart';
import 'package:hesba/features/Auth/presentation/providers/google_sign_in/google_sign_in_notifier.dart';
import 'package:hesba/features/Auth/presentation/providers/google_sign_in/google_sign_in_state.dart';

class GoogleSignInButton extends ConsumerStatefulWidget {
  const GoogleSignInButton({super.key});

  @override
  ConsumerState<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends ConsumerState<GoogleSignInButton> {
  @override
  Widget build(BuildContext context) {
    ref.listen<GoogleSignInState>(googleSignInProvider, (previous, next) {
      if (!mounted) return;
      switch (next) {
        case GoogleSignInFailure(:final errMessage):
          SnackBarHelper.show(context, errMessage);
        case GoogleSignInSuccess():
          SnackBarHelper.show(context, context.l10n.loginSuccessfully);
          GoRouter.of(context).go(AppRoutes.homeView);
        case GoogleSignInInitial():
        case GoogleSignInLoading():
          break;
      }
    });
    final isLoading = ref.watch(googleSignInProvider) is GoogleSignInLoading;

    return SizedBox(
      height: AppButtonSize.heightSmall,
      child: OutlinedButton(
        onPressed: isLoading
            ? null
            : () {
                ref.read(googleSignInProvider.notifier).signInWithGoogle();
              },
        style: OutlinedButton.styleFrom(
          backgroundColor: context.colors.card,
          disabledBackgroundColor: context.colors.card,
        ),
        child: isLoading
            ? AppLoader()
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
