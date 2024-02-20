import 'package:busbuddyy/helpers/widgets/bottomsheet.dart';
import 'package:busbuddyy/helpers/widgets/currentTimeBox.dart';
import 'package:busbuddyy/helpers/widgets/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:busbuddyy/helpers/functions/responsive.dart';
import '../../../helpers/extensions/colors.dart';
import 'package:busbuddyy/helpers/widgets/apptext.dart';
import 'package:busbuddyy/helpers/widgets/yellowbox.dart';
class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  String studentName = "Emily!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(
              15, Responsive.marginresponsive(context, 50), 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Apptext(
                text: "Good Morning,",
                isbig: true,
              ),
              Apptext(
                text: studentName,
                color: Appcolors().secondary,
                isbig: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CurrentTimeBox(),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Apptext(
                text: "Are you riding the bus this morning?",
                islight: true,
              )),
              const SizedBox(
                height: 15,
              ),
              YesNo(),
              const SizedBox(height: 30),
              Center(
                  child: Apptext(
                text: "This response will be updated and locked in",
                size: 15,
                islight: true,
              )),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Apptext(
                  text: "10 Minutes",
                  size: Responsive.getResponsiveValue(context, 42),
                  color: const Color(0xFFE70000),
                ),
              ),
              BottomSheett()
            ],
          ),
        ),
      ),
    );
  }
}
