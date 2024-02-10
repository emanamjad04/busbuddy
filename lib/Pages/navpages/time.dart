import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
import '../../colors.dart';
import '../../widgets/apptext.dart';
import '../../widgets/yellowbox.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  bool btn_position = false;
  String Student_name = "Emily!";
  double getResponsiveValue(BuildContext context, double defaultValue) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1200) {
      // Large screen
      return defaultValue * 2.6;
    } else if (screenWidth >= 600) {
      // Medium screen
      return defaultValue * 2;
    } else if (screenWidth < 300) {
      return defaultValue * 0.6;
    } else {
      // Small screen
      return defaultValue;
    }
  }

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
                text: Student_name,
                color: Appcolors().secondary,
                isbig: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
              ),
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
              Container(
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
                          alignment: btn_position
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
                            width: getResponsiveValue(context, 180),
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
                                    btn_position = true;
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
                                    btn_position = false;
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
                  )),
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
              Container(
                alignment: Alignment.topCenter,
                height: 90,
                color: Colors.white,
                child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.8,
                              padding: const EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Apptext(text: "Bottom sheet"),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Appcolors().secondary),
                                      ),
                                      child: Apptext(text: "close"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child:const Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 38,
                      weight: 2,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
