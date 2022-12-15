import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi/modules/home/home_screen.dart';
import 'package:getx_bmi/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, Orientation, ScreenType) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false, 
         // home: HomeScreen(),
          getPages: AppPages.routes,
          initialRoute:Routes.SPLASH ,
          enableLog: true,
          );
      },
    );
  }
}


