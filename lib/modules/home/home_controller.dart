import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

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
}