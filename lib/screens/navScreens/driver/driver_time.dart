import 'package:busbuddyy/helpers/widgets/listOfStudents.dart';
import 'package:flutter/material.dart';

import '../../../helpers/extensions/colors.dart';
import 'package:busbuddyy/helpers/widgets/apptext.dart';

class DriverTime extends StatefulWidget {
  const DriverTime({super.key});

  @override
  State<DriverTime> createState() => _DriverTimeState();
}

class _DriverTimeState extends State<DriverTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(top: 50, left: 10, child: Apptext(text: "Good Morning John!",size: 23,isbig: true)),
            Positioned(
                top: 100,
                child: Container(
                  height: 160,
                  width: 390,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 100,
                                height: 38,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15)
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(child: Apptext(text: "Next Stop",islight: true,)),
                              ),
                              const SizedBox(width: 30,),
                              Container(
                                padding:const EdgeInsets.all(5),
                                width: 110,
                                height: 38,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft:Radius.circular(15),topRight:Radius.circular(15)),
                                  color: Appcolors().secondary,
                                ),

                                child: Center(child: Apptext(text:"04 minutes")),
                              ),

                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 8),
                            height:90 ,
                            width: 240,
                            decoration: BoxDecoration(
                                borderRadius:const BorderRadius.only(
                                    topLeft:Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)
                                ),
                                color: Appcolors().secondary
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Apptext(text: "8/7, Jackson Apartments 24th lane, South Avenue",color: Colors.white,)),
                          )
                        ],
                      ),
                      Container(
                        padding:const EdgeInsets.only(top: 10),
                        height: 132,
                        width: 96,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Appcolors().secondary
                        ),
                        child: Flexible(
                          child: Column(
                            children: [
                              Apptext(text: "Students",size: 12,),
                              Apptext(text:"today" ,size: 19,),
                              const SizedBox(height: 30,),
                              Apptext(text: "34",size: 43,color: Colors.white,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),

            Positioned(
              bottom: 0,
              child: ListOfStudents(),
            ),
          ],
        ));
  }
}
