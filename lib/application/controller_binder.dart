import 'package:al_hadith_task/features/home/data/repositories/data_repository.dart';
import 'package:al_hadith_task/features/home/data/repositories/local_data_source.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/book_controller.dart';
import 'package:al_hadith_task/features/home/presentation/state_holders/hadith_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalDataSource());
    Get.put(DataRepository(Get.find<LocalDataSource>()));
    Get.put(BookController(Get.find<DataRepository>()));
    Get.put(HadithController(Get.find<DataRepository>()));
  }
}
