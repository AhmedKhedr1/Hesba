import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hesba/Core/constants/app_assets.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/extensions/theme_extension.dart';
import 'package:hesba/Core/helpers/snack_bar_helper.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/utils/validators.dart';
import 'package:hesba/features/Auth/presentation/providers/sign_up_notifier.dart';
import 'package:hesba/features/Auth/presentation/providers/sign_up_state.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/LabeledTextFormField.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/auth_header.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/auth_text_button.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/google_signup_button.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/have_and_not_have_account.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/or_divider.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/terms_checkbox.dart';

class SignUpViewBody extends ConsumerStatefulWidget {
  const SignUpViewBody({super.key});

  @override
  ConsumerState<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends ConsumerState<SignUpViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String fullName, email, password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      ref
          .read(signUpProvider.notifier)
          .signUp(name: fullName, email: email, password: password);
    } else {
      setState(() => autovalidateMode = AutovalidateMode.always);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SignUpState>(signUpProvider, (previous, next) {
      if (!mounted) return;
      switch (next) {
        case SignUpFailure(:final errMessage):
          SnackBarHelper.show(context, errMessage);
        case SignUpSuccess():
          SnackBarHelper.show(context, context.l10n.accountCreatedSuccessfully);
          GoRouter.of(context).go(AppRoutes.login);
        case SignUpInitial():
        case SignUpLoading():
          break;
      }
    });
    final isLoading = ref.watch(signUpProvider) is SignUpLoading;

    return SafeArea(
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: AppPadding.screenLarge,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  AuthHeader(
                    title: context.l10n.createNewAccount,
                    subTitle: context.l10n.startTrackingExpenses,
                  ),
                  AppGap.vXs,
                  LabeledTextFormField(
                    labelText: context.l10n.fullName,
                    hintText: context.l10n.enterFullName,
                    hintIcon: context.brightness == Brightness.light
                        ? AppAssets.personLight
                        : AppAssets.personDark,
                    isPassword: false,
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      fullName = value!;
                    },
                    validator: (value) =>
                        Validators.fullName(value, context.l10n),
                  ),
                  AppGap.vMd,

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
                  AppGap.vMd,

                  LabeledTextFormField(
                    labelText: context.l10n.password,
                    hintText: '••••••••',
                    hintIcon: context.brightness == Brightness.light
                        ? AppAssets.passwordlight
                        : AppAssets.passwordDark,
                    isPassword: true,
                    keyboardType: TextInputType.visiblePassword,
                    onSaved: (value) {
                      password = value!;
                    },
                    textEditingController: _passwordController,
                    validator: (value) =>
                        Validators.signUpPassword(value, context.l10n),
                  ),
                  AppGap.vMd,
                  LabeledTextFormField(
                    labelText: context.l10n.confirmPassword,
                    hintText: '••••••••',
                    hintIcon: context.brightness == Brightness.light
                        ? AppAssets.passwordlight
                        : AppAssets.passwordDark,
                    isPassword: true,
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      password = value!;
                    },
                    validator: (value) => Validators.confirmPassword(
                      value,
                      _passwordController.text,
                      context.l10n,
                    ),
                  ),
                  AppGap.vSm,
                  TermsCheckbox(
                    onTermsTap: () {
                      GoRouter.of(context).push(AppRoutes.termsAndConditions);
                    },
                    onPrivacyTap: () {
                      GoRouter.of(context).push(AppRoutes.privacyPolicyView);
                    },
                  ),
                  AppGap.vSm,
                  AuthTextButton(
                    onPressed: () {
                      _submit();
                    },
                    isLoading: isLoading,
                    title: context.l10n.createAccount,
                  ),
                  AppGap.vXs,
                  OrDivider(),
                  AppGap.vXs,
                  GoogleSignupButton(onPressed: () {}),
                  AppGap.vMd,
                  HaveAndNotHaveAccount(
                    message: context.l10n.alreadyHaveAccount,
                    actionText: context.l10n.login,
                    onTap: () => GoRouter.of(context).go(AppRoutes.login),
                  ),
                  AppGap.vXxl,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
