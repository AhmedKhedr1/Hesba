import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppSpacing {
  AppSpacing._();

  static double get xxs => 2.w;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get md => 12.w;
  static double get lg => 16.w;
  static double get xl => 24.w;
  static double get xxl => 32.w;
  static double get xxxl => 48.w;
}

/// فراغات جاهزة داخل Column (رأسي) و Row (أفقي)
class AppGap {
  AppGap._();

  // رأسي
  static SizedBox get vXs => SizedBox(height: AppSpacing.xs);
  static SizedBox get vSm => SizedBox(height: AppSpacing.sm);
  static SizedBox get vMd => SizedBox(height: AppSpacing.md);
  static SizedBox get vLg => SizedBox(height: AppSpacing.lg);
  static SizedBox get vXl => SizedBox(height: AppSpacing.xl);
  static SizedBox get vXxl => SizedBox(height: AppSpacing.xxl);

  // أفقي
  static SizedBox get hXs => SizedBox(width: AppSpacing.xs);
  static SizedBox get hSm => SizedBox(width: AppSpacing.sm);
  static SizedBox get hMd => SizedBox(width: AppSpacing.md);
  static SizedBox get hLg => SizedBox(width: AppSpacing.lg);
  static SizedBox get hXl => SizedBox(width: AppSpacing.xl);
}

/// Padding حسب مكان الاستخدام
class AppPadding {
  AppPadding._();

  // الشاشات
  static EdgeInsets get screen => EdgeInsets.symmetric(horizontal: 16.w);
  static EdgeInsets get screenAll =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);
  static EdgeInsets get screenLarge => EdgeInsets.symmetric(horizontal: 24.w);

  // الحقول والأزرار
  static EdgeInsets get field =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);
  static EdgeInsets get button =>
      EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h);

  // الكروت والعناصر
  static EdgeInsets get card => EdgeInsets.all(16.w);
  static EdgeInsets get summaryCard => EdgeInsets.all(20.w);
  static EdgeInsets get transactionTile =>
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h);
  static EdgeInsets get categoryTile =>
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h);
  static EdgeInsets get chip =>
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h);

  // الـ sheets والـ dialogs
  static EdgeInsets get bottomSheet => EdgeInsets.all(16.w);
  static EdgeInsets get dialog => EdgeInsets.all(24.w);

  // الـ bottom navigation
  static EdgeInsets get bottomNav =>
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h);
}

/// زوايا مدورة حسب الاستخدام
class AppRadius {
  AppRadius._();

  static double get field => 14.r;
  static double get button => 16.r;
  static double get card => 16.r;
  static double get summaryCard => 24.r;
  static double get chip => 12.r;
  static double get logo => 28.r;
  static double get sheet => 24.r;
  static double get dialog => 20.r;
  static double get snackBar => 14.r;
  static double get small => 8.r;

  // دائرة كاملة (أفاتار، زر +، نقطة)
  static const double circle = 999;
}

/// سمك الحدود (ثابت، مش بيتحجّم عشان ما يطلعش كسور)
class AppBorderWidth {
  AppBorderWidth._();

  static const double thin = 1;
  static const double focused = 1.5;
  static const double thick = 2;
}

/// سمك الفواصل (ثابت)
class AppDividerSize {
  AppDividerSize._();

  static const double thickness = 1;
  static const double progressBar = 6;
}

/// الظلال (ثابتة، التصميم شبه من غير ظلال)
class AppElevation {
  AppElevation._();

  static const double none = 0;
  static const double low = 1;
  static const double medium = 2;
  static const double high = 4;
}

/// أحجام الأيقونات (بـ .w مش .sp عشان ما تتأثرش بحجم خط الجهاز)
class AppIconSize {
  AppIconSize._();

  static double get xs => 14.w;
  static double get small => 16.w;
  static double get medium => 20.w;
  static double get large => 24.w;
  static double get xl => 32.w;
  static double get xxl => 48.w;

  // أيقونات محددة
  static double get navBar => 24.w;
  static double get categoryInTile => 20.w;
  static double get inField => 20.w;
}

/// أحجام الخطوط (بـ .sp)
class AppFontSize {
  AppFontSize._();

  static double get caption => 12.sp;
  static double get small => 13.sp;
  static double get body => 14.sp;
  static double get bodyLarge => 16.sp;
  static double get subtitle => 18.sp;
  static double get title => 20.sp;
  static double get heading => 24.sp;
  static double get headline => 28.sp;
  static double get balance => 36.sp; // رقم الرصيد
  static double get display => 48.sp; // رقم المبلغ في شاشة الإضافة

  // محددة
  static double get button => 16.sp;
  static double get buttonSecondary => 15.sp;
  static double get navLabel => 12.sp;
  static double get input => 15.sp;
  static double get hint => 14.sp;
}

/// أوزان الخطوط (متطابقة مع الأوزان المسجلة في pubspec)
class AppFontWeight {
  AppFontWeight._();

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

/// أحجام الأزرار
class AppButtonSize {
  AppButtonSize._();

  static double get height => 56.h;
  static double get heightSmall => 44.h;
  static double get heightMini => 36.h;
}

/// أحجام حقول الإدخال
class AppInputSize {
  AppInputSize._();

  static double get height => 56.h;
  static double get heightSmall => 44.h;
  static double get searchHeight => 48.h;
}

/// الـ Bottom bar وزر الإضافة
class AppNavSize {
  AppNavSize._();

  static double get barHeight => 64.h;
  static double get addButton => 56.w;
  static double get addButtonIcon => 28.w;
  static double get activeDot => 4.w;
}

/// الأفاتار
class AppAvatarSize {
  AppAvatarSize._();

  static double get small => 32.w;
  static double get medium => 40.w;
  static double get large => 56.w;
  static double get profile => 96.w;
}

/// اللوجو
class AppLogoSize {
  AppLogoSize._();

  static double get splash => 104.w;
  static double get auth => 64.w;
  static double get authSmall => 56.w;
  static double get header => 36.w;
}

/// أحجام عناصر الشاشات (كروت، قوائم، رسومات)
class AppComponentSize {
  AppComponentSize._();

  // Home
  static double get categoryIconCircle => 44.w;
  static double get categoryTileWidth => 96.w;
  static double get categoryTileHeight => 100.h;
  static double get transactionIconCircle => 44.w;
  static double get statIconCircle => 36.w;

  // شاشات الـ Auth والـ Onboarding
  static double get authIllustrationCircle => 96.w;
  static double get onboardingIllustration => 240.w;
  static double get indicatorDot => 8.w;
  static double get indicatorPillWidth => 24.w;

  // Charts (الإحصائيات)
  static double get donutChart => 200.w;
  static double get barChartHeight => 180.h;

  // Empty state
  static double get emptyStateIllustration => 160.w;
}

/// الـ Loaders
class AppLoaderSize {
  AppLoaderSize._();

  static double get small => 20.w;
  static double get medium => 32.w;
  static double get large => 48.w;
  static const double strokeWidth = 2.5;
}

// import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

// class AppRadius {
//   AppRadius._();
//   static double get field => 14.r;
//   static double get button => 16.r;
//   static double get card => 16.r;
// }

// class AppBorderWidth {
//   AppBorderWidth._();

//   static const double normal = 1;
//   static const double focused = 1.5;
// }

// class AppSizes {
//   AppSizes._();
//   static double get buttonHeight => 56.h;
// }
