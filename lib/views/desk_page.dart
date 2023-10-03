import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';

class DeskPage extends StatelessWidget {
  final controller = GroupButtonController();
  DeskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                    ),
                    SizedBox(width: 20,),
                    Text("Golden Planet", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.card_membership, size: 30,),
                    SizedBox(width: 20,),
                    Icon(Icons.search, size: 30,),
                    SizedBox(width: 20,),
                    Icon(Icons.alarm_sharp, size: 30,),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              // daysCount: 2,
              activeDates: [
                DateTime.now(),
                DateTime.now().add(Duration(days: 1)),
              ],
              locale: "ko_kr",
              height: 82,
              onDateChange: (date) {
              },
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 8.0),
                child: GroupButton(
                  options: GroupButtonOptions(
                    mainGroupAlignment: MainGroupAlignment.start,
                    borderRadius: BorderRadius.circular(10),
                    selectedColor: Colors.black,
                    selectedTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    buttonHeight: 60,
                  ),
                  isRadio: true,
                  buttons: ["6층", "8층", "10층", "11층"],
                  onSelected: null,
                ),
              )
            ],
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.desk),
                    title: Text("A-1"),
                    subtitle: Text("HDMI, VGA, 무선마우스, 무선키보드"),
                    trailing: Chip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        "예약가능",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(6.0),
                    ),
                    onTap: () {
                      Get.toNamed('/meetingroom');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.desk),
                    title: Text("A-2"),
                    subtitle: Text("HDMI, VGA, 무선마우스, 무선키보드"),
                    trailing: Chip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        "예약가능",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(6.0),
                    ),
                    onTap: () {
                      Get.toNamed('/meetingroom');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.desk),
                    title: Text("A-3"),
                    subtitle: Text("HDMI, VGA, 무선마우스, 무선키보드"),
                    trailing: Chip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        "예약중",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.all(6.0),
                    ),
                    onTap: () {
                      Get.toNamed('/meetingroom');
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.desk),
                    title: Text("A-4"),
                    subtitle: Text("HDMI, VGA, 무선마우스, 무선키보드"),
                    trailing: Chip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        "예약완료",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(6.0),
                    ),
                    onTap: () {
                      Get.toNamed('/meetingroom');
                    },
                  ),
                ),
              ],
            ),
          )),

        ],
      ),
    );
  }
}
