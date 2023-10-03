import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noobspace/components/my_bottom_navigation_bar.dart';
import 'package:noobspace/components/my_bottom_navigation_bar_controller.dart';
import 'package:noobspace/views/room_page.dart';

import 'dashboard_page.dart';
import 'desk_page.dart';

class MainPage extends StatelessWidget{

  // 탭별 화면
  static List<Widget> tabPages = <Widget>[
    DeskPage(),
    DashboardPage(),
    RoomPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // MyBottomNavgationBarController의 변수가 변하면 화면(페이지) 변경
      body: Obx(() => SafeArea(
          child:
          // static 변수를 이용해 컨트롤러 접근
          tabPages[MyBottomNavigationBarController.to.selectedIndex.value])),
      // 2번에서 만든 BottomNavgationBar 컴포넌트
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}