import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/routes/routes.dart';
import 'package:madetruky/view/widget/welcom/authtextform.dart';
import 'package:madetruky/view/widget/welcom/mybutton.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Image.asset(
                      'assets/images/k.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Almarai',
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AutTextFormfiald(
                    controller: numberController,
                    hintText: '+964   Enter your number',
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    prefixIcon: const Text(''),
                    suffixIcon: const Text(''),
                    validator: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AutTextFormfiald(
                    controller: passwordController,
                    hintText: ' Enter your password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    validator: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 0, right: 2),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'ForgetPassword',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyBotton(
                    title: 'Sign In',
                    onprees: () {
                      Get.toNamed(Routes.Verification);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont have an account ?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.SignUp);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
