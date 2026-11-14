import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/app_colors_extension.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';

import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/themes/app_text_styles.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({
    super.key,
    required this.onTermsTap,
    required this.onPrivacyTap,
    this.onChanged,
  });

  final VoidCallback onTermsTap;

  final VoidCallback onPrivacyTap;
  final ValueChanged<bool>? onChanged;

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {

  late final TapGestureRecognizer _termsRecognizer;
  late final TapGestureRecognizer _privacyRecognizer;

  @override
  void initState() {
    super.initState();
    _termsRecognizer = TapGestureRecognizer()..onTap = widget.onTermsTap;
    _privacyRecognizer = TapGestureRecognizer()..onTap = widget.onPrivacyTap;
  }

  @override
  void dispose() {
    _termsRecognizer.dispose();
    _privacyRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;

    final linkStyle = AppTextStyles.link.copyWith(color: colors.primary);
    final textStyle = AppTextStyles.body.copyWith(color: colors.textSecondary);

    return FormField<bool>(
      initialValue: false,
      validator: (accepted) => accepted == true ? null : l10n.mustAcceptTerms,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: state.value ?? false,
                  side: BorderSide(
                    color: state.hasError ? colors.errorBorder : colors.border,
                    width: AppBorderWidth.focused,
                  ),
                  onChanged: (value) {
                    state.didChange(value ?? false);
                    widget.onChanged?.call(value ?? false);
                  },
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      style: textStyle,
                      children: [
                        TextSpan(text: '${l10n.iAgreeTo} '),
                        TextSpan(
                          text: l10n.termsAndConditions,
                          style: linkStyle,
                          recognizer: _termsRecognizer,
                        ),
                        TextSpan(text: ' ${l10n.and} '),
                        TextSpan(
                          text: l10n.privacyPolicy,
                          style: linkStyle,
                          recognizer: _privacyRecognizer,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (state.hasError)
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: AppSpacing.xs,
                  top: AppSpacing.xs,
                ),
                child: Text(
                  state.errorText!,
                  style: AppTextStyles.error.copyWith(color: colors.errorBorder),
                ),
              ),
          ],
        );
      },
    );
  }
}