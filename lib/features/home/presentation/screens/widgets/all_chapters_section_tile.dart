import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllChaptersSectionTile extends StatelessWidget {
  const AllChaptersSectionTile({
    super.key,
    required this.chapter,
    this.onTap,
  });

  final Chapter chapter;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainerWidget(
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HexagonShape(
                textInside: chapter.chapterId.toString(),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _headerWithBodyText(
                      chapter.title,
                      'হাদিসের রেঞ্জ: ${chapter.hadisRange}',
                      CrossAxisAlignment.start),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerWithBodyText(
      String headerText, String bodyText, CrossAxisAlignment textAlign) {
    return Column(
      crossAxisAlignment: textAlign,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          headerText,
          style: TextStyles.heavy16.copyWith(
              fontWeight: FontWeight.w700,
              color: viridian,
              fontFamily: 'Kalpurush'),
        ),
        Text(
          bodyText,
          style: TextStyles.medium14
              .copyWith(color: jetBlack, fontFamily: 'Kalpurush'),
        ),
      ],
    );
  }
}
