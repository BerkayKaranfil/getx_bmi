import 'package:get/get.dart';

class DetailController extends GetxController {

  //String? data;
  String? bmi;
  String? bmiStatus;

  @override
  void onInit() {
    bmi = Get.parameters["bmi"];
    bmiStatus = Get.parameters["bmiStatus"];
    super.onInit();
    //data = Get.parameters["age"];
    
  }
}
