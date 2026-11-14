import 'package:hesba/Core/utils/app_regex.dart';
import 'package:hesba/generated/l10n.dart';

class Validators {
  Validators._();

  static const int minPasswordLength = 8;

  static String? email(String? value, S l10n) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return l10n.emailRequired;
    if (!AppRegex.isEmailValid(value!)) return l10n.emailInvalid;
    return null;
  }

  static String? loginPassword(String? value, S l10n) {
    if (value == null || value.isEmpty) return l10n.passwordRequired;
    if (value.length < minPasswordLength) return l10n.passwordTooShort;
    if (!AppRegex.isPasswordValid(value)) return l10n.passwordInvalid;

    return null;
  }

  static String? fullName(String? value, S l10n) {
    final v = value?.trim() ?? '';
    if (AppRegex.hasNumber(value!)) return l10n.nameInvalid;
    if (v.isEmpty) return l10n.nameRequired;
    if (v.length < 2) return l10n.nameTooShort;
    return null;
  }

  static String? signUpPassword(String? value, S l10n) {
    if (value == null || value.isEmpty) return l10n.passwordRequired;
    if (value.length < minPasswordLength) return l10n.passwordTooShort;
    return null;
  }

  static String? confirmPassword(String? value, String original, S l10n) {
    if (value == null || value.isEmpty) return l10n.confirmPasswordRequired;
    if (value != original) return l10n.passwordsDoNotMatch;
    return null;
  }
}
