import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/default_app_body.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/presentation/screens/ui/hadith_details_screen.dart';
import 'package:al_hadith_task/features/home/presentation/screens/widgets/all_chapters_section_tile.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/chapter_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({super.key});

  @override
  State<ChaptersScreen> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All chapters'),
        actions: const [
          Icon(Icons.search, color: white),
          Gap(4),
        ],
        centerTitle: true,
      ),
      body: DefaultAppBody(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.separated(
                separatorBuilder: (_, __) => const Gap(12),
                itemCount: Get.find<ChapterController>().chaptersList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Chapter chapter =
                      Get.find<ChapterController>().chaptersList[index];
                  return AllChaptersSectionTile(
                    chapter: chapter,
                    onTap: _onTapTile,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _onTapTile() {
  Get.to(
    () => const HadithDetailsScreen(),
  );
}
