import 'package:al_hadith_task/features/common/data/repositories/data_repository.dart';
import 'package:al_hadith_task/features/hadith/data/models/section.dart';
import 'package:get/get.dart';

class SectionController extends GetxController {
  final DataRepository _dataRepository;

  SectionController(this._dataRepository);

 List<Section> sectionsList = <Section>[];

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
