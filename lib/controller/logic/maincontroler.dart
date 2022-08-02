import 'package:get/get.dart';
import 'package:madetruky/view/screen/account.dart';
import 'package:madetruky/view/screen/categories.dart';
import 'package:madetruky/view/screen/homscreen.dart';

import 'package:madetruky/view/screen/shopping.dart';
import 'package:madetruky/view/screen/spical.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = [
    HomeScreen(),
    CategoriesScreen(),
    SpicalScreen(),
    ShoppingScreen(),
    AccountScreen(),
  ].obs;
  // final title = ['home', 'map', 'start', 'shopping', 'account'].obs;
  //to change title
}
