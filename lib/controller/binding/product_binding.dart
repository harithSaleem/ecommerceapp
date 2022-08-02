import 'package:get/get.dart';
import 'package:madetruky/controller/logic/cart_controler.dart';
import 'package:madetruky/controller/logic/product_controler.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Productcontroller());
    Get.lazyPut(() => CartController());
  }
}
