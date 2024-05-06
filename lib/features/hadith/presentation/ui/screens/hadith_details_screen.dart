import 'package:al_hadith_task/application/theme_data/text_styles.dart';
import 'package:al_hadith_task/features/books/data/model/books.dart';
import 'package:al_hadith_task/features/books/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/chapters/data/model/chapter.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/widgets.dart';
import 'package:al_hadith_task/features/hadith/presentation/ui/widgets/hadith_section_and_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HadithDetailsScreen extends StatefulWidget {
  const HadithDetailsScreen({super.key, this.chapter, this.books});

  final Chapter? chapter;
  final Books? books;

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
            widget.books!.title,
            style: TextStyles.heavy16,
          ),
          const Gap(5),
          Text(
            widget.chapter!.title,
            style: TextStyles.medium12,
          ),
        ],
      ),
    );
  }
}

Widget testBook() {
  return ListView.separated(
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
  );
}
