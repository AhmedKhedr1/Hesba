import 'package:flutter/material.dart';
import 'package:hesba/Core/themes/app_reduis.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'أهلاً بعودتك ',
            style: TextStyle(fontSize: AppFontSize.headline),
            textDirection: Directionality.of(context),
          ),
        ],
      ),
    );
  }
}
