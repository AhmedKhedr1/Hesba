import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hesba/generated/l10n.dart';

class Hesba extends StatelessWidget {
  const Hesba({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Locale('ar'),
          title: 'Hesba',
          theme: ThemeData(fontFamily: 'IBMPlexSansArabic'),
          home: Scaffold(
            body: SafeArea(
              child: Text(' حسبه', style: TextStyle(fontSize: 35)),
            ),
          ),
        );
      },
    );
  }
}
