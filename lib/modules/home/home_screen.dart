import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
              Container(
                height: 6.h,
                child: ListView.builder(
                  itemCount: controller.genderList.length,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          controller.chanceGender(index);
                        },
                        child: Obx(
                          () => Container(
                            margin: EdgeInsets.only(right: 7.5.w),
                            height: 6.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.h),
                                color: controller.genderIndex == index
                                    ? Colors.red
                                    : Colors.grey),
                            child: Center(
                                child: Text(
                              controller.genderList[index],
                              style: TextStyle(
                                  fontSize: 2.5.h,
                                  color: controller.genderIndex == index
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ));
                  },
                ),),
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
                Container(
                  height: 6.h,
                  child: ListView.builder(
                    itemCount: controller.genderList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            controller.chanceGender(index);
                          },
                          child: Obx(
                            () => Container(
                              margin: EdgeInsets.only(right: 7.5.w),
                              height: 6.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.h),
                                  color: controller.genderIndex == index
                                      ? Colors.red
                                      : Colors.grey),
                              child: Center(
                                  child: Text(
                                controller.genderList[index],
                                style: TextStyle(
                                    fontSize: 2.5.h,
                                    color: controller.genderIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      onChanged: (deger) {
                        controller.age.value = double.parse(deger);
                      },
                      // controller: controller.ageController,
                      decoration: InputDecoration(
                        labelText: "Age",
                        labelStyle: TextStyle(fontSize: 2.5.h),
                          //  floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w)),
                          hintText: "Age value  must be between (1-120)."),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(3),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      /* validator: (deger) {
                        if (deger!.isEmpty ) {
                          //double.parse(value!) > 0 && double.parse(value) < 120
                          return "Age cannot be empty";
                        } else if(double.parse(deger) < 0 || double.parse(deger) > 120) {
                          return "Enter a valid age(0-120)";
                        } else {
                          return null;
                        }
                      }, */
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      onChanged: (deger) {
                        controller.height.value = double.parse(deger);
                      },
                      // controller: controller.heightController,
                      decoration: InputDecoration(
                        labelText: "Height",
                        labelStyle: TextStyle(fontSize: 2.5.h),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w)),
                          hintText: "Height value  must be between (41-265)"),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(3),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      //  controller: controller.weightController,
                      onChanged: (deger) {
                        controller.weight.value = double.parse(deger);
                      },
                      decoration: InputDecoration(
                        labelText: "Weight",
                        labelStyle: TextStyle(fontSize: 2.5.h),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.w)),
                          hintText: "Weight value  must be between (4-365)"),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(3),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ],
                )),
                // Obx(()=>Text(controller.ageController.text))
                // Text(controller.ageController.text)
                SizedBox(
                  height: 15.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.setDetail();
                    },
                    child: Center(
                      child: Text("Hesapla"),
                    ))
                /* ElevatedButton(
                    onPressed: () {
                      controller.setData();
                    },
                    child: Center(
                      child: Text("Hesapla"),
                    )) */,
                    Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom > 0 ? 10.h : 0 ))
              ],
            ),
          ),
        );
  }
}
