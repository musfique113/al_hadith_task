import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_details_title_section.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/chapter_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/hadith_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/section_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _homeScreenBody(),
    );
  }

  Widget _homeScreenBody() {
    return DefaultAppBody(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 27),
          child: Column(
            children: [
              _buildChapterTitleAndDescriptionSection(),
              const Gap(14),
              _hadithDetailsSection(),
              const Gap(14),
              // testBook(),
              const Gap(14),
              testChapter(),
              // testHadith(),
              // testSection()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sahih Bukhari",
            style: TextStyles.heavy16.copyWith(fontFamily: 'Poppins'),
          ),
          const Gap(5),
          Text(
            "Revelation",
            style: TextStyles.medium12,
          ),
        ],
      ),
    );
  }
}

Widget _buildChapterTitleAndDescriptionSection() {
  return CustomContainerWidget(
    child: Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1/1 Chapter:',
                style: TextStyles.heavy14.copyWith(
                    fontWeight: FontWeight.w800,
                    color: viridian,
                    fontFamily: 'Lato'),
              ),
              TextSpan(
                text:
                    " How the Divine Revelation started being revealed to Allah's Messenger",
                style: TextStyles.heavy14
                    .copyWith(color: marengo, fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
        const Gap(15),
        const Divider(color: antiFlashWhite),
        const Gap(10),
        Text(
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
          style: TextStyles.regular12.copyWith(color: spanishGray),
          textAlign: TextAlign.start,
        ),
      ],
    ),
  );
}

Widget _hadithDetailsSection() {
  return CustomContainerWidget(
    child: Column(
      children: [
        const HadithDetailsTitleSection(),
        const Gap(33),
        Text(
          "عَنْ أَبِي هُرَيْرَةَ - رضي الله عنه - قَالَ: قَالَ رَسُولُ اللَّهِ - صلى الله عليه وسلم - فِي الْبَحْرِ: «هُوَ الطَّهُورُ مَاؤُهُ الْحِلُّ مَيْتَتُهُ» أَخْرَجَهُ الْأَرْبَعَةُ، وَابْنُ أَبِي شَيْبَةَ وَاللَّفْظُ لَهُ (1)، وَصَحَّحَهُ ابْنُ خُزَيْمَةَ وَالتِّرْمِذِيُّ",
          textAlign: TextAlign.right,
          style: TextStyles.regular14
              .copyWith(fontSize: 20, color: jetBlack, fontFamily: 'FontKfgq'),
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

Widget testBook() {
  return Obx(
    () => ListView.separated(
      separatorBuilder: (context, index) =>
          const Divider(height: 0.5, color: Colors.black38),
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: Get.find<BookController>().booksList.length,
      itemBuilder: (context, index) {
        Books books = Get.find<BookController>().booksList[index];
        return Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            '${books.bookName} ${books.title}',
          ),
        );
      },
    ),
  );
}

Widget testChapter() {
  return Obx(
    () => Visibility(
      replacement: Text('No data'),
      visible: Get.find<ChapterController>().chaptersList.isNotEmpty,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            const Divider(height: 0.5, color: Colors.black38),
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: Get.find<ChapterController>().chaptersList.length,
        itemBuilder: (context, index) {
          Chapter chapter = Get.find<ChapterController>().chaptersList[index];
          return Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              '${chapter.hadisRange} ${chapter.title}',
            ),
          );
        },
      ),
    ),
  );
}

Widget testHadith() {
  return Obx(() {
    return Visibility(
      replacement: Text('No data'),
      visible: Get.find<HadithController>().hadithsList.isNotEmpty,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Get.find<HadithController>().hadithsList.length,
        itemBuilder: (context, index) {
          final Hadith hadith = Get.find<HadithController>().hadithsList[index];
          return ListTile(
            title: Text(hadith.bookName),
            subtitle: Text(hadith.hadithId.toString()),
          );
        },
      ),
    );
  });
}

Widget testSection() {
  return Obx(() {
    return Visibility(
      replacement: Text('No data'),
      visible: Get.find<SectionController>().sectionsList.isNotEmpty,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Get.find<SectionController>().sectionsList.length,
        itemBuilder: (context, index) {
          final Section section = Get.find<SectionController>().sectionsList[index];
          return ListTile(
            title: Text(section.bookName),
            subtitle: Text(section.preface),
          );
        },
      ),
    );
  });
}