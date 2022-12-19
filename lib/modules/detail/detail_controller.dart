import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {

  //String? data;
  String? bmi;
  String? bmiStatus;
  String? responseColor;

  @override
  void onInit() {
    bmi = Get.parameters["bmi"];
    bmiStatus = Get.parameters["bmiStatus"];
    responseColor = Get.parameters["responseColor"];
    super.onInit();
    //data = Get.parameters["age"];
    
  }

   chanceResponseColor(){
    switch (responseColor) {
      case "orange":
        return Colors.red;
      case "green":
        return Colors.green;  
      case "red":
        return Colors.red;   
    }
  }
}
