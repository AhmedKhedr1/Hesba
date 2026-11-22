
import 'package:flutter/material.dart';
import 'package:hesba/features/Auth/data/models/legal_section_model.dart';
import 'package:hesba/features/Auth/presentation/views/widgets/legal_section_item.dart';

class LegalSectionsListView extends StatelessWidget {
  const new({
    super.key,
    required this.sections,
  });

  final List<LegalSectionModel> sections;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sections.length,
      separatorBuilder: (context, index) => const SizedBox(height: 28),
      itemBuilder: (context, index) {
        final section = sections[index];
    
        return LegalSectionItem(
          number: section.number,
          title: section.title,
          description: section.description,
        );
      },
    );
  }
}
