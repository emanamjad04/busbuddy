import 'package:busbuddyy/helpers/widgets/yellowbox.dart';
import 'package:flutter/material.dart';

import '../functions/responsive.dart';
import 'apptext.dart';

class CurrentTimeBox extends StatefulWidget {
  const CurrentTimeBox({super.key});

  @override
  State<CurrentTimeBox> createState() => _CurrentTimeBoxState();
}

class _CurrentTimeBoxState extends State<CurrentTimeBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                color: Colors.grey.shade200,
                spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Apptext(text: "Your school bus arriving in"),
          SizedBox(height: Responsive.getResponsiveValue(context, 5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Ybox(
                text: '0',
              ),
              const SizedBox(
                width: 4,
              ),
              const Ybox(
                text: '1',
              ),
              const SizedBox(
                width: 3.5,
              ),
              Apptext(
                text: ':',
                isbig: true,
              ),
              const SizedBox(
                width: 4,
              ),
              const Ybox(
                text: '2',
              ),
              const SizedBox(
                width: 4,
              ),
              const Ybox(
                text: '1',
              ),
              const SizedBox(
                width: 3.5,
              ),
              Apptext(
                text: ':',
                isbig: true,
              ),
              const SizedBox(
                width: 4,
              ),
              const Ybox(
                text: '4',
              ),
              const SizedBox(
                width: 4,
              ),
              const Ybox(
                text: '5',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(width: 30,),
              Apptext(text: "Hours"),
              // SizedBox(width: 65,),
              Apptext(text: "Minutes"),
              // SizedBox(width: 40,),
              Apptext(text: "Seconds"),
            ],
          )
        ],
      ),
    );
  }
}
