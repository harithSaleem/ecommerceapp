import 'package:get/get.dart';
import 'package:madetruky/controller/binding/main_binding.dart';
import 'package:madetruky/controller/binding/product_binding.dart';
import 'package:madetruky/view/screen/auth/signup.dart';
import 'package:madetruky/view/screen/auth/verification.dart';

import 'package:madetruky/view/screen/loginscreen.dart';
import 'package:madetruky/view/screen/mainscreen.dart';

import 'package:madetruky/view/screen/welcomscreen.dart';
import 'package:madetruky/view/screen/welcomscren2.dart';

class AppRoutes {
  static const welcom = Routes.WelcomeScreen;

  static final routes = [
    GetPage(
      name: Routes.WelcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.WelcomTwo,
      page: () => const WelcomTwo(),
    ),
    GetPage(
      name: Routes.LoginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.Verification,
      page: () => const Verification(),
    ),
    GetPage(
      name: Routes.SignUp,
      page: () => SignUp(),
    ),
    GetPage(
      name: Routes.MainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
        ProductBinding(),
      ],
    ),
  ];
}

class Routes {
  static const WelcomeScreen = '/welcomescreen';
  static const WelcomTwo = '/GlowCircle';
  static const LoginScreen = '/loginscreen';
  static const Verification = '/verification';
  static const SignUp = '/signup';
  static const MainScreen = '/mainscreen';
  // static const ProductDetiles = '/ProductDetiles';
}
