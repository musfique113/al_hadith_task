import 'package:al_hadith_task/features/chapters/data/model/chapter.dart';
import 'package:al_hadith_task/features/common/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class ChapterController extends GetxController {
  final DataRepository _dataRepository;

  ChapterController(this._dataRepository);

 List<Chapter> chaptersList = <Chapter>[];

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
