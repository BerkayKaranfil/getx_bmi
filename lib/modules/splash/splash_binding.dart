import 'package:get/get.dart';
import 'package:getx_bmi/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}