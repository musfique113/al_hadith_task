import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/hadith/data/models/section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
