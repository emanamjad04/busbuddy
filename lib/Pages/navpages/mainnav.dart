
import 'package:busbuddyy/Pages/navpages/profile.dart';
import 'package:busbuddyy/Pages/navpages/time.dart';
import 'package:flutter/material.dart';
import '../../colors.dart';
import 'calendar.dart';


class mainnav extends StatefulWidget {
  const mainnav({super.key});

  @override
  State<mainnav> createState() => _mainnavState();
}

class _mainnavState extends State<mainnav> {
  int current=0;
  void ontap(int index){
    setState(() {
      current=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    List pages=[
      time(),
      calender(),
      profile()
    ];
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: appcolors().secondary,
        currentIndex: current,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(label:"main",icon:Icon(Icons.access_alarm)),
          BottomNavigationBarItem(label:"calender",icon: Icon(Icons.calendar_today_outlined)),
          BottomNavigationBarItem(label:"profile",icon: Icon(Icons.account_circle_outlined))
        ],
      ),
    );
  }
}
