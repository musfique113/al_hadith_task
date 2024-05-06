import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/core/app_constrain/app_constrain.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SahihHadithPopupMessage extends StatelessWidget {
  const SahihHadithPopupMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: viridian,
                      ),
                      const Gap(10),
                      Text(
                        AppConstrain.sahihHadith,
                        style: TextStyles.heavy16.copyWith(color: charcoal),
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgBuilder(path: AssetsPath.closeIconSvg)),
                ],
              ),
              const Gap(20),
              const Text(AppConstrain.dialogMessage)
            ],
          ),
        ],
      ),
    );
  }
}
