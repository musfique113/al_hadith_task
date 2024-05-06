import 'package:al_hadith_task/features/books/data/model/books.dart';
import 'package:al_hadith_task/features/chapters/data/model/chapter.dart';
import 'package:al_hadith_task/features/common/data/repositories/local_data_source.dart';
import 'package:al_hadith_task/features/hadith/data/models/hadith.dart';
import 'package:al_hadith_task/features/hadith/data/models/section.dart';

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
