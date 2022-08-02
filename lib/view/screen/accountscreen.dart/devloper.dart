import 'package:flutter/material.dart';
import 'package:madetruky/view/widget/serach.dart';

class Devloper extends StatelessWidget {
  final controlersearch = TextEditingController();

  Devloper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'المطورين',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Almarai',
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(25),
                      shape: BoxShape.circle,
                      color: Colors.red.shade200,
                    ),
                    // ignore: prefer_const_constructors
                    child: CircleAvatar(
                      backgroundImage: const AssetImage(
                        'assets/images/b.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/harith.png'),
                                ),
                                Text(
                                  ' More Aboute devloper : 07815536797',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ' harith2121996saleem@gmail.com',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://img.icons8.com/material/2x/fa314a/creative-commons-all-rights-reserved.png',
                      ),
                      const Text(
                        ' Powerd by BMK.Company',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
