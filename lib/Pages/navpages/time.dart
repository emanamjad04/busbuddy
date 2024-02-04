import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
import '../../colors.dart';
import '../../widgets/primarytext.dart';
import '../../widgets/secondarytext.dart';
import '../../widgets/yellowbox.dart';

class time extends StatefulWidget {
  const time({super.key});

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  bool btn_position=false;
  String Student_name="Emily!";
  double getResponsiveValue(BuildContext context, double defaultValue) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1200) {
      // Large screen
      return defaultValue * 2.6;
    } else if (screenWidth >= 600) {
      // Medium screen
      return defaultValue * 2;
    } else if(screenWidth<300){
      return defaultValue * 0.6;
    }
    else {
      // Small screen
      return defaultValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, responsive.marginresponsive(context, 50), 15,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ptext(text: "Good Morning,"),
              ptext(text: Student_name,color: appcolors().secondary,),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow:  [
                      BoxShadow(
                          blurRadius: 15,
                          color: Colors.grey.shade200,
                          spreadRadius: 1

                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    stext(text: "Your school bus arriving in"),
                    SizedBox(height: responsive.getResponsiveValue(context,5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ybox(text: '0',),
                        SizedBox(width: 4,),
                        ybox(text: '1',),
                        SizedBox(width: 3.5,),
                        ptext(text: ':'),
                        SizedBox(width: 4,),
                        ybox(text: '2',),
                        SizedBox(width: 4,),
                        ybox(text: '1',),
                        SizedBox(width: 3.5,),
                        ptext(text: ':'),
                        SizedBox(width: 4,),
                        ybox(text: '4',),
                        SizedBox(width: 4,),
                        ybox(text: '5',),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(width: 30,),
                        stext(text: "Hours"),
                        // SizedBox(width: 65,),
                        stext(text: "Minutes"),
                        // SizedBox(width: 40,),
                        stext(text: "Seconds"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height:20 ,),
              Center(child: stext(text: "Are you riding the bus this morning?",islight: true,)),
              SizedBox(height:15 ,),
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 9.w,vertical: 8.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(responsive.getResponsiveValue(context,22)),
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.grey.shade200,
                            spreadRadius: 1

                        )
                      ]
                  ),

                  child: Stack(
                    children: [
                      Positioned(

                        child: AnimatedContainer(
                          alignment: btn_position? Alignment.centerLeft:Alignment.centerRight ,
                          margin: EdgeInsets.symmetric(horizontal: responsive.getResponsiveValue(context,9),vertical: responsive.getResponsiveValue(context,8)),
                          duration: Duration(milliseconds: 300),
                          child: Expanded(child: ybox(width: getResponsiveValue(context,180),radius: 21,)),
                        ),
                      ),
                      Positioned(

                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed:(){
                                  setState(() {
                                    btn_position=true;
                                  });
                                },
                                child:stext(text: "Yes",size: 25,color: appcolors().primary,),),
                              TextButton(
                                onPressed:(){
                                  setState(() {
                                    btn_position=false;
                                  });
                                },
                                child:stext(text: "No",size: 25,color: appcolors().primary,),),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
              SizedBox(height: 30),
              Center(child: stext(text: "This response will be updated and locked in",size:15 ,islight: true,)),
              SizedBox(height:5,),
              Center(
                child: stext(text: "10 Minutes",size: responsive.getResponsiveValue(context, 42),color:Color(0xFFE70000) ,),
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 90,
                color: Colors.white,
                child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.8,
                              padding: EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    stext(text: "Bottom sheet"),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(appcolors().secondary),
                                      ),
                                      child: stext(text: "close"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      );

                    },
                    child: Icon(Icons.keyboard_arrow_up_rounded,size: 38,weight: 2,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}