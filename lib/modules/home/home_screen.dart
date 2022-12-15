import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/modules/home/home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//class HomeScreen extends StatelessWidget {
class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.only(right: 5.w, left: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's calculate \nyour current BMI",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "You can find out whether you are overweight, underweight or ideal weight.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.h),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        "Male",
                        style: TextStyle(fontSize: 3.h, color: Colors.white),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.h),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        "Male",
                        style: TextStyle(fontSize: 3.h, color: Colors.white),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 6.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.h),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        "Male",
                        style: TextStyle(fontSize: 3.h, color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: controller.ageController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w)),
                        hintText: "Age"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextFormField(
                    controller: controller.heightController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w)),
                        hintText: "Height"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextFormField(
                    controller: controller.weightController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1.w)),
                        hintText: "Weight"),
                  ),
                ],
              )),
              // Obx(()=>Text(controller.ageController.text))
              // Text(controller.ageController.text)
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.setData();
                  },
                  child: Center(
                    child: Text("Hesapla"),
                  ))
            ],
          ),
        ));
  }
}
