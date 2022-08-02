import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/controller/logic/maincontroler.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.find<MainController>();
  final controlersearch = TextEditingController();
  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs.value,
            ),
            bottomNavigationBar: Container(
              height: 77,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Align(
                alignment: const Alignment(0.0, 0.99),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                      backgroundColor: Colors.red,
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'home',
                      activeIcon: Icon(
                        Icons.home,
                        color: Colors.brown,
                        size: 30,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.map,
                      ),
                      activeIcon: Icon(
                        Icons.map,
                        color: Colors.brown,
                        size: 30,
                      ),
                      label: 'map',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.star_rate,
                      ),
                      activeIcon: Icon(
                        Icons.star_rate,
                        color: Colors.brown,
                        size: 30,
                      ),
                      label: 'start',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      activeIcon: Icon(
                        Icons.shopping_cart,
                        color: Colors.brown,
                        size: 30,
                      ),
                      label: 'shopping',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      activeIcon: Icon(
                        Icons.person,
                        color: Colors.brown,
                        size: 30,
                      ),
                      label: 'account',
                    ),
                  ],
                  type: BottomNavigationBarType.shifting,
                  elevation: 0.0,
                  currentIndex: controller.currentIndex.value,
                  onTap: (index) {
                    controller.currentIndex.value = index;
                  },
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
//  Stack(
//               children: [
//                 Align(
//                   alignment: const Alignment(1.0, 1.0),
//                   child: Container(
//                     height: 75,
//                     decoration: const BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         topRight: Radius.circular(25),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: const Alignment(1.0, 1.0),
//                   child: BottomNavigationBar(
//                     backgroundColor: Colors.red,
//                     elevation: 0.0,
//                     showSelectedLabels: false,
//                     currentIndex: controller.currentIndex.value,
//                     onTap: (index) {
//                       controller.currentIndex.value = index;
//                     },
//                     type: BottomNavigationBarType.shifting,
//                     items: const [
//                       BottomNavigationBarItem(
//                         backgroundColor: Colors.red,
//                         icon: Icon(
//                           Icons.home,
//                         ),
//                         label: 'home',
//                         activeIcon: Icon(
//                           Icons.home,
//                           color: Colors.brown,
//                           size: 30,
//                         ),
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(
//                           Icons.map,
//                         ),
//                         activeIcon: Icon(
//                           Icons.map,
//                           color: Colors.brown,
//                           size: 30,
//                         ),
//                         label: 'map',
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(
//                           Icons.star_rate,
//                         ),
//                         activeIcon: Icon(
//                           Icons.star_rate,
//                           color: Colors.brown,
//                           size: 30,
//                         ),
//                         label: 'start',
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(
//                           Icons.shopping_cart,
//                         ),
//                         activeIcon: Icon(
//                           Icons.shopping_cart,
//                           color: Colors.brown,
//                           size: 30,
//                         ),
//                         label: 'shopping',
//                       ),
//                       BottomNavigationBarItem(
//                         icon: Icon(
//                           Icons.person,
//                         ),
//                         activeIcon: Icon(
//                           Icons.person,
//                           color: Colors.brown,
//                           size: 30,
//                         ),
//                         label: 'account',
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),