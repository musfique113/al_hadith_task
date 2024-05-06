import 'package:al_hadith_task/core/services/local_database/database_provider.dart';
import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataSource {
  Future<List<Books>> getBooks() async {
    final Database database = await DBProvider.db.database;
    List<Map> list = await database.rawQuery('SELECT * FROM books');
    List<Books> books = [];
    for (int i = 0; i < list.length; i++) {
      books.add(Books(
          id: list[i]['id'],
          title: list[i]['title'],
          titleAr: list[i]['title_ar'],
          numberOfHadis: list[i]['number_of_hadis'],
          abvrCode: list[i]['abvr_code'],
          bookName: list[i]['book_name'],
          bookDescription: list[i]['book_descr']));
    }
    return books;
  }

  Future<List<Chapter>> getChapters() async {
    final Database database = await DBProvider.db.database;
    List<Map> list = await database.rawQuery('SELECT * FROM chapter');
    List<Chapter> chapter = [];
    for (int i = 0; i < list.length; i++) {
      chapter.add(Chapter(
          id: list[i]['id'],
          chapterId: list[i]['chapter_id'],
          bookId: list[i]['book_id'],
          title: list[i]['title'],
          number: list[i]['number'],
          hadisRange: list[i]['hadis_range'],
          bookName: list[i]['book_name']));
    }
    return chapter;
  }

  Future<List<Hadith>> getHadith() async {
    final Database database = await DBProvider.db.database;
    List<Map> list = await database.rawQuery('SELECT * FROM hadith');
    List<Hadith> hadith = [];
    for (int i = 0; i < list.length; i++) {
      hadith.add(Hadith(
          hadithId: list[i]['hadith_id'],
          bookId: list[i]['book_id'],
          bookName: list[i]['book_name'],
          chapterId: list[i]['chapter_id'],
          sectionId: list[i]['section_id'],
          narrator: list[i]['narrator'],
          bn: list[i]['bn'],
          ar: list[i]['ar'],
          arDiacless: list[i]['ar_diacless'],
          note: list[i]['note'],
          gradeId: list[i]['grade_id'],
          grade: list[i]['grade'],
          gradeColor: list[i]['grade_color']));
    }
    return hadith;
  }

  Future<List<Section>> getSection() async {
    final Database database = await DBProvider.db.database;
    List<Map> list = await database.rawQuery('SELECT * FROM section');
    List<Section> section = [];
    for (int i = 0; i < list.length; i++) {
      section.add(Section(
          id: list[i]['id'],
          bookId: list[i]['book_id'],
          bookName: list[i]['book_name'],
          chapterId: list[i]['chapter_id'],
          sectionId: list[i]['section_id'],
          title: list[i]['title'],
          preface: list[i]['preface'],
          number: list[i]['number']));
    }
    return section;
  }
}
