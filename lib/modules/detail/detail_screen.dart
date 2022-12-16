import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/modules/detail/detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text("DetailScreen", style: TextStyle(fontSize: 40),),
          ),
          Center(
            child: Text(controller.bmi!, style: TextStyle(fontSize: 40),),
          ),
          Center(
            child: Text("${controller.bmiStatus}", style: TextStyle(fontSize: 40),),
          ),
        ],
      ),
    );
  }
}