import 'package:get/get.dart';
import '../screens/homepage.dart';
import '../screens/splash.dart';

class Routes{
  static final routes = [
    GetPage(name: '/', page: () =>  const Splash()),
    GetPage(name: '/home', page: () =>  const HomePage()),
     ];
}