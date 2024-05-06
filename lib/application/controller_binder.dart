import 'package:al_hadith_task/features/books/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/chapters/presentation/state_holders/chapter_controller.dart';
import 'package:al_hadith_task/features/common/data/repositories/data_repository.dart';
import 'package:al_hadith_task/features/common/data/repositories/local_data_source.dart';
import 'package:al_hadith_task/features/hadith/presentation/state_holders/hadith_controller.dart';
import 'package:al_hadith_task/features/hadith/presentation/state_holders/section_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalDataSource());
    Get.put(DataRepository(Get.find<LocalDataSource>()));
    Get.put(BookController(Get.find<DataRepository>()));
    Get.put(HadithController(Get.find<DataRepository>()));
    Get.put(ChapterController(Get.find<DataRepository>()));
    Get.put(SectionController(Get.find<DataRepository>()));
  }
}
