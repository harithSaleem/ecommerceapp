import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/view/screen/accountscreen.dart/devloper.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 160,
              width: double.infinity,
              child: Image.asset(
                'assets/images/t.png',
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 160,
              color: Colors.red.withOpacity(0.2),
            ),
            Stack(
              children: [
                Positioned(
                  top: -160,
                  left: 220,
                  right: 0,
                  bottom: 380,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/harith.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 155,
                  right: 0,
                  bottom: 380,
                  child: Column(
                    children: const [
                      Text(
                        'Harith Saleem',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'harith2121996saleem@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '07815536797',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Almarai',
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          child: Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(1),
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          '1  القسائم',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        margin: const EdgeInsets.all(10.0),
                                        child: Image.network(
                                          'https://img.icons8.com/ios-filled/2x/fa314a/train-ticket.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'طلباتي',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://img.icons8.com/fluency-systems-regular/2x/fa314a/shortlist.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'بانتظار الدفع',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://img.icons8.com/material-outlined/2x/fa314a/time-machine.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'مدفوع',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://img.icons8.com/material/2x/fa314a/cash-register.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'تم شحنه',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://img.icons8.com/material/2x/fa314a/big-parcel.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'تم',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Almarai',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        margin: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://img.icons8.com/material/2x/fa314a/ok.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(2),
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'اعدادات الحساب',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Almarai',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 22,
                                      height: 22,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://img.icons8.com/material/2x/fa314a/person-male.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(2),
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'اعدادات التطبيق ',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Almarai',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 22,
                                      height: 22,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://img.icons8.com/material/2x/fa314a/settings--v2.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(2),
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'المنتجات المفضله ',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Almarai',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 22,
                                      height: 22,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://img.icons8.com/material/2x/fa314a/like.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'خدمه الزبائن',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Almarai',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 22,
                                      height: 22,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://img.icons8.com/material/2x/fa314a/why-us-male.png',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(Devloper());
                                      },
                                      child: const Text(
                                        'المطورين',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Almarai',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 22,
                                      height: 22,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://img.icons8.com/material/2x/fa314a/ios-development.png',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Stack(
//           children: [
//             Container(
//               height: 200,
//               width: double.infinity,
//               child: Image.network(
//                 'https://th.bing.com/th/id/OIP._yuTJnwt-lCl9-XYciTYFAHaFm?pid=ImgDet&rs=1',
//                 width: double.infinity,
//               ),
//             ),
//             Container(
//               // height: 200,
//               width: double.infinity,
//               color: Colors.red.withOpacity(0.3),
//             ),
//             Positioned(
//               top: -50,
//               left: 220,
//               right: 0,
//               bottom: 380,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//                   margin: const EdgeInsets.all(20),
//                   height: 20,
//                   width: 20,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/harith.png',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 155,
//               left: 155,
//               right: 0,
//               bottom: 380,
//               child: Column(
//                 children: const [
//                   Text(
//                     'Harith Saleem',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Almarai',
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     'harith2121996saleem@gmail.com',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Almarai',
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     '07815536797',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Almarai',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 270,
//               left: 0,
//               right: 0,
//               child: Container(
//                 color: Colors.white,
//                 alignment: Alignment.center,
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(22),
//                         color: Colors.white,
//                       ),
//                       child: Expanded(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                 left: 10,
//                               ),
//                               child: Icon(
//                                 Icons.arrow_back_ios,
//                                 color: Colors.red,
//                                 size: 28,
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 const Text(
//                                   '1  القسائم',
//                                   style: TextStyle(
//                                     color: Colors.red,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: 'Almarai',
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 5,
//                                 ),
//                                 Container(
//                                   width: 35,
//                                   height: 35,
//                                   margin: const EdgeInsets.all(10.0),
//                                   child: Image.network(
//                                     'https://img.icons8.com/ios-filled/2x/fa314a/train-ticket.png',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Divider(
//                       color: Colors.red,
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Padding(
//                                 padding: EdgeInsets.only(
//                                   left: 10,
//                                 ),
//                                 child: Icon(
//                                   Icons.arrow_back_ios,
//                                   color: Colors.red,
//                                   size: 28,
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   const Text(
//                                     'طلباتي',
//                                     style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Almarai',
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 35,
//                                     height: 35,
//                                     margin: const EdgeInsets.all(10.0),
//                                     child: Image.network(
//                                       'https://img.icons8.com/fluency-systems-regular/2x/fa314a/shortlist.png',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   const Text(
//                                     'طلباتي',
//                                     style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Almarai',
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 35,
//                                     height: 35,
//                                     margin: const EdgeInsets.all(10.0),
//                                     child: Image.network(
//                                       'https://img.icons8.com/material-outlined/2x/fa314a/time-machine.png',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   const Text(
//                                     'طلباتي',
//                                     style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Almarai',
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 35,
//                                     height: 35,
//                                     margin: const EdgeInsets.all(10.0),
//                                     child: Image.network(
//                                       'https://img.icons8.com/material-outlined/2x/fa314a/time-machine.png',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   const Text(
//                                     'طلباتي',
//                                     style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Almarai',
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 35,
//                                     height: 35,
//                                     margin: const EdgeInsets.all(10.0),
//                                     child: Image.network(
//                                       'https://img.icons8.com/material-outlined/2x/fa314a/time-machine.png',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   const Text(
//                                     'طلباتي',
//                                     style: TextStyle(
//                                       color: Colors.red,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Almarai',
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     width: 35,
//                                     height: 35,
//                                     margin: const EdgeInsets.all(10.0),
//                                     child: Image.network(
//                                       'https://img.icons8.com/material-outlined/2x/fa314a/time-machine.png',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),