import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/hadith_section_and_details.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/chapter_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/hadith_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/section_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HadithDetailsScreen extends StatefulWidget {
  const HadithDetailsScreen({super.key});

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _homeScreenBody(),
    );
  }

  Widget _homeScreenBody() {
    return const DefaultAppBody(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 27),
          child: HadithSectionAndTitleCards(),
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
      replacement: const Text('No data'),
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
      replacement: const Text('No data'),
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
      replacement: const Text('No data'),
      visible: Get.find<SectionController>().sectionsList.isNotEmpty,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Get.find<SectionController>().sectionsList.length,
        itemBuilder: (context, index) {
          final Section section =
              Get.find<SectionController>().sectionsList[index];
          return ListTile(
            title: Text(section.bookName),
            subtitle: Text(section.preface),
          );
        },
      ),
    );
  });
}
