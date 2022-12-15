import 'package:get/get.dart';

class DetailController extends GetxController {
  String? data;

  @override
  void onInit() {
    super.onInit();
    data = Get.parameters["age"];
  }
}
