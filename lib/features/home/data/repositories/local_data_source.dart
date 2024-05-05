import 'package:al_hadith_task/core/services/local_database/database_provider.dart';
import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataSource {
  Future<List<Books>> getBooks() async {
    final List<Books> books = [];
    final Database database = await DBProvider.db.database;
    final fetchedList = await database.query('books');
    if (fetchedList.isNotEmpty) {
      for (var json in fetchedList) {
        books.add(Books.fromJson(json));
      }
    }
    return books;
  }

  Future<List<Hadith>> getHadith() async {
    final List<Hadith> hadith = [];
    final Database database = await DBProvider.db.database;
    final fetchedList = await database.query('hadith');
    if (fetchedList.isNotEmpty) {
      for (var json in fetchedList) {
        hadith.add(Hadith.fromJson(json));
      }
    }
    return hadith;
  }


}
