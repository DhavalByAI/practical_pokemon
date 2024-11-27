import 'package:get/get.dart';
import 'package:practical_pokemon/features/list_page/list_page_controller.dart';

class ListBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ListpageController());
  }
}