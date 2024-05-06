import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_details_title_section.dart';
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
        children: [
          const HadithDetailsTitleSection(),
          const Gap(33),
          Text(
            hadith.arDiacless,
            textAlign: TextAlign.right,
            style: TextStyles.regular14.copyWith(
                fontSize: 20, color: jetBlack, fontFamily: 'FontKfgq'),
          ),
          const Gap(20),
          Text(
            'It is narrated from Abu Hurairah (may Allaah have mercy on him):',
            style: TextStyles.heavy14.copyWith(color: viridian),
            textAlign: TextAlign.left,
          ),
          const Gap(10),
          Text(
            'সংকলক : শাইখ ইমামুল হুজ্জাহ আবু ‘আবদুল্লাহ মুহাম্মাদ বিন ইসমা’ঈল বিন ইবরাহীম বিন মুগীরাহ্‌ আল বুখারী আল-জু’ফী। মোট হাদীস সংখ্যা : ৭৫৬৩ টি। প্রকাশনী : তাওহীদ পাবলিকেশন্স। মৌলিক হাদীস গ্রন্থ হিসাবে সহীহুল বুখারী গ্রন্থটি হাদীসের কিতাবগুলির মধ্যে সর্বশ্রেষ্ঠ। শুধু তাই নয় এর সংশ্লিষ্ট ব্যক্তিগবের্গর সর্বজন স্বীকৃত মন্তব্য হলো : আল কুরআনের পরে মানব রচিত বা সংকলিত গ্রন্থের মধ্যে সর্বশ্রেষ্ঠ কিতাব নিঃসন্দেহে সহীহুল বুখারী। বুখারী সংকলন করতে গিয়ে ইমাম বুখারী (রহঃ) কে যে কী পরিমাণ পরিশ্রম ও সাধনা করতে হয়েছে তা বর্ণনাতীত। মহান আল্লাহ তা’আলা তাঁর এই পরিশ্রমকে ক্ববুল করুন এবং এ মহান সাদাকায়ে যারিয়ার জন্য তাঁকে জান্নাতুল ফেরদৌস-এর পুরষ্কারে ভুষিত করুন। - আমীন।',
            style: TextStyles.regular14
                .copyWith(color: jetBlack, fontFamily: 'Kalpurush'),
            textAlign: TextAlign.left,
          ),
          const Gap(20),
          Text(
            '(See also 51, 2681, 2804, 2941, 2978, 3174, 4553, 5980, 6260, 7196, 7541) (Modern Publication: 6, Islamic Foundation: 6)',
            style: TextStyles.regular14.copyWith(color: spanishGray),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
