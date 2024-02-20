import 'package:busbuddyy/helpers/widgets/yellowbox.dart';
import 'package:flutter/material.dart';

import '../extensions/colors.dart';
import '../functions/responsive.dart';
import 'apptext.dart';

class YesNo extends StatefulWidget {
  const YesNo({super.key});

  @override
  State<YesNo> createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  bool btnPosition = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 9.w,vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                Responsive.getResponsiveValue(context, 22)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 15,
                  color: Colors.grey.shade200,
                  spreadRadius: 1)
            ]),
        child: Stack(
          children: [
            Positioned(
              child: AnimatedContainer(
                alignment: btnPosition
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                margin: EdgeInsets.symmetric(
                    horizontal:
                    Responsive.getResponsiveValue(context, 9),
                    vertical:
                    Responsive.getResponsiveValue(context, 8)),
                duration: const Duration(milliseconds: 300),
                child: Expanded(
                    child: Ybox(
                      width: Responsive.getResponsiveValuetimescreen(context, 180),
                      radius: 21,
                    )),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          btnPosition = true;
                        });
                      },
                      child: Apptext(
                        text: "Yes",
                        size: 25,
                        color: Appcolors().primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          btnPosition = false;
                        });
                      },
                      child: Apptext(
                        text: "No",
                        size: 25,
                        color: Appcolors().primary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
