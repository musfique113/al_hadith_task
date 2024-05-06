import 'dart:math';

import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_details_card.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/section_card.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/hadith_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/section_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HadithSectionAndTitleCards extends StatefulWidget {
  const HadithSectionAndTitleCards({super.key});

  @override
  State<HadithSectionAndTitleCards> createState() =>
      _HadithSectionAndTitleCardsState();
}

class _HadithSectionAndTitleCardsState
    extends State<HadithSectionAndTitleCards> {
  @override
  Widget build(BuildContext context) {
    final sectionController = Get.find<SectionController>();
    final hadithController = Get.find<HadithController>();

    final sectionsAndHadiths = List.generate(
      min(sectionController.sectionsList.length,
          hadithController.hadithsList.length),
      (index) => {
        'section': sectionController.sectionsList[index],
        'hadith': hadithController.hadithsList[index],
      },
    );

    return Column(
      children: [
        for (final item in sectionsAndHadiths) ...[
          SectionCard(section: item['section'] as Section),
          const Gap(15),
          HadithDetailsCard(hadith: item['hadith'] as Hadith),
          const Gap(15),
        ]
      ],
    );
  }
}
