import 'package:get/get.dart';
import 'package:practical_pokemon/features/detail_page/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }

}