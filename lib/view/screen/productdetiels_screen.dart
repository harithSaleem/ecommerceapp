import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:madetruky/model/productmodel.dart';
import 'package:madetruky/view/screen/homscreen.dart';
import 'package:madetruky/view/widget/detiles/coles_info.dart';
import 'package:madetruky/view/widget/detiles/color_picker.dart';
import 'package:madetruky/view/widget/detiles/image_slider.dart';
import 'package:madetruky/view/widget/welcom/containercircel.dart';

class ProductDetiles extends StatefulWidget {
  final ProducteModels producteModels;
  const ProductDetiles({
    Key? key,
    required this.producteModels,
  }) : super(key: key);

  @override
  State<ProductDetiles> createState() => _ProductDetilesState();
}

class _ProductDetilesState extends State<ProductDetiles> {
  int curruntpage = 0;
  final List<Color> colorSelcted = [
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.deepOrange,
  ];
  int currentPage = 0;
  int currentcolor = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider(
                imageUrl: widget.producteModels.image,
              ),
              ClothesInfo(
                title: widget.producteModels.title,
                productiid: widget.producteModels.id,
                // rate: widget.producteModels.rating.rate,
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 200,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Color  ',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentcolor = index;
                                  });
                                },
                                child: Builder(
                                  builder: (context) {
                                    return ColorPicker(
                                      color: colorSelcted[index],
                                      Outborder: currentcolor == index,
                                    );
                                  },
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                height: 3,
                              ),
                              itemCount: colorSelcted.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 25,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'اطلع على المزيد  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'الاقتراحات ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.pink,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.2),
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                              width: 118,
                              height: 70,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 3,
                            child: RatingBar.builder(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              initialRating: 1,
                              itemCount: 5,
                              allowHalfRating: true,
                              itemSize: 13,
                              unratedColor: Colors.black,
                              minRating: 5,
                              direction: Axis.horizontal,
                              onRatingUpdate: (rating) {
                                rating = rating;
                              },
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 55,
                            child: Column(
                              children: const [
                                Text(
                                  'حذاء رياضي  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 3,
                            right: 3,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                              size: 13,
                            ),
                          ),
                          Positioned(
                            top: 55,
                            left: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.pink,
                              ),
                              child: const Text(
                                'Camara',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Almarai',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.pink,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.2),
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                              width: 118,
                              height: 70,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 3,
                            child: RatingBar.builder(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              initialRating: 1,
                              itemCount: 5,
                              allowHalfRating: true,
                              itemSize: 13,
                              unratedColor: Colors.black,
                              minRating: 5,
                              direction: Axis.horizontal,
                              onRatingUpdate: (rating) {
                                rating = rating;
                              },
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 55,
                            child: Column(
                              children: const [
                                Text(
                                  'حذاء رياضي  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 3,
                            right: 3,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                              size: 13,
                            ),
                          ),
                          Positioned(
                            top: 55,
                            left: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.pink,
                              ),
                              child: const Text(
                                'Camara',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Almarai',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.pink,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.2),
                            child: Image.network(
                              'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                              width: 118,
                              height: 70,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 3,
                            child: RatingBar.builder(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              initialRating: 1,
                              itemCount: 5,
                              allowHalfRating: true,
                              itemSize: 13,
                              unratedColor: Colors.black,
                              minRating: 5,
                              direction: Axis.horizontal,
                              onRatingUpdate: (rating) {
                                rating = rating;
                              },
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 55,
                            child: Column(
                              children: const [
                                Text(
                                  'حذاء رياضي  ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '12,000 IQD ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 8,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 3,
                            right: 3,
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                              size: 13,
                            ),
                          ),
                          Positioned(
                            top: 55,
                            left: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.pink,
                              ),
                              child: const Text(
                                'Camara',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Almarai',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
