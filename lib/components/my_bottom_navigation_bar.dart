import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_bottom_navigation_bar_controller.dart';

class MyBottomNavigationBar extends GetView<MyBottomNavigationBarController> {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      // 현재 인덱스를 selectedIndex에 저장
      currentIndex: controller.selectedIndex.value,
      // 요소(item)을 탭 할 시 실행)
      onTap: controller.changeIndex,
      // 선택에 따라 icon·label 색상 변경
      selectedItemColor: context.theme.colorScheme.onBackground,
      unselectedItemColor: context.theme.colorScheme.onSurfaceVariant,
      // 선택에 따라 label text style 변경
      unselectedLabelStyle: TextStyle(fontSize: 10),
      selectedLabelStyle: TextStyle(fontSize: 10),
      // 탭 애니메이션 변경 (fixed: 없음)
      type: BottomNavigationBarType.fixed,
      backgroundColor: context.theme.colorScheme.background,
      // Bar에 보여질 요소. icon과 label로 구성.
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: controller.selectedIndex.value ==
                0 // 선택된 탭은 채워진 아이콘, 나머지는 line 아이콘
                ? Icon(Icons.desk_outlined)
                : Icon(Icons.desk),
            label: "tap1"),
        BottomNavigationBarItem(
            icon: controller.selectedIndex.value == 1
                ? Icon(Icons.dashboard_outlined)
                : Icon(Icons.dashboard),
            label: "tap2"),
        BottomNavigationBarItem(
            icon: controller.selectedIndex.value == 2
                ? Icon(Icons.meeting_room_outlined)
                : Icon(Icons.meeting_room),
            label: "tap3"),
      ],
    ));
  }
}
