import 'package:flutter/widgets.dart';
import 'package:hesba/Core/extensions/localization_extension.dart';
import 'package:hesba/features/Auth/data/models/legal_section_model.dart';

class PrivacyPolicyData {
  static List<LegalSectionModel> getSections(BuildContext context) {
    final l10n = context.l10n;

    return [
      LegalSectionModel(
        number: 1,
        title: l10n.dataCollectionTitle,
        description: l10n.dataCollectionDescription,
      ),
      LegalSectionModel(
        number: 2,
        title: l10n.dataUsageTitle,
        description: l10n.dataUsageDescription,
      ),
      LegalSectionModel(
        number: 3,
        title: l10n.dataProtectionTitle,
        description: l10n.dataProtectionDescription,
      ),
      LegalSectionModel(
        number: 4,
        title: l10n.dataSharingTitle,
        description: l10n.dataSharingDescription,
      ),
      LegalSectionModel(
        number: 5,
        title: l10n.userRightsTitle,
        description: l10n.userRightsDescription,
      ),
      LegalSectionModel(
        number: 6,
        title: l10n.policyUpdatesTitle,
        description: l10n.policyUpdatesDescription,
      ),
    ];
  }
}
