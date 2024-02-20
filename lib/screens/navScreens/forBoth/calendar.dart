import 'package:busbuddyy/helpers/functions/responsive.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../helpers/extensions/colors.dart';
import 'package:busbuddyy/helpers/widgets/apptext.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  String schoolupdate = "School will be commencing as per routine today.";
  DateTime today = DateTime.now();
  late String month;
  void select(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  void initState() {
    month = DateFormat('MMMM').format(today);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors().backg,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(
                20, Responsive.marginresponsive(context, 50), 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Apptext(
                  text: "Calendar",
                  isbig: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.only(bottom: 30),
                  child: TableCalendar(
                    daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle:
                            TextStyle(color: Colors.black.withOpacity(0.4)),
                        weekendStyle:
                            TextStyle(color: Colors.black.withOpacity(0.4))),
                    availableGestures: AvailableGestures.all,
                    focusedDay: today,
                    firstDay: DateTime.utc(2024, 1, 1),
                    lastDay: DateTime.utc(2034, 1, 1),
                    onDaySelected: select,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    calendarStyle: CalendarStyle(
                        selectedDecoration: BoxDecoration(
                            color: Appcolors().secondary,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15))),
                    headerStyle: HeaderStyle(
                      headerPadding:
                      const EdgeInsets.only(bottom: 20, top: 15, left: 5),
                      leftChevronVisible: false,
                      rightChevronVisible: false,
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(
                          color: Appcolors().secondary,
                          fontSize: 33,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: Responsive.marginresponsive(context, 40),
                ),
                Row(
                  children: [
                    Apptext(
                      text: today.day.toString(),
                      size: 27,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Apptext(
                      text: month,
                      size: 27,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Apptext(
                      text: today.year.toString(),
                      size: 27,
                    )
                  ],
                ),
                Apptext(
                  text: schoolupdate,
                  size: 14,
                )
              ],
            ),
          ),
        ));
  }
}
