import 'package:busbuddyy/screens/navpages/forBoth/profile.dart';
import 'package:busbuddyy/screens/navpages/student/time.dart';
import 'package:flutter/material.dart';
import '../../helpers/extensions/colors.dart';
import 'calendar.dart';

class Mainnav extends StatefulWidget {
  const Mainnav({super.key});

  @override
  State<Mainnav> createState() => _MainnavState();
}

class _MainnavState extends State<Mainnav> {
  static const List pages = [Time(), Calender(), Profile()];
  int current = 0;
  void ontap(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Appcolors().secondary,
        currentIndex: current,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
              label: "main", icon: Icon(Icons.access_alarm)),
          BottomNavigationBarItem(
              label: "calender", icon: Icon(Icons.calendar_today_outlined)),
          BottomNavigationBarItem(
              label: "profile", icon: Icon(Icons.account_circle_outlined))
        ],
      ),
    );
  }
}
