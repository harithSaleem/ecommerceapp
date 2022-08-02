import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:madetruky/controller/logic/product_controler.dart';

class ClothesInfo extends StatelessWidget {
  final String title;
  final int productiid;
  // final double rate;
  ClothesInfo({
    Key? key,
    required this.title,
    required this.productiid,
    // required this.rate,
  }) : super(key: key);
  final controller = Get.find<Productcontroller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                ),
              ),
              Obx(
                () => Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      shape: BoxShape.circle),
                  child: InkWell(
                    onTap: () {
                      controller.managefavorit(productiid);
                    },
                    child: controller.isFavorite(productiid)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              // TextUtlis(
              //   text: '$rate',
              //   color: Colors.black,
              //   fontsize: 14,
              //   fontWeight: FontWeight.bold,
              //   fontFamily: 'Alamrai',
              // ),
              RatingBar.builder(
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                initialRating: 1,
                itemCount: 5,
                allowHalfRating: true,
                minRating: 3,
                direction: Axis.horizontal,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                onRatingUpdate: (rating) {
                  rating = 5;
                },
              ),
              Column(
                children: const [
                  Text(
                    '12,000  IQD',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '12,000  IQD',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
