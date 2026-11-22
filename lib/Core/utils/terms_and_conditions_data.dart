
import 'package:flutter/widgets.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/features/Auth/data/models/legal_section_model.dart';

class TermsAndConditionsData {
  static List<LegalSectionModel> getSections(BuildContext context) {
    final l10n = context.l10n;

    return [
      LegalSectionModel(
        number: 1,
        title: l10n.termsAcceptanceTitle,
        description: l10n.termsAcceptanceDescription,
      ),
      LegalSectionModel(
        number: 2,
        title: l10n.appUsageTitle,
        description: l10n.appUsageDescription,
      ),
      LegalSectionModel(
        number: 3,
        title: l10n.accountResponsibilityTitle,
        description: l10n.accountResponsibilityDescription,
      ),
      LegalSectionModel(
        number: 4,
        title: l10n.dataAccuracyTitle,
        description: l10n.dataAccuracyDescription,
      ),
      LegalSectionModel(
        number: 5,
        title: l10n.accountDeletionTitle,
        description: l10n.accountDeletionDescription,
      ),
    ];
  }
}
