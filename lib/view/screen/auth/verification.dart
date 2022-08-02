import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/widget/welcom/formveification.dart';
import 'package:madetruky/view/widget/welcom/mybutton.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 90,
                ),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 40,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset('assets/images/k.png'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Almarai',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '6- Digit PIN has been sent to your phone enter it below to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Almarai',
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: VerTextFormfiald(
                        keyboardType: TextInputType.number,
                        validator: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyBotton(
                title: 'Confrim',
                onprees: () {
                  Get.toNamed(Routes.MainScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
