import 'package:get/get.dart';
import 'package:getx_bmi/modules/home/home_screen.dart';
import 'package:getx_bmi/routes/app_pages.dart';

class SplashController extends GetxController{
  @override
  void onReady() async{
    super.onReady();
    print("splash screen açıldı");
    await Future.delayed(Duration(milliseconds: 500));
    Get.toNamed(Routes.HOME);
  }
}