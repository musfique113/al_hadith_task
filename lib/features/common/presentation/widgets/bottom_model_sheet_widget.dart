import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class BottomModelSheetWidget extends StatelessWidget {
  const BottomModelSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 22),
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(16),
        topLeft: Radius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'More Option',
                style: TextStyles.heavy16
                    .copyWith(color: charcoal, fontFamily: 'Poppins'),
              ),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgBuilder(path: AssetsPath.closeIconSvg))
            ],
          ),
          const Gap(20),
          _bottomSheetColumn(AssetsPath.planeIconSvg, 'Go To Main Hadith'),
          _bottomSheetColumn(AssetsPath.saveIconSvg, 'Add to Collection'),
          _bottomSheetColumn(AssetsPath.copyIconSvg, 'Bangla Copy'),
          _bottomSheetColumn(AssetsPath.copyIconSvg, 'English Copy'),
          _bottomSheetColumn(AssetsPath.addIconSvg, 'Arabic Copy'),
          _bottomSheetColumn(AssetsPath.addIconSvg, 'Add Note'),
          _bottomSheetColumn(AssetsPath.shareIconSvg, 'Share'),
          _bottomSheetColumn(AssetsPath.reportIconSvg, 'Report'),
        ],
      ),
    );
  }

  Column _bottomSheetColumn(String iconPath, String title) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              SvgBuilder(path: iconPath),
              const Gap(13),
              Text(
                title,
                style: TextStyles.medium14
                    .copyWith(color: marengo, fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
        const Gap(24)
      ],
    );
  }
}
