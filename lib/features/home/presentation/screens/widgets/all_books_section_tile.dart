import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllBooksSectionTile extends StatelessWidget {
  const AllBooksSectionTile({
    super.key,
    required this.books,
    this.onTap,
  });

  final Books books;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomContainerWidget(
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HexagonShape(
                    textInside: books.abvrCode,
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _headerWithBodyText(books.title, books.bookName,
                          CrossAxisAlignment.start),
                    ],
                  ),
                ],
              ),
              _headerWithBodyText(books.numberOfHadis.toString(), 'Books Name',
                  CrossAxisAlignment.end),
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
          style: TextStyles.heavy16
              .copyWith(fontWeight: FontWeight.w700, color: viridian),
        ),
        Text(
          bodyText,
          style: TextStyles.regular12.copyWith(color: jetBlack),
        ),
      ],
    );
  }
}
