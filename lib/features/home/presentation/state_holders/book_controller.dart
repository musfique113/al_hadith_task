import 'package:al_hadith_task/features/home/data/models/books.dart';
import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class BookController extends GetxController {
  final DataRepository _dataRepository;

  BookController(this._dataRepository);

RxList<Books> booksList = <Books>[].obs;

  @override
  void onInit() {
    super.onInit();
    getBookList();
  }

  void getBookList() async {
    List<Books> bookList = await _dataRepository.getBooksList();
    booksList.assignAll(bookList);
  }
}

