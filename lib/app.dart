import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noobspace/views/main_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      )
    );
  }
}
