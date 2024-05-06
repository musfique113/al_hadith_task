import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/data/repositories/local_data_source.dart';

class DataRepository {
  final LocalDataSource _localDataSource;

  DataRepository(this._localDataSource);

  Future<List<Books>> getBooksList() {
    return _localDataSource.getBooks();
  }

  Future<List<Chapter>> getChapterLists() {
    return _localDataSource.getChapters();
  }

  Future<List<Hadith>> getHadith() {
    return _localDataSource.getHadith();
  }

  Future<List<Section>> getSection() {
    return _localDataSource.getSection();
  }
}
