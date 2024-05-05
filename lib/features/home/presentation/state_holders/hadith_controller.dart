import 'package:al_hadith_task/features/home/data/models/hadith.dart';
import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:get/get.dart';

class HadithController extends GetxController {
  final DataRepository _dataRepository;

  HadithController(this._dataRepository);

  final RxList<Hadith> _hadithList = RxList();

  RxList<Hadith> get hadithList => _hadithList;

  Future<List<Hadith>> getHadith() async {
    final response = await _dataRepository.getHadith();
    _hadithList.value = response;
    return response;
  }
}
