import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.card,
    required this.textPrimary,
    required this.textSecondary,
    // border colors
    required this.border,
    required this.errorBorder,
    required this.successBorder,
    // buttonBackground
    required this.primary,
    required this.buttonText,
    required this.primarySoft,
    required this.income,
    required this.expense,
  });

  final Color background;
  final Color card;
  final Color textPrimary;
  final Color textSecondary;
  final Color border;
  final Color errorBorder;
  final Color successBorder;
  final Color primary;
  final Color buttonText;
  final Color primarySoft;
  final Color income;
  final Color expense;

  static const light = AppColors(
    background: Color(0xFFFBF9F4),
    card: Color(0xFFFFFFFF),
    textPrimary: Color(0xFF16213A),
    textSecondary: Color(0xFF6B7085),
    border: Color(0xFFEDE7D9),
    errorBorder: Color(0xFFC8553D),
    successBorder: Color(0xFF2F8F6B),
    primary: Color(0xFFB8860B),
    buttonText: Color(0xFF16213A),
    primarySoft: Color(0xFFF6ECD2),
    income: Color(0xFF2F8F6B),
    expense: Color(0xFFC8553D),
  );

  static const dark = AppColors(
    background: Color(0xFF0E1424),
    card: Color(0xFF171F33),
    textPrimary: Color(0xFFF4EFE2),
    textSecondary: Color(0xFF98A0B8),
    border: Color(0xFF252E47),
    errorBorder: Color(0xFFF0826A),
    successBorder: Color(0xFF4FC59A),
    primary: Color(0xFFE3B341),
    buttonText: Color(0xFF0E1424),
    primarySoft: Color(0xFF2B2618),
    income: Color(0xFF4FC59A),
    expense: Color(0xFFF0826A),
  );

  @override
  AppColors copyWith({
    Color? background,
    Color? card,
    Color? textPrimary,
    Color? textSecondary,
    Color? border,
    Color? errorBorder,
    Color? successBorder,
    Color? primary,
    Color? buttonText,
    Color? primarySoft,
    Color? income,
    Color? expense,
  }) {
    return AppColors(
      background: background ?? this.background,
      card: card ?? this.card,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      border: border ?? this.border,
      errorBorder: errorBorder ?? this.errorBorder,
      successBorder: successBorder ?? this.successBorder,
      primary: primary ?? this.primary,
      buttonText: buttonText ?? this.buttonText,
      primarySoft: primarySoft ?? this.primarySoft,
      income: income ?? this.income,
      expense: expense ?? this.expense,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      card: Color.lerp(card, other.card, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      border: Color.lerp(border, other.border, t)!,
      errorBorder: Color.lerp(errorBorder, other.errorBorder, t)!,
      successBorder: Color.lerp(successBorder, other.successBorder, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      primarySoft: Color.lerp(primarySoft, other.primarySoft, t)!,
      income: Color.lerp(income, other.income, t)!,
      expense: Color.lerp(expense, other.expense, t)!,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
