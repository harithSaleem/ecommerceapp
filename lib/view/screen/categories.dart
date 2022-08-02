import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/screen/categoreScreen/cat10.dart';
import 'package:madetruky/view/screen/categoreScreen/cat11.dart';
import 'package:madetruky/view/screen/categoreScreen/cat12.dart';
import 'package:madetruky/view/screen/categoreScreen/cat13.dart';
import 'package:madetruky/view/screen/categoreScreen/cat3.dart';
import 'package:madetruky/view/screen/categoreScreen/cat4.dart';
import 'package:madetruky/view/screen/categoreScreen/cat5.dart';
import 'package:madetruky/view/screen/categoreScreen/cat6.dart';
import 'package:madetruky/view/screen/categoreScreen/cat7.dart';
import 'package:madetruky/view/screen/categoreScreen/cat8.dart';
import 'package:madetruky/view/screen/categoreScreen/cat9.dart';
import 'package:madetruky/view/screen/categoreScreen/cateone.dart';
import 'package:madetruky/view/screen/categoreScreen/catetwo.dart';
import 'package:madetruky/view/screen/homscreen.dart';
import 'package:madetruky/view/widget/categoricontainer.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  int index = 0;
  List color = [
    Colors.amber,
    Colors.blue,
    Colors.pink,
    Colors.deepPurple,
    Colors.grey,
    Colors.orange,
    Colors.brown,
    Colors.pink,
    Colors.green,
    Colors.teal,
    Colors.pinkAccent,
    Colors.black,
    Colors.red,
  ];

  List li = [
    'https://img.icons8.com/material/2x/ffffff/iphone-x.png',
    'https://img.icons8.com/material/2x/ffffff/sweater.png',
    'https://img.icons8.com/material/2x/ffffff/swimming-suit.png',
    'https://img.icons8.com/material/2x/ffffff/watches-front-view.png',
    'https://img.icons8.com/material/2x/ffffff/headphones.png',
    'https://img.icons8.com/pastel-glyph/2x/ffffff/laptop--v2.png',
    'https://img.icons8.com/glyph-neue/2x/ffffff/car.png',
    'https://img.icons8.com/external-victoruler-solid-victoruler/2x/ffffff/external-concealer-beauty-cosmetics-victoruler-solid-victoruler.png',
    'https://img.icons8.com/metro/2x/ffffff/basilica.png',
    'https://img.icons8.com/ios-glyphs/2x/ffffff/coffee-to-go.png',
    'https://img.icons8.com/pastel-glyph/2x/ffffff/christmas-present.png',
    'https://img.icons8.com/ios-filled/2x/ffffff/shopping-cart.png',
    'https://img.icons8.com/dotty/2x/ffffff/circled.png',
  ];
  List lt = [
    'موبايل و اكسسوارات',
    'ملابس رجاليه',
    'ملابس نسائيه',
    'مجوهرات وساعات',
    'الكترونيات',
    'كمبيوتراات  ومنتجات مكتبيه ',
    'سيارات ودراجات ناريه',
    'صحه وجمال ',
    'المنزل والحديقه',
    'غذائيه ',
    'عطور',
    'ادوات منزليه ',
    'منوعه',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            "الفئات ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Almarai',
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back(
                result: HomeScreen(),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.8,
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 10.0,
              maxCrossAxisExtent: 150,
            ),
            itemBuilder: (context, index) {
              return Categoriecontinaer(
                color: color[index],
                image: li[index],
                title: lt[index],
                ontap: () {
                  if (index == 0) {
                    Get.to(const Categorieone());
                  } else if (index == 1) {
                    Get.to(const Categorietow());
                  } else if (index == 2) {
                    Get.to(const Categoriethree());
                  } else if (index == 3) {
                    Get.to(const Categoriefour());
                  } else if (index == 4) {
                    Get.to(const Categoriefour());
                  } else if (index == 5) {
                    Get.to(const Categoriefive());
                  } else if (index == 6) {
                    Get.to(const Categoriesix());
                  } else if (index == 7) {
                    Get.to(const Categorieseven());
                  } else if (index == 8) {
                    Get.to(const Categorieeight());
                  } else if (index == 9) {
                    Get.to(const Categorienine());
                  } else if (index == 10) {
                    Get.to(const Categorieten());
                  } else if (index == 11) {
                    Get.to(const Categorieelvent());
                  } else if (index == 12) {
                    Get.to(const Categorietwe());
                  } else {
                    () {
                      Get.to(const Categoriethr());
                    };
                  }
                },
              );
            },
            itemCount: li.length,
          ),
        ),
      ),
    );
  }
}
