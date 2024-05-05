import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/repositories/local_data_source.dart';

class DataRepository {
  final LocalDataSource _localDataSource;

  DataRepository(this._localDataSource);

  Future<List<Books>> getDraftOrders() {
    return _localDataSource.getBooks();
  }

  Future<List<Hadith>> getHadith() {
    return _localDataSource.getHadith();
  }
}
