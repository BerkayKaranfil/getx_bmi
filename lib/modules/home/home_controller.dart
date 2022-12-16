import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeController extends GetxController {
  var height = 0.0.obs;
  var weight = 0.0.obs;
  var age = 0.0.obs;
  var bmi = "".obs;
  var bmiStatus = "";
  var result = 0.0;

  //Gender Button//
  List<String> genderList = ["Male", "Female", "Other"];
  RxInt genderIndex = 0.obs;

  chanceGender(int genderType) {
    genderIndex.value = genderType;
    print(genderIndex);
  }
  //Gender Button//

  void bmiCalculator() {
    result = weight / ((height / 100) * (height / 100));
    // print(result);
    if (result < 18.5) {
      bmi.value = result.toString();
      bmiStatus = "You are underweight.";
    } else if (result >= 18.5 && result <= 24.9) {
      bmi.value = result.toString();
      bmiStatus = "You are healthy.";
    } else if (result >= 25 && result <= 29.9) {
      bmi.value = result.toString();
      bmiStatus = "You are overweight.";
    } else if (result >= 30 && result <= 39.9) {
      bmi.value = result.toString();
      bmiStatus = "You are obese.";
    } else {
      bmiStatus = "You are morbidly obese.";
    }
  }

  void setDetail() {
    bmiCalculator();
    print(bmi.value);
    Get.toNamed(Routes.DETAIL, parameters: {
      "bmi": "${bmi.value.toString().substring(0, 4)}",
      "bmiStatus": "${bmiStatus}"
    });
  }
}
