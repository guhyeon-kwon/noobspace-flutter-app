import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noobspace/components/my_bottom_navigation_bar_controller.dart';

import 'app.dart';
import 'controller/auth_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController());
  Get.put(MyBottomNavigationBarController());
  runApp(MyApp());
}
