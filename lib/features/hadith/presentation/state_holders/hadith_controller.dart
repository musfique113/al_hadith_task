import 'package:al_hadith_task/features/common/data/repositories/data_repository.dart';
import 'package:al_hadith_task/features/hadith/data/models/hadith.dart';
import 'package:get/get.dart';

class HadithController extends GetxController {
  final DataRepository _dataRepository;

  HadithController(this._dataRepository);

  RxList<Hadith> hadithsList = <Hadith>[].obs;

  @override
  void onInit() {
    super.onInit();
    getHadithList();
  }

  void getHadithList() async {
    List<Hadith> hadithList = await _dataRepository.getHadith();
    hadithsList.assignAll(hadithList);
  }
}
