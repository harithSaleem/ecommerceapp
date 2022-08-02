import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/view/widget/detiles/color_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  final String imageUrl;
  const ImageSlider({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  CarouselController carouselController = CarouselController();
  int curruntpage = 0;
  final List<Color> colorSelcted = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  int currentPage = 0;
  int currentcolor = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.imageUrl),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            );
          },
          carouselController: carouselController,
          options: CarouselOptions(
              height: 350,
              autoPlay: true,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlayInterval: const Duration(seconds: 2),
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(() {
                    curruntpage = index;
                  })),
        ),
        Positioned(
          bottom: 30,
          left: 180,
          child: AnimatedSmoothIndicator(
            activeIndex: curruntpage,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Colors.indigo,
              dotColor: Colors.black,
            ),
          ),
        ),
        // Positioned(
        //   bottom: 30,
        //   right: 30,
        //   child: Container(
        //     height: 200,
        //     width: 50,
        //     padding: const EdgeInsets.all(8),
        //     decoration: BoxDecoration(
        //       color: Colors.black.withOpacity(0.3),
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //     child: ListView.separated(
        //         itemBuilder: (context, index) => GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   currentcolor = index;
        //                 });
        //               },
        //               child: ColorPicker(
        //                 color: colorSelcted[index],
        //                 Outborder: currentcolor == index,
        //               ),
        //             ),
        //         separatorBuilder: (context, index) => const SizedBox(
        //               height: 3,
        //             ),
        //         itemCount: colorSelcted.length),
        //   ),
        // ),
        Positioned(
          bottom: 50,
          left: 210,
          child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.red,
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 5,
                top: 2,
                bottom: 2,
              ),
              child: Text(
                'ملابس رجاليه  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 25,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
