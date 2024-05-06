import 'package:al_hadith_task/features/home/data/models/section.dart';
import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class SectionController extends GetxController {
  final DataRepository _dataRepository;

  SectionController(this._dataRepository);

  RxList<Section> sectionsList = <Section>[].obs;

  @override
  void onInit() {
    super.onInit();
    getSectionList();
  }

  void getSectionList() async {
    List<Section> sectionList = await _dataRepository.getSection();
    sectionsList.assignAll(sectionList);
  }
}
