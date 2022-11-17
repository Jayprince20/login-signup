import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin/routes/mypages.dart';
import 'package:signin/routes/myroutes.dart';
import 'package:signin/views/welcome/welcome.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.Welcome,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: WelcomePage(),
  ),);
}
