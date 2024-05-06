import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/hadith/data/models/hadith.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HadithDetailsTitleSection extends StatelessWidget {
  const HadithDetailsTitleSection({
    super.key,
    required this.hadith,
  });

  final Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HexagonShape(
              textInside: 'B',
            ),
            const Gap(10),
            _buildTitleSection(),
          ],
        ),
        Row(
          children: [
            CustomContainerWidget(
              color: viridian,
              borderRadius: BorderRadius.circular(32),
              padding: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 4, bottom: 4),
                child: Text(
                  hadith.grade,
                  style: TextStyles.medium12.copyWith(color: white),
                ),
              ),
            ),
            const Gap(10),
            _buildThreeDot()
          ],
        )
      ],
    );
  }

  Widget _buildThreeDot() {
    return InkWell(
      onTap: () {
        Get.bottomSheet(
          const BottomModelSheetWidget(),
          isDismissible: true,
          enableDrag: true,
          elevation: 0,
          clipBehavior: Clip.none
        );
      },
      child: SvgBuilder(path: AssetsPath.threeDotIconSvg),
    );
  }

  Widget _buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'হাদিস: ',
                style: TextStyles.heavy16
                    .copyWith(fontWeight: FontWeight.w500, color: marengo),
              ),
              TextSpan(
                text: hadith.hadithId.toString(),
                style: TextStyles.heavy16
                    .copyWith(fontWeight: FontWeight.w700, color: viridian),
              ),
            ],
          ),
        ),
        Text(
          hadith.bookName,
          style: TextStyles.regular12.copyWith(color: jetBlack),
        ),
      ],
    );
  }
}
