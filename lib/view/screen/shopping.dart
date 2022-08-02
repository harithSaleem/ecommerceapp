import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  // final controller = Get.find<Productcontroller>();
  // ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 17,
                top: 10,
              ),
              child: Text(
                'الفئات',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            // height: MediaQuery.of(context).size.height * 1.1,
            child: Column(
              children: [
                bulidcontainer(
                  image:
                      'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                  image1:
                      'https://img.icons8.com/material/2x/4a90e2/edit-image.png',
                  colr: Colors.blue,
                ),
                bulidcontainer(
                  image:
                      'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                  image1:
                      'https://img.icons8.com/material/2x/fa314a/edit-image.png',
                  colr: Colors.red,
                ),
                bulidcontainer(
                  image:
                      'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                  image1:
                      'https://img.icons8.com/material/2x/26e07f/edit-image.png',
                  colr: Colors.green,
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.red),
                            child: const Text(
                              ' (3) مدفوع ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Almarai',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              ' IQD   80,000 ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Almarai',
                              ),
                            ),
                          ),
                          const Text(
                            'الكل ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Almarai',
                            ),
                          ),
                          Image.network(
                            'https://img.icons8.com/material/2x/fa314a/checked-2.png',
                            width: 35,
                            height: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bulidcontainer({
    required String image,
    required String image1,
    required Color colr,
  }) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        color: colr,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(9),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'كامره تصوير احترافي ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Almarai',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'The color',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'IQD 350,000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Almarai',
                          ),
                        ),
                        const Text(
                          'IQD 350,000',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 9,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              initialRating: 4,
                              itemCount: 7,
                              allowHalfRating: true,
                              itemSize: 13,
                              unratedColor: Colors.black,
                              minRating: 5,
                              direction: Axis.horizontal,
                              onRatingUpdate: (rating) {
                                rating = rating;
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: const Text(
                                  '  + ',
                                ),
                              ),
                              const Text(
                                ' 4 ',
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: const Text(
                                  '  - ',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 2,
                  bottom: 2,
                  right: 2,
                ),
                child: Image.network(
                  image,
                  height: 150,
                ),
              ),
              Positioned(
                top: 2,
                right: 4,
                child: Image.network(
                  image1,
                  width: 20,
                  height: 20,
                ),
              ),
              Positioned(
                top: 90,
                bottom: 1,
                left: 5,
                child: Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: colr,
                  ),
                  child: const Text(
                    'اجهزه تصوير ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Almarai',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class bulidcontainer extends StatelessWidget {
  const bulidcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 120,
      width: MediaQuery.of(context).size.width * 10.0,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(9),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'كامره تصوير احترافي ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Almarai',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'The color',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'IQD 350,000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Almarai',
                          ),
                        ),
                        const Text(
                          'IQD 350,000',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 9,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              initialRating: 4,
                              itemCount: 7,
                              allowHalfRating: true,
                              itemSize: 13,
                              unratedColor: Colors.black,
                              minRating: 5,
                              direction: Axis.horizontal,
                              onRatingUpdate: (rating) {
                                rating = rating;
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: const Text(
                                  '  + ',
                                ),
                              ),
                              const Text(
                                ' 4',
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: const Text(
                                  '  - ',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 2,
                  bottom: 2,
                  right: 2,
                ),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.PS765qSQSK4-kql-roGVawHaF7?pid=ImgDet&rs=1',
                  height: 150,
                ),
              ),
              Positioned(
                top: 2,
                right: 4,
                child: Image.network(
                  'https://img.icons8.com/material/2x/4a90e2/edit-image.png',
                  width: 20,
                  height: 20,
                ),
              ),
              Positioned(
                top: 90,
                bottom: 1,
                left: 5,
                child: Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    'اجهزه تصوير ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Almarai',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
