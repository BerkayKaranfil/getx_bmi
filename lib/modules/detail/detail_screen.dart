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
        body: Padding(
      padding: EdgeInsets.all(5.h),
      child: Column(
        children: [
          Card(
            elevation: 40,
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 35.h),
            child: Padding(
              padding: EdgeInsets.all(3.h),
              child: SizedBox(
                height: 40.h,
                width: 80.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Your BMI is",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 5.h),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      controller.bmi!,
                      style: TextStyle(fontSize: 5.h,color: controller.chanceResponseColor()),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.h),
                      height: 3.5.h,
                      width: 50.w,
                      child: Text(
                        "${controller.bmiStatus}",
                        style: TextStyle(fontSize: 3.h, color: controller.chanceResponseColor()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Yeniden Hesapla"))
        ],
      ),
    )
        /* Column(
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
      ), */
        );
  }
}
