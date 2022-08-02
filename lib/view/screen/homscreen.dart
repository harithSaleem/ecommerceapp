import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:madetruky/controller/logic/cart_controler.dart';
import 'package:madetruky/controller/logic/product_controler.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/screen/productdetiels_screen.dart';
import 'package:madetruky/view/screen/productdetiels_screen.dart';
import 'package:madetruky/view/screen/productdetiels_screen.dart';

import 'package:madetruky/view/widget/serach.dart';

final controller = Get.find<Productcontroller>();
final cartcontroller = Get.find<CartController>();
final controlersearch = TextEditingController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List color = [
      Colors.blue,
      Colors.pink,
      Colors.deepPurple,
      Colors.amber,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.teal,
      Colors.blueGrey,
      Colors.brown,
      Colors.blue,
      Colors.pink,
      Colors.deepPurple,
      Colors.amber,
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.teal,
      Colors.blueGrey,
      Colors.brown,
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 5,
              right: 5,
            ),
            child: SerTextFormfiald(
              // controller: controlersearch,
              hintText: 'search here',
              keyboardType: TextInputType.name,
              obscureText: false,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 28,
                ),
              ),
              suffixIcon: controller.searchTextController.text.isNotEmpty
                  ? const Icon(Icons.circle)
                  : IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 20,
                      ),
                      color: Colors.grey,
                      onPressed: () {
                        controller.clearSearch();
                      },
                    ),
              validator: () {},
            ),
          ),
          preferredSize: const Size.fromHeight(100),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        // title: Text(controller.title[controller.currentIndex.value]),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 10,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Made inTruky',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Almarai',
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Image.network(
              'https://img.icons8.com/material/2x/ffffff/starred-ticket.png',
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () {
            if (controller.isloading.value) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            } else {
              return Expanded(
                child: GridView.builder(
                  itemCount: controller.searchlist.isEmpty
                      ? controller.ProductList.length
                      : controller.searchlist.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 9.0,
                    maxCrossAxisExtent: 200,
                  ),
                  itemBuilder: (context, index) {
                    if (controller.searchlist.isEmpty) {
                      return bulidItem(
                          image: controller.ProductList[index].image,
                          color: color[index],
                          id: controller.ProductList[index].id,
                          rating: controller.ProductList[index].rating.rate,
                          price: controller.ProductList[index].price,
                          onTap: () {
                            // Get.toNamed(Routes.ProductDetiles);
                            Get.to(() => ProductDetiles(
                                producteModels: controller.ProductList[index]));
                          });
                    } else {
                      return bulidItem(
                          image: controller.searchlist[index].image,
                          color: color[index],
                          id: controller.searchlist[index].id,
                          rating: controller.searchlist[index].rating.rate,
                          price: controller.searchlist[index].price,
                          onTap: () {
                            // Get.toNamed(Routes.ProductDetiles);
                            Get.to(() => ProductDetiles(
                                producteModels: controller.searchlist[index]));
                          });
                    }
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget bulidItem({
    required String image,
    required Color color,
    required int id,
    required Function() onTap,
    required double rating,
    required double price,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 2.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -6,
                  left: -7,
                  child: Stack(
                    children: const [
                      Icon(
                        Icons.bookmark,
                        size: 55,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 10,
                  left: 6,
                  child: Text(
                    '24%',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Almarai',
                    ),
                  ),
                ),
                Positioned(
                  right: -7,
                  top: -7,
                  child: Obx(
                    () => IconButton(
                      onPressed: () {
                        controller.managefavorit(id);
                      },
                      icon: controller.isFavorite(id)
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_border_outlined,
                              color: color,
                            ),
                    ),
                  ),
                ),
                Positioned(
                  left: -2,
                  top: 105,
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 0,
                        right: 4,
                        left: 4,
                      ),
                      child: Text(
                        '$rating',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -2,
                  top: 135,
                  child: RatingBar.builder(
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                    ),
                    initialRating: rating,
                    itemCount: 7,
                    allowHalfRating: true,
                    itemSize: 13,
                    unratedColor: Colors.black,
                    minRating: rating,
                    direction: Axis.horizontal,
                    onRatingUpdate: (rating) {
                      rating = rating;
                    },
                  ),
                ),
                Positioned(
                  top: 140,
                  right: 0,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'T-sherit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        '$price IQD',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
