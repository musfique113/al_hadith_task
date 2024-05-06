import 'package:al_hadith_task/features/home/data/models/chapter.dart';
import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class ChapterController extends GetxController {
  final DataRepository _dataRepository;

  ChapterController(this._dataRepository);

  RxList<Chapter> chaptersList = <Chapter>[].obs;

  @override
  void onInit() {
    super.onInit();
    getChapterList();
  }

  void getChapterList() async {
    List<Chapter> chapterList = await _dataRepository.getChapterLists();
    chaptersList.assignAll(chapterList);
  }
}
