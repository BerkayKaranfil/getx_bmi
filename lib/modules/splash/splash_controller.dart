import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onReady() async{
    super.onReady();
    await Future.delayed(Duration(milliseconds: 3000));
    // Bekledikten sonra home page'e yönlendir. (Burada)
  }
}