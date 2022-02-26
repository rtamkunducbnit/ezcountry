import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezcountry/routes/routes.dart';
import 'package:ezcountry/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Assessment Task',
      initialRoute: '/',
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}

