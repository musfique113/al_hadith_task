import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_details_card.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/section_card.dart';
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
    return Column(
      children: [
        Obx(
          () => ListView.separated(
            separatorBuilder: (_, __) => const Gap(12),
            itemCount: Get.find<SectionController>().sectionsList.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              Section section =
                  Get.find<SectionController>().sectionsList[index];
              return SectionCard(
                section: section,
              );
            },
          ),
        ),
      ],
    );
  }
}
