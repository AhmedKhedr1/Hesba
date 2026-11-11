import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/Core/themes/app_colors.dart';
import 'package:hesba/Core/themes/app_fonts.dart';
import 'package:hesba/Core/themes/app_reduis.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => _build(AppColors.light, Brightness.light);
  static ThemeData get dark => _build(AppColors.dark, Brightness.dark);

  static ThemeData _build(AppColors appColors, Brightness brightness) {
    final scheme = ColorScheme(
      brightness: brightness,
      primary: appColors.primary,
      onPrimary: appColors.buttonText,
      secondary: appColors.primary,
      onSecondary: appColors.buttonText,
      error: appColors.expense,
      onError: brightness == Brightness.dark
          ? appColors.background
          : Colors.white,
      surface: appColors.card,
      onSurface: appColors.textPrimary,
    );

    final base = ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      fontFamily: AppFonts.iBMPlexSansArabic,
      scaffoldBackgroundColor: appColors.background,
      extensions: [appColors],
    );
    OutlineInputBorder inputBorder(
      Color color, [
      double width = AppBorderWidth.thin,
    ]) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.field),
        borderSide: BorderSide(color: color, width: width),
      );
    }

    return base.copyWith(
      textTheme: base.textTheme.apply(
        bodyColor: appColors.textPrimary,
        displayColor: appColors.textPrimary,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: appColors.card,
        contentPadding: AppPadding.field,
        hintStyle: TextStyle(color: appColors.textSecondary),
        border: inputBorder(appColors.border),
        enabledBorder: inputBorder(appColors.border),
        focusedBorder: inputBorder(appColors.primary, AppBorderWidth.focused),
        errorBorder: inputBorder(appColors.errorBorder),
        focusedErrorBorder: inputBorder(
          appColors.errorBorder,
          AppBorderWidth.focused,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: appColors.primary,
          foregroundColor: appColors.buttonText,
          minimumSize: Size.fromHeight(AppButtonSize.height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: TextStyle(
            fontSize: AppFontSize.bodyLarge,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: appColors.textPrimary,
          minimumSize: Size.fromHeight(AppButtonSize.height),
          side: BorderSide(color: appColors.border),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: appColors.primary),
      ),
      dividerTheme: DividerThemeData(
        color: appColors.border,
        thickness: AppBorderWidth.thin,
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (states) =>
              states.contains(WidgetState.selected) ? appColors.primary : null,
        ),
        checkColor: WidgetStatePropertyAll(appColors.buttonText),
        side: BorderSide(
          color: appColors.border,
          width: AppBorderWidth.focused,
        ),
      ),
      cardTheme: CardThemeData(
        color: appColors.card,
        elevation: 0,
        margin: EdgeInsets.zero,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.card),
          side: BorderSide(color: appColors.border, width: AppBorderWidth.thin),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: appColors.card,
        contentTextStyle: TextStyle(
          color: appColors.textPrimary,
          fontSize: AppFontSize.body,
          fontWeight: FontWeight.w500,
        ),
        actionTextColor: appColors.primary,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.field),
          side: BorderSide(color: appColors.border),
        ),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appColors.card,
        surfaceTintColor: Colors.transparent,
        modalBackgroundColor: appColors.card,
        showDragHandle: true,
        dragHandleColor: appColors.border,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
        ),
      ),

      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: appColors.card,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        indicatorColor: Colors.transparent,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? appColors.primary
                : appColors.textSecondary,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: AppFontSize.caption,
            fontWeight: FontWeight.w600,
            color: states.contains(WidgetState.selected)
                ? appColors.primary
                : appColors.textSecondary,
          ),
        ),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.card,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColors.primary,
        unselectedItemColor: appColors.textSecondary,
        selectedLabelStyle: TextStyle(
          fontSize: AppFontSize.caption,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: AppFontSize.caption,
          fontWeight: FontWeight.w500,
        ),
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: appColors.primary,
        linearTrackColor: appColors.primarySoft,
        circularTrackColor: appColors.primarySoft,
      ),
    );
  }
}
