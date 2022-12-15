import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/routes/app_pages.dart';

class HomeController extends GetxController {
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  RxInt gender_index = 0.obs;
  RxString gender = "".obs;

  @override
  void onInit() {
    super.onInit();
    print("HomeScreen Açıldı");
  }

  void setData() {
    Get.toNamed(Routes.DETAIL, parameters: {
      "age": "${ageController.text}",
      "height": "${heightController.text}",
      "weight": "${weightController.text}"
    });
  }
}
