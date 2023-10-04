import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Golden Planet",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.card_membership,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.alarm_sharp,
                      size: 30,
                    ),
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
              onDateChange: (date) {},
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 11.0, vertical: 8.0),
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
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                ListTile(
                  tileColor: Color(0xff363636),
                  leading: Container(
                    child: Image.asset(
                      "assets/images/desk.png",
                      width: 50,
                      height: 50,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'A-1',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.wifi, color: Colors.white, size: 13),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.desktop_windows,
                                color: Colors.white, size: 13),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.keyboard, color: Colors.white, size: 13),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.mouse, color: Colors.white, size: 13),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xffFF847C),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 3.0),
                              child: Text(
                                "예약중",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  trailing: Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelPadding: EdgeInsets.all(2.0),
                    label: Text(
                      "예약가능",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Color(0xff99B898),
                    padding: EdgeInsets.all(6.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Color(0xff2A363B),
                      width: 2.0,
                    ),
                  ),
                ),
                // Card(
                //   child: ListTile(
                //     leading: Icon(Icons.desk),
                //     title: Text("A-4"),
                //     subtitle: Text("HDMI, VGA, 무선마우스, 무선키보드"),
                //     trailing: Chip(
                //       labelPadding: EdgeInsets.all(2.0),
                //       label: Text(
                //         "예약완료",
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //       backgroundColor: Colors.red,
                //       padding: EdgeInsets.all(6.0),
                //     ),
                //     onTap: () {
                //       Get.toNamed('/meetingroom');
                //     },
                //   ),
                // ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
