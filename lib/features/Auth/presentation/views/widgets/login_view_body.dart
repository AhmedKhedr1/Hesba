import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/extensions/theme_extension.dart';
import 'package:hesba/Core/helpers/snack_bar_helper.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/features/Auth/presentation/providers/login/login_notifier.dart';
import 'package:hesba/features/Auth/presentation/providers/login/login_state.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/auth_header.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/auth_text_button.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/LabeledTextFormField.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/have_and_not_have_account.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/forget_password.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/google_signin_button.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/or_divider.dart';
import 'package:hesba/Core/utils/validators.dart';

class LoginViewBody extends ConsumerStatefulWidget {
  const new({super.key});

  @override
  ConsumerState<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends ConsumerState<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void _submit() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      ref.read(loginProvider.notifier).login(email: email, password: password);
    } else {
      setState(() => autovalidateMode = AutovalidateMode.always);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<LoginState>(loginProvider, (previous, next) {
      if (!mounted) return;
      switch (next) {
        case LoginFailure(:final errMessage):
          SnackBarHelper.show(context, errMessage);
        case LoginSuccess():
          SnackBarHelper.show(context, context.l10n.loginSuccessfully);
          GoRouter.of(context).go(AppRoutes.homeView);
        case LoginInitial():
        case LoginLoading():
          break;
      }
    });
    final isLoading = ref.watch(loginProvider) is LoginLoading;
    return SafeArea(
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: AppPadding.screenLarge,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppGap.vXxl,
                AuthHeader(
                  title: context.l10n.welcomeBack,
                  subTitle: context.l10n.loginSubtitle,
                ),
                AppGap.vXxl,
                LabeledTextFormField(
                  labelText: context.l10n.email,
                  hintText: context.l10n.enterEmail,
                  hintIcon: context.brightness == Brightness.light
                      ? AppAssets.emailLight
                      : AppAssets.emailDark,
                  isPassword: false,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) => email = value!.trim(),
                  validator: (value) => Validators.email(value, context.l10n),
                ),
                AppGap.vLg,

                LabeledTextFormField(
                  labelText: context.l10n.email,
                  hintText: '••••••••',
                  hintIcon: context.brightness == Brightness.light
                      ? AppAssets.passwordlight
                      : AppAssets.passwordDark,
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (value) {
                    password = value!;
                  },
                  validator: (value) =>
                      Validators.loginPassword(value, context.l10n),
                ),
                AppGap.vLg,
                ForgetPassword(onTap: () {}),
                AppGap.vXl,
                AuthTextButton(
                  onPressed: () {
                    _submit();
                  },
                  isLoading: isLoading,
                  title: context.l10n.login,
                ),
                AppGap.vXl,
                OrDivider(),
                AppGap.vXl,
                GoogleSignInButton(),
                AppGap.vXxl,
                HaveAndNotHaveAccount(
                  message: context.l10n.dontHaveAccount,
                  actionText: context.l10n.createAccount,
                  onTap: () => GoRouter.of(context).push(AppRoutes.signup),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
