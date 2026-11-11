import 'package:flutter/painting.dart';
import 'package:hesba/Core/themes/app_reduis.dart';

class AppTextStyles {
  AppTextStyles._();

  // أرقام بعرض موحد عشان المبالغ تتراص تحت بعض
  static const List<FontFeature> _tabular = [FontFeature.tabularFigures()];

  /// رقم المبلغ في شاشة الإضافة
  static TextStyle get display => TextStyle(
    fontSize: AppFontSize.display,
    fontWeight: AppFontWeight.bold,
    height: 1.2,
    fontFeatures: _tabular,
  );

  /// رقم الرصيد في كارت الملخص
  static TextStyle get balance => TextStyle(
    fontSize: AppFontSize.balance,
    fontWeight: AppFontWeight.bold,
    height: 1.2,
    fontFeatures: _tabular,
  );

  /// مبلغ العملية في القوائم
  static TextStyle get amount => TextStyle(
    fontSize: AppFontSize.bodyLarge,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
    fontFeatures: _tabular,
  );

  /// مبلغ صغير (دخل/مصروف في الملخص، مبلغ الفئة)
  static TextStyle get amountSmall => TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.semiBold,
    height: 1.3,
    fontFeatures: _tabular,
  );

  // ----------------------------------------------------------
  // العناوين
  // ----------------------------------------------------------

  /// عنوان الشاشة الكبير ("أهلاً بعودتك"، "إنشاء حساب جديد")
  static TextStyle get headline => TextStyle(
    fontSize: AppFontSize.headline,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
  );

  /// عنوان شاشة أو أكبر عناوين الأقسام
  static TextStyle get heading => TextStyle(
    fontSize: AppFontSize.heading,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
  );

  /// عناوين الأقسام ("آخر العمليات"، "الفئات")
  static TextStyle get title => TextStyle(
    fontSize: AppFontSize.title,
    fontWeight: AppFontWeight.bold,
    height: 1.3,
  );

  /// عنوان أصغر (اسم الفئة في الصف، اسم المستخدم)
  static TextStyle get titleSmall => TextStyle(
    fontSize: AppFontSize.bodyLarge,
    fontWeight: AppFontWeight.semiBold,
    height: 1.4,
  );

  // ----------------------------------------------------------
  // النصوص
  // ----------------------------------------------------------

  /// الجمل التوضيحية تحت العناوين (لونها غالباً textSecondary)
  static TextStyle get subtitle => TextStyle(
    fontSize: AppFontSize.bodyLarge,
    fontWeight: AppFontWeight.regular,
    height: 1.5,
  );

  static TextStyle get bodyLarge => TextStyle(
    fontSize: AppFontSize.bodyLarge,
    fontWeight: AppFontWeight.regular,
    height: 1.5,
  );

  static TextStyle get body => TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.regular,
    height: 1.5,
  );

  static TextStyle get bodyMedium => TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.medium,
    height: 1.5,
  );

  /// الملاحظات والتواريخ (لونها غالباً textSecondary)
  static TextStyle get caption => TextStyle(
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.regular,
    height: 1.4,
  );

  static TextStyle get captionMedium => TextStyle(
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.medium,
    height: 1.4,
  );

  // ----------------------------------------------------------
  // الحقول
  // ----------------------------------------------------------

  /// النص اللي بيكتبه المستخدم داخل الحقل
  static TextStyle get input => TextStyle(
    fontSize: AppFontSize.input,
    fontWeight: AppFontWeight.regular,
    height: 1.4,
  );

  /// الـ hint داخل الحقل
  static TextStyle get hint => TextStyle(
    fontSize: AppFontSize.hint,
    fontWeight: AppFontWeight.regular,
    height: 1.4,
  );

  /// الـ label فوق الحقل
  static TextStyle get label => TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.medium,
    height: 1.4,
  );

  /// رسالة الخطأ تحت الحقل
  static TextStyle get error => TextStyle(
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.regular,
    height: 1.4,
  );

  // ----------------------------------------------------------
  // الأزرار والروابط
  // ----------------------------------------------------------

  /// نص الزر الأساسي
  static TextStyle get button => TextStyle(
    fontSize: AppFontSize.button,
    fontWeight: AppFontWeight.bold,
    height: 1.2,
  );

  /// نص الزر الثانوي (Google مثلاً)
  static TextStyle get buttonSecondary => TextStyle(
    fontSize: AppFontSize.buttonSecondary,
    fontWeight: AppFontWeight.semiBold,
    height: 1.2,
  );

  /// الروابط ("نسيت كلمة المرور؟"، "عرض الكل") لونها primary
  static TextStyle get link => TextStyle(
    fontSize: AppFontSize.body,
    fontWeight: AppFontWeight.semiBold,
    height: 1.4,
  );

  // ----------------------------------------------------------
  // أخرى
  // ----------------------------------------------------------

  /// نصوص الـ bottom bar
  static TextStyle get navLabel => TextStyle(
    fontSize: AppFontSize.navLabel,
    fontWeight: AppFontWeight.semiBold,
    height: 1.2,
  );

  /// عنوان مجموعة في القائمة ("اليوم"، "أمس")
  static TextStyle get groupHeader => TextStyle(
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.semiBold,
    height: 1.4,
  );

  /// نص داخل chip أو badge
  static TextStyle get chip => TextStyle(
    fontSize: AppFontSize.caption,
    fontWeight: AppFontWeight.medium,
    height: 1.2,
  );
}
