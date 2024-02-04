import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
import '../widgets/field.dart';
import '../widgets/primarytext.dart';
import '../widgets/secondarytext.dart';
import '../widgets/yellowbox.dart';
import 'navpages/mainnav.dart';

class splashs extends StatefulWidget {
  const splashs({super.key});

  @override
  State<splashs> createState() => _splashsState();
}

class _splashsState extends State<splashs>

    with SingleTickerProviderStateMixin{
  late Animation<double> animationtop_or;
  late Animation<double> animationright_or;
  late Animation<double> animationtop_pur;
  late Animation<double> animationleft_pur;
  late Animation<double> animationtop_pk;
  late Animation<double> animationleft_pk;
  late AnimationController animationController;
  double height=60;
  double width=360;
  String btn_txt="JOIN NOW";
  String maintext="Let's start Riding Smart!";
  bool isbus=true;
  bool btn_pressed=false;
  bool islogin=false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,
        duration: Duration(seconds: 3));
    animationtop_or = Tween<double>(begin: 30 , end:400).animate(animationController);
    animationright_or = Tween<double>(begin: 0 , end:200).animate(animationController);

    animationtop_pur = Tween<double>(begin: 450 , end:0).animate(animationController);
    animationleft_pur = Tween<double>(begin: 0 , end:120).animate(animationController);

    animationtop_pk = Tween<double>(begin: 300 , end:10).animate(animationController);
    animationleft_pk = Tween<double>(begin: 0 , end:80).animate(animationController);

    animationController.addListener(() {
      setState(() {

      });
    });

    animationController.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        animationController.reverse();
      }
      else if(status==AnimationStatus.dismissed){
        animationController.forward();
      }
    });
    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
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
                    color: Color(0xFFF5F6B6)
                ),
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
                    color: Color(0xFFF5E7D2)
                ),
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
                    color: Color(0xFFFEEFA2)
                ),
              ),
            ),
            //blur effect
            ClipRect(
              child: BackdropFilter(
                filter:ImageFilter.blur(
                  sigmaX: 22,
                  sigmaY:22,
                ),
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,

                ),
              ),
            ),
            //bus image
            Positioned(
                bottom:islogin?responsive.getResponsiveValue(context,440):null,
                left: 0,
                child: isbus? Image.asset('assets/bus.png',):Container()),
            //text
            Positioned(
                bottom: responsive.getResponsiveValue(context,100),
                left: responsive.getResponsiveValue(context,24),
                child: Expanded(
                  child: Container(
                    width: responsive.getResponsiveValue(context,300),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ptext(text: maintext,size: responsive.getResponsiveValue(context,60),color:Color(0xFF1C2F39),),

                      ],
                    ),

                  ),
                )), //button
            Positioned.fill(
                bottom:btn_pressed?0:responsive.getResponsiveValue(context,28),
                child: Align(
                  alignment: btn_pressed?Alignment.center:Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        maintext="";
                        btn_txt="";
                        isbus=false;
                        width=60;
                        Future.delayed(Duration(milliseconds: 450),(){
                          btn_pressed=true;
                        });
                        Future.delayed(Duration(milliseconds: 800),(){
                          islogin=true;
                          isbus=true;
                        });
                      });
                    },
                    child: islogin?Container():AnimatedContainer(
                      duration: Duration(milliseconds: 350),
                      margin: btn_pressed?EdgeInsets.symmetric(horizontal: 0):EdgeInsets.symmetric(horizontal: 20),
                      width: btn_pressed?2000:responsive.getResponsiveValue(context,width+5.5),
                      height: btn_pressed?3000:responsive.getResponsiveValue(context,60),
                      child: ybox(
                        text: btn_txt,height: height,width: width,radius:btn_pressed?width: responsive.getResponsiveValue(context,100),textsize:responsive.getResponsiveValue(context,24),textcolor: Colors.white,
                      ),
                    ),
                  ),
                )),
            islogin?Positioned(
              left: responsive.getResponsiveValue(context,15),
              right: responsive.getResponsiveValue(context,15),
              bottom: responsive.getResponsiveValue(context,50),
              // top: responsive.getResponsiveValue(context,50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  stext(text: "Hey there!",size: responsive.getResponsiveValue(context,48),),
                  SizedBox(height: responsive.getResponsiveValue(context,18),),
                  field(hint: 'Username'),
                  SizedBox(height: responsive.getResponsiveValue(context,18),),
                  field(hint: 'Password'),
                  SizedBox(height:responsive.getResponsiveValue(context,50),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>mainnav()));
                      },
                      child: ybox(text: "Get Started",isblck: true,width:responsive.getResponsiveValue(context,380) ,textcolor: Colors.white,textsize: responsive.getResponsiveValue(context,24),height: responsive.getResponsiveValue(context,60),radius: responsive.getResponsiveValue(context,100),)),
                  SizedBox(height: responsive.getResponsiveValue(context,34),),
                  Center(child: stext(text: "Forgotten Password?",size: responsive.getResponsiveValue(context,16),))
                ],
              ),
            ):Container()
          ],
        ),
      ),
    );
  }
}