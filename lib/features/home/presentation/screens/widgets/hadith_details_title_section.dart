import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HadithDetailsTitleSection extends StatelessWidget {
  const HadithDetailsTitleSection({
    super.key,
  });

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hadith No: ',
                        style: TextStyles.heavy14.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: marengo,
                            fontFamily: 'Poppins'),
                      ),
                      TextSpan(
                        text: "01",
                        style: TextStyles.heavy14.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: viridian,
                            fontFamily: 'Lato'),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Books Name',
                  style: TextStyles.regular12.copyWith(color: jetBlack),
                ),
              ],
            ),
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
                  'Sahih',
                  style: TextStyles.medium12.copyWith(color: white),
                ),
              ),
            ),
            const Gap(10),
            SvgBuilder(path: AssetsPath.threeDotIconSvg)
          ],
        )
      ],
    );
  }
}
