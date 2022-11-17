import 'package:get/get.dart';
import 'package:signin/routes/myroutes.dart';
import 'package:signin/views/login/login.dart';
import 'package:signin/views/login/loginbinding.dart';
import 'package:signin/views/signup/signup.dart';
import 'package:signin/views/signup/signupbinding.dart';
import 'package:signin/views/welcome/welcome.dart';
import 'package:signin/views/welcome/welcomebinding.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.Welcome,
      binding: WelcomeBinding(),
      page: () => WelcomePage(),
    ),
    GetPage(
      name: AppRoutes.Login,
      transition: Transition.fadeIn,
      binding: LoginBinding(),
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.Register,
      transition: Transition.fadeIn,
      binding: SignUpBinding(),
      page: () => SignUpPage(),
    ),
  ];
}
