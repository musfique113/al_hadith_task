import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class BookController extends GetxController {
  final DataRepository _dataRepository;

  BookController(this._dataRepository);

  final RxList<Books> _booksList = RxList();

  RxList<Books> get booksList => _booksList;

  Future<List<Books>> getDraftOrders() async {
    final response = await _dataRepository.getDraftOrders();
    _booksList.value = response;
    return response;
  }
}
