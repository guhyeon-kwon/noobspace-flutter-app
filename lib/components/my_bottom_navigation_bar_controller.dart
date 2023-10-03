import 'package:get/get.dart';

class MyBottomNavigationBarController extends GetxController {
  static MyBottomNavigationBarController get to => Get.find();

  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex(index);
  }
}