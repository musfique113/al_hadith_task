import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_details_card.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/hadith_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SectionCard extends StatefulWidget {
  const SectionCard({
    super.key,
    required this.section,
  });

  final Section section;

  @override
  State<SectionCard> createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // RichText(
              //   textAlign: TextAlign.start,
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //         text: '${section.number} ',
              //         style: TextStyles.heavy14
              //             .copyWith(fontWeight: FontWeight.w800, color: viridian),
              //       ),
              //       TextSpan(
              //         text: section.title,
              //         style: TextStyles.heavy14.copyWith(color: marengo),
              //       ),
              //     ],
              //   ),
              // ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${widget.section.number} ',
                    style: TextStyles.heavy14
                        .copyWith(fontWeight: FontWeight.w800, color: viridian),
                  ),
                  Visibility(
                    visible: widget.section.preface.isNotEmpty,
                    child: Expanded(
                      child: Text(
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        widget.section.title,
                        style: TextStyles.heavy14.copyWith(color: marengo),
                      ),
                    ),
                  ),
                ],
              ),
              _buildVisibilitySection(),
            ],
          ),
        ),
        const Gap(14),
        Obx(
          () => ListView.separated(
            separatorBuilder: (_, __) => const Gap(12),
            itemCount: Get.find<HadithController>().hadithsList.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              Hadith hadith = Get.find<HadithController>().hadithsList[index];
              return HadithDetailsCard(
                hadith: hadith,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildVisibilitySection() {
    return Visibility(
      visible: widget.section.preface.isNotEmpty,
      child: Column(
        children: [
          const Gap(15),
          const Divider(color: antiFlashWhite),
          const Gap(10),
          Text(
            widget.section.preface,
            style: TextStyles.regular12.copyWith(color: spanishGray),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
