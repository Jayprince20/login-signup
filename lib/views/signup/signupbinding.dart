import 'package:get/get.dart';
import 'package:signin/controllers/signupcontroller.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
