import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/widget/welcom/buttonwelcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: const Alignment(0.0, -0.6),
              child: Container(
                margin: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white70),
                child: Image.asset(
                  'assets/images/k.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.16,
                ),
              ),
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Almarai',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment(0.0, 0.3),
              child: Text(
                'The best way to meet people and try new activties let\'s get started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: const Alignment(0.0, 1.0),
              child: InkWell(
                onTap: () {
                  Get.offNamed(Routes.WelcomTwo);
                },
                child: const BouttonWelcome(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
