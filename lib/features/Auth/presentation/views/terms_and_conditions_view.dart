import 'package:flutter/material.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/Core/themes/app_dimensions.dart';
import 'package:hesba/Core/utils/terms_and_conditions_data.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/legal_sections_list_view.dart';

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
      body: SingleChildScrollView(
        padding: AppPadding.screenAll,
        child: LegalSectionsListView(sections: TermsAndConditionsData.getSections(context)),
      ),
    );
  }
}
