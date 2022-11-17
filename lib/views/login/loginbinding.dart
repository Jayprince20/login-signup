import 'package:get/get.dart';
import 'package:signin/controllers/logincontroller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
