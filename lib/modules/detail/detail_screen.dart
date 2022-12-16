import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/modules/detail/detail_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text("Your BMI is", style: TextStyle(fontSize: 40),),
          ),
          Center(
            child: Text(controller.bmi!, style: TextStyle(fontSize: 40),),
          ),
          Center(
            child: Text("${controller.bmiStatus}", style: TextStyle(fontSize: 40),),
          ),
          ElevatedButton(onPressed: () {
            Get.back();
          }, child: Text("Yeniden Hesapla"))
        ],
      ),
    );
  }
}