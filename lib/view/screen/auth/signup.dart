import 'package:flutter/material.dart';
import 'package:madetruky/view/widget/welcom/authtextform.dart';
import 'package:madetruky/view/widget/welcom/mybutton.dart';

class SignUp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(
              height: 45,
            ),
            AutTextFormfiald(
              controller: nameController,
              hintText: 'Enter your name',
              keyboardType: TextInputType.name,
              obscureText: false,
              prefixIcon: const Text(''),
              suffixIcon: const Text(''),
              validator: () {},
            ),
            AutTextFormfiald(
              controller: nameController,
              hintText: 'Enter your Email',
              keyboardType: TextInputType.name,
              obscureText: false,
              prefixIcon: const Icon(Icons.email),
              suffixIcon: const Text(''),
              validator: () {},
            ),
            AutTextFormfiald(
              controller: nameController,
              hintText: 'Enter your password',
              keyboardType: TextInputType.name,
              obscureText: false,
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility_off),
              validator: () {},
            ),
            const SizedBox(
              height: 55,
            ),
            MyBotton(
              title: 'Sign up',
              onprees: () {},
            ),
          ],
        ),
      ),
    );
  }
}
