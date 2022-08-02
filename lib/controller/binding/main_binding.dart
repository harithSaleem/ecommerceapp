import 'package:get/get.dart';
import 'package:madetruky/controller/logic/maincontroler.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
