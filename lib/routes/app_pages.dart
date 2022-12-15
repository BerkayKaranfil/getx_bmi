import 'package:get/get.dart';
import 'package:getx_bmi/modules/detail/detail_binding.dart';
import 'package:getx_bmi/modules/detail/detail_screen.dart';
import 'package:getx_bmi/modules/home/home_binding.dart';
import 'package:getx_bmi/modules/home/home_screen.dart';
import 'package:getx_bmi/modules/splash/splash_binding.dart';
import 'package:getx_bmi/modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.DETAIL,
        page: () => DetailScreen(),
        binding: DetailBinding()),
  ];
}
