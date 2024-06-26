import 'package:al_hadith_task/application/theme_data/app_colors.dart';
import 'package:al_hadith_task/features/books/data/model/books.dart';
import 'package:al_hadith_task/features/books/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/books/presentation/ui/widgets/all_books_section_tile.dart';
import 'package:al_hadith_task/features/chapters/presentation/ui/screens/chapters_screen.dart';
import 'package:al_hadith_task/features/common/presentation/widgets/default_app_body.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.drag_handle, color: white),
        title: const Text('All Hadis book'),
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
          child: ListView.separated(
            separatorBuilder: (_, __) => const Gap(12),
            itemCount: Get.find<BookController>().booksList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              Books books = Get.find<BookController>().booksList[index];
              return AllBooksSectionTile(
                books: books,
                onTap: () {
                  Get.to(
                    () => ChaptersScreen(
                      books: books,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
