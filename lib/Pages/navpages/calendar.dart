import 'package:busbuddyy/responsive.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../colors.dart';
import '../../widgets/primarytext.dart';
import '../../widgets/secondarytext.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  String schoolupdate= "School will be commencing as per routine today.";
  DateTime today = DateTime.now();
  late String month;
  void select(DateTime day,DateTime focusedDay){
    setState(() {
      today= day;
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
        backgroundColor: appcolors().backg,
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, responsive.marginresponsive(context, 50), 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ptext(text: "Calendar"),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.only(bottom: 30),
                  child: TableCalendar(
                    daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4)
                        ),
                        weekendStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4)
                        )
                    ),
                    availableGestures: AvailableGestures.all,
                    focusedDay: today,
                    firstDay: DateTime.utc(2024,1,1),
                    lastDay: DateTime.utc(2034,1,1),
                    onDaySelected:select,
                    selectedDayPredicate: (day)=>isSameDay(day, today),
                    calendarStyle: CalendarStyle(
                        selectedDecoration: BoxDecoration(color: appcolors().secondary,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(15))
                    ),
                    headerStyle: HeaderStyle(
                      headerPadding: EdgeInsets.only(bottom: 20,top: 15,left:5 ),
                      leftChevronVisible: false,
                      rightChevronVisible: false,
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(
                          color: appcolors().secondary,
                          fontSize: 33,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                SizedBox(height: responsive.marginresponsive(context, 40),),
                Row(

                  children: [
                    stext(text: today.day.toString(),size: 27,),
                    SizedBox(width: 5,),
                    stext(text: month,size: 27,),
                    SizedBox(width: 5,),
                    stext(text: today.year.toString(),size: 27,)
                  ],
                ),
                stext(text: schoolupdate,size: 14,)

              ],
            ),
          ),
        )
    );
  }
}