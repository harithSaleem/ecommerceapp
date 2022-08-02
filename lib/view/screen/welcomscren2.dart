import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/widget/welcom/containercircel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:madetruky/view/widget/welcom/boxcontainer.dart';

class WelcomTwo extends StatefulWidget {
  const WelcomTwo({Key? key}) : super(key: key);

  @override
  State<WelcomTwo> createState() => _WelcomTwoState();
}

class _WelcomTwoState extends State<WelcomTwo> {
  int crrentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (e) {
                setState(() {
                  crrentindex = e;
                });
              },
              children: const [
                Boxcontainer(),
                Boxcontainer(),
                Boxcontainer(),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 140,
              child: AnimatedSmoothIndicator(
                activeIndex: crrentindex,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.red,
                  dotColor: Colors.red.shade100,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.LoginScreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Almarai',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
