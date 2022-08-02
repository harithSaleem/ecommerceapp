// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:madetruky/controller/logic/cart_controler.dart';
// import 'package:madetruky/controller/logic/product_controler.dart';
// import 'package:madetruky/model/productmodel.dart';

// class CardeScreen extends StatelessWidget {
//   CardeScreen({Key? key}) : super(key: key);

//   final controller = Get.find<Productcontroller>();
//   final cartcontroller = Get.find<CartController>();

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       if (controller.isloading.value) {
//         return const Center(
//           child: CircularProgressIndicator(
//             color: Colors.indigo,
//           ),
//         );
//       } else {
//         return Expanded(
//           child: GridView.builder(
//             itemCount: controller.ProductList.length,
//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//               childAspectRatio: 0.8,
//               crossAxisSpacing: 6.0,
//               mainAxisSpacing: 9.0,
//               maxCrossAxisExtent: 200,
//             ),
//             itemBuilder: (context, index) {
//               return bulidItemCard(
//                   image: controller.ProductList[index].image,
//                   price: controller.ProductList[index].price,
//                   rating: controller.ProductList[index].rating.rate,
//                   id: controller.ProductList[index].id,
//                   productModels: controller.ProductList[index],
//                   onTap: () {
//                     // Get.toNamed(Routes.ProductDetiles);
//                     //   Get.to(() => ProductDetiles(
//                     //       producteModels: controller.ProductList[index]));
//                   });
//               // });
//             },
//           ),
//         );
//       }
//     });
//   }

//   Widget bulidItemCard({
//     required String image,
//     required double price,
//     required double rating,
//     required int id,
//     required ProducteModels productModels,
//     required Function() onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.6),
//                 blurRadius: 4.0,
//                 spreadRadius: 2.0,
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Obx(
//                 () => Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         controller.managefavorit(id);
//                       },
//                       icon: controller.isFavorite(id)
//                           ? const Icon(
//                               Icons.favorite,
//                               color: Colors.red,
//                             )
//                           : const Icon(
//                               Icons.favorite_border_outlined,
//                               color: Colors.black,
//                             ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         cartcontroller.addProductToCart(productModels);
//                       },
//                       icon: const Icon(
//                         Icons.shopping_cart,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 140,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: Colors.white,
//                 ),
//                 child: Image.network(
//                   image,
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 5,
//                   right: 5,
//                   top: 2,
//                   bottom: 1,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '\$$price',
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Container(
//                       height: 18,
//                       width: 45,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.teal,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           left: 3,
//                           right: 2,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: const [
//                             // TextUtlis(
//                             //   text: '$rating',
//                             //   color: Colors.white,
//                             //   fontsize: 12,
//                             //   fontWeight: FontWeight.bold,
//                             //   fontFamily: 'Almarai',
//                             // ),
//                             Icon(
//                               Icons.star,
//                               size: 13,
//                               color: Colors.white,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
