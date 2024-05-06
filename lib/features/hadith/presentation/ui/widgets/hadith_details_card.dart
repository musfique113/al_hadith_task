import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/hadith/data/models/hadith.dart';
import 'package:al_hadith_task/features/hadith/presentation/ui/widgets/hadith_details_title_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HadithDetailsCard extends StatelessWidget {
  const HadithDetailsCard({
    super.key,
    required this.hadith,
  });

  final Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HadithDetailsTitleSection(hadith: hadith),
          const Gap(33),
          Text(
            hadith.ar,
            textAlign: TextAlign.right,
            style: TextStyles.regular14.copyWith(
                height: 2,
                fontSize: 22,
                color: jetBlack,
                fontFamily: 'FontKfgq'),
          ),
          const Gap(20),
          Text(
            hadith.narrator,
            style: TextStyles.heavy14.copyWith(color: viridian),
            textAlign: TextAlign.left,
          ),
          const Gap(10),
          Text(
            hadith.bn,
            style: TextStyles.regular14.copyWith(color: jetBlack),
            textAlign: TextAlign.left,
          ),
          const Gap(20),
          Visibility(
            visible: hadith.note.isNotEmpty,
            child: Text(
              hadith.note,
              style: TextStyles.regular14.copyWith(color: spanishGray),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
