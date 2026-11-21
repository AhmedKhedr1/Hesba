import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';

class TermsAndConditionsView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(context.l10n.termsAndConditions),
        centerTitle: true,
      ),
    );
  }
}
