import 'dart:ui';

import 'package:busbuddyy/helpers/widgets/loginform.dart';
import 'package:flutter/material.dart';
import 'package:busbuddyy/helpers/functions/responsive.dart';
import 'package:busbuddyy/helpers/widgets/field.dart';
import 'package:busbuddyy/helpers/widgets/apptext.dart';
import 'package:busbuddyy/helpers/widgets/yellowbox.dart';
import 'navpages/mainnav.dart';

class Splashs extends StatefulWidget {
  const Splashs({super.key});

  @override
  State<Splashs> createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> with SingleTickerProviderStateMixin {
  late Animation<double> animationtop_or;
  late Animation<double> animationright_or;
  late Animation<double> animationtop_pur;
  late Animation<double> animationleft_pur;
  late Animation<double> animationtop_pk;
  late Animation<double> animationleft_pk;
  late AnimationController animationController;
  final double height = 60;
  double width = 360;
  String btn_txt = "JOIN NOW";
  String maintext = "Let's start Riding Smart!";
  bool isbus = true;
  bool btn_pressed = false;
  bool islogin = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationtop_or =
        Tween<double>(begin: 30, end: 400).animate(animationController);
    animationright_or =
        Tween<double>(begin: 0, end: 200).animate(animationController);

    animationtop_pur =
        Tween<double>(begin: 450, end: 0).animate(animationController);
    animationleft_pur =
        Tween<double>(begin: 0, end: 120).animate(animationController);

    animationtop_pk =
        Tween<double>(begin: 300, end: 10).animate(animationController);
    animationleft_pk =
        Tween<double>(begin: 0, end: 80).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            //medium circle
            Positioned(
              top: animationtop_or.value,
              right: animationright_or.value,
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(280),
                    color: const Color(0xFFF5F6B6)),
              ),
            ),
            //small circle
            Positioned(
              top: animationtop_pk.value,
              left: animationleft_pk.value,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: const Color(0xFFF5E7D2)),
              ),
            ),
            //large circle
            Positioned(
              top: animationtop_pur.value,
              left: animationleft_pur.value,
              child: Container(
                width: 380,
                height: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(380),
                    color: const Color(0xFFFEEFA2)),
              ),
            ),
            //blur effect
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 22,
                  sigmaY: 22,
                ),
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                ),
              ),
            ),
            //bus image
            Positioned(
                bottom: islogin
                    ? Responsive.getResponsiveValue(context, 440)
                    : null,
                left: 0,
                child: isbus
                    ? Image.asset(
                        'assets/bus.png',
                      )
                    : Container()),
            //text
            Positioned(
                bottom: Responsive.getResponsiveValue(context, 100),
                left: Responsive.getResponsiveValue(context, 24),
                child: Expanded(
                  child: Container(
                    width: Responsive.getResponsiveValue(context, 300),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Apptext(
                          text: maintext,
                          size: Responsive.getResponsiveValue(context, 60),
                          color: const Color(0xFF1C2F39),
                          isbig: true,
                        ),
                      ],
                    ),
                  ),
                )), //button
            Positioned.fill(
                bottom: btn_pressed
                    ? 0
                    : Responsive.getResponsiveValue(context, 28),
                child: Align(
                  alignment:
                      btn_pressed ? Alignment.center : Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maintext = "";
                        btn_txt = "";
                        isbus = false;
                        width = 60;
                        Future.delayed(const Duration(milliseconds: 450), () {
                          btn_pressed = true;
                        });
                        Future.delayed(const Duration(milliseconds: 800), () {
                          islogin = true;
                          isbus = true;
                        });
                      });
                    },
                    child: islogin
                        ? Container()
                        : AnimatedContainer(
                            duration: const Duration(milliseconds: 350),
                            margin: btn_pressed
                                ? const EdgeInsets.symmetric(horizontal: 0)
                                : const EdgeInsets.symmetric(horizontal: 20),
                            width: btn_pressed
                                ? 2000
                                : Responsive.getResponsiveValue(
                                    context, width + 5.5),
                            height: btn_pressed
                                ? 3000
                                : Responsive.getResponsiveValue(context, 60),
                            child: Ybox(
                              text: btn_txt,
                              height: height,
                              width: width,
                              radius: btn_pressed
                                  ? width
                                  : Responsive.getResponsiveValue(context, 100),
                              textsize:
                                  Responsive.getResponsiveValue(context, 24),
                              textcolor: Colors.white,
                            ),
                          ),
                  ),
                )),
            islogin
                ? Positioned(
                    left: Responsive.getResponsiveValue(context, 15),
                    right: Responsive.getResponsiveValue(context, 15),
                    bottom: Responsive.getResponsiveValue(context, 50),
                    // top: responsive.getResponsiveValue(context,50),
                    child: LoginForm(),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
